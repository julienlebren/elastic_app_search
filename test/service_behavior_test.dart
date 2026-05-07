import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

typedef _RequestHandler = Future<void> Function(HttpRequest request);

Future<Map<String, dynamic>> _readJson(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  if (body.trim().isEmpty) return <String, dynamic>{};

  final decoded = jsonDecode(body);
  if (decoded is Map<String, dynamic>) return decoded;
  if (decoded is Map) {
    return decoded.map((key, value) => MapEntry(key.toString(), value));
  }
  throw FormatException('Request body must be a JSON object.');
}

Future<void> _writeJson(
  HttpRequest request,
  int statusCode,
  Map<String, dynamic> body,
) async {
  request.response.statusCode = statusCode;
  request.response.headers.contentType = ContentType.json;
  request.response.write(jsonEncode(body));
  await request.response.close();
}

Map<String, dynamic> _searchResponse({
  required String requestId,
  required int facetCount,
}) {
  return {
    'meta': {
      'request_id': requestId,
      'warnings': [],
      'alerts': [],
      'page': {'current': 1, 'size': 10, 'total_pages': 1, 'total_results': 1},
    },
    'results': [
      {
        'title': {'raw': 'Yosemite'},
        '_meta': {'score': 42.0},
      },
    ],
    'facets': {
      'states': [
        {
          'type': 'value',
          'data': [
            {'value': 'California', 'count': facetCount},
          ],
        },
      ],
    },
  };
}

void main() {
  late HttpServer server;
  late _RequestHandler handler;
  late ElasticEngine engine;
  late ElasticAppSearch service;
  late int searchCalls;
  late int suggestionCalls;

  setUpAll(() async {
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    handler = (request) async {
      await _writeJson(request, 404, {
        'errors': ['No handler configured'],
      });
    };

    server.listen((request) async {
      await handler(request);
    });
  });

  tearDownAll(() async {
    await server.close(force: true);
  });

  setUp(() {
    final endPoint = 'http://${server.address.address}:${server.port}';
    service = ElasticAppSearch(endPoint: endPoint, searchKey: 'search-key');
    engine = service.engine('parks');
    searchCalls = 0;
    suggestionCalls = 0;
  });

  group('ElasticAppSearch service behavior', () {
    test('postSearchOperation requires a query engine', () {
      final query = ElasticQuery.fromJson({'query': 'mountains'});
      expect(() => service.postSearchOperation(query), throwsStateError);
    });

    test('postSuggestionOperation requires a query engine', () {
      final query = ElasticSuggestionsQuery.fromJson({'query': 'moun'});
      expect(() => service.postSuggestionOperation(query), throwsStateError);
    });

    test('instance getter returns a configured clone', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          await _writeJson(
            request,
            200,
            _searchResponse(requestId: 'req-clone', facetCount: 1),
          );
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final clone = service.instance;
      expect(identical(clone, service), isFalse);

      final response = await clone.engine('parks').query('mountains').get();
      expect(response.meta.requestId, 'req-clone');
    });

    test('search success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          searchCalls++;
          final body = await _readJson(request);
          expect(body['query'], 'mountains');
          await _writeJson(
            request,
            200,
            _searchResponse(requestId: 'req-main', facetCount: 3),
          );
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine
          .query('mountains')
          .facet('states')
          .resultField('title')
          .get();

      expect(searchCalls, 1);
      expect(response.meta.requestId, 'req-main');
      expect(response.results.first.data?['title'], 'Yosemite');
      expect(response.results.first.score, 42.0);
      expect(response.facet('states')?.countForValue('California'), 3);
    });

    test('query suggestion success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/query_suggestion')) {
          suggestionCalls++;
          final body = await _readJson(request);
          expect(body['query'], 'moun');
          await _writeJson(request, 200, {
            'results': {
              'documents': [
                {'suggestion': 'mountain'},
                {'suggestion': 'mountains'},
              ],
            },
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.suggestionQuery('moun').size(2).get();

      expect(suggestionCalls, 1);
      expect(response.results.documents?.length, 2);
      expect(response.results.documents?.first.suggestion, 'mountain');
    });

    test(
      'disjunctive facet executes an extra query and replaces facet bucket',
      () async {
        handler = (request) async {
          if (!request.uri.path.endsWith('/search')) {
            await _writeJson(request, 404, {
              'errors': ['Unexpected path: ${request.uri.path}'],
            });
            return;
          }

          searchCalls++;
          final body = await _readJson(request);
          final page = body['page'];
          final isFacetOnlyRequest =
              page is Map && page['current'] == 1 && page['size'] == 0;

          if (isFacetOnlyRequest) {
            final analytics = body['analytics'] as Map<String, dynamic>?;
            expect(analytics?['tags'], contains('Facet-Only'));
            await _writeJson(
              request,
              200,
              _searchResponse(requestId: 'req-disj', facetCount: 99),
            );
            return;
          }

          await _writeJson(
            request,
            200,
            _searchResponse(requestId: 'req-main', facetCount: 1),
          );
        };

        final response = await engine
            .query('mountains')
            .filter('states', isEqualTo: 'California')
            .facet('states')
            .disjunctiveFacet('states')
            .get();

        expect(searchCalls, 2);
        expect(response.meta.requestId, 'req-main');
        expect(response.facet('states')?.countForValue('California'), 99);
      },
    );

    test(
      'disjunctive facet without matching filter does not execute extra query',
      () async {
        handler = (request) async {
          if (request.uri.path.endsWith('/search')) {
            searchCalls++;
            await _writeJson(
              request,
              200,
              _searchResponse(requestId: 'req-main', facetCount: 5),
            );
            return;
          }

          await _writeJson(request, 404, {
            'errors': ['Unexpected path: ${request.uri.path}'],
          });
        };

        final response = await engine
            .query('mountains')
            .facet('states')
            .disjunctiveFacet('states')
            .get();

        expect(searchCalls, 1);
        expect(response.facet('states')?.countForValue('California'), 5);
      },
    );

    test('search HTTP errors are mapped with status and message', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          await _writeJson(request, 401, {
            'errors': ['Invalid search credentials'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.query('mountains').get(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.search)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having(
                (e) => e.message,
                'message',
                'Invalid search credentials',
              ),
        ),
      );
    });

    test('search HTTP errors use the "message" field when provided', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          await _writeJson(request, 400, {
            'message': 'Request payload is invalid',
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.query('mountains').get(),
        throwsA(
          isA<ElasticAppSearchException>().having(
            (e) => e.message,
            'message',
            'Request payload is invalid',
          ),
        ),
      );
    });

    test('search HTTP errors use the "error" field when provided', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          await _writeJson(request, 400, {
            'error': 'Service temporarily unavailable',
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.query('mountains').get(),
        throwsA(
          isA<ElasticAppSearchException>().having(
            (e) => e.message,
            'message',
            'Service temporarily unavailable',
          ),
        ),
      );
    });

    test('search HTTP errors fall back to default message', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          await _writeJson(request, 400, {
            'details': 'No explicit message keys',
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.query('mountains').get(),
        throwsA(
          isA<ElasticAppSearchException>().having(
            (e) => e.message,
            'message',
            'Unable to get response from API server',
          ),
        ),
      );
    });

    test(
      'search exception exposes responseData payload when available',
      () async {
        handler = (request) async {
          if (request.uri.path.endsWith('/search')) {
            await _writeJson(request, 422, {
              'errors': ['payload invalid'],
              'details': {'field': 'query'},
            });
            return;
          }

          await _writeJson(request, 404, {
            'errors': ['Unexpected path: ${request.uri.path}'],
          });
        };

        await expectLater(
          engine.query('mountains').get(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.statusCode, 'statusCode', 422)
                .having((e) => e.responseData, 'responseData', isA<Map>()),
          ),
        );
      },
    );

    test('suggestion HTTP errors are mapped with status and message', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/query_suggestion')) {
          await _writeJson(request, 500, {
            'errors': ['Suggestion endpoint failed'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.suggestionQuery('moun').get(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.querySuggestion,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 500)
              .having(
                (e) => e.message,
                'message',
                'Suggestion endpoint failed',
              ),
        ),
      );
    });

    test(
      'disjunctive secondary request failures bubble as search exception',
      () async {
        handler = (request) async {
          if (!request.uri.path.endsWith('/search')) {
            await _writeJson(request, 404, {
              'errors': ['Unexpected path: ${request.uri.path}'],
            });
            return;
          }

          searchCalls++;
          if (searchCalls == 1) {
            await _writeJson(
              request,
              200,
              _searchResponse(requestId: 'req-main', facetCount: 1),
            );
            return;
          }

          await _writeJson(request, 502, {
            'errors': ['Disjunctive request failed'],
          });
        };

        await expectLater(
          engine
              .query('mountains')
              .filter('states', isEqualTo: 'California')
              .facet('states')
              .disjunctiveFacet('states')
              .get(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.search)
                .having((e) => e.statusCode, 'statusCode', 502)
                .having(
                  (e) => e.message,
                  'message',
                  'Disjunctive request failed',
                ),
          ),
        );
      },
    );

    test('debug mode executes debug logging branches', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          await _writeJson(
            request,
            200,
            _searchResponse(requestId: 'req-debug', facetCount: 1),
          );
          return;
        }
        if (request.uri.path.endsWith('/query_suggestion')) {
          await _writeJson(request, 200, {
            'results': {
              'documents': [
                {'suggestion': 'mountain'},
              ],
            },
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final debugService = ElasticAppSearch(
        endPoint: 'http://${server.address.address}:${server.port}',
        searchKey: 'search-key',
        debug: true,
      );
      final debugEngine = debugService.engine('parks');
      final logs = <String>[];

      await runZoned(
        () async {
          await debugEngine.query('mountains').facet('states').get();
          await debugEngine.suggestionQuery('moun').get();
        },
        zoneSpecification: ZoneSpecification(
          print: (self, parent, zone, line) {
            logs.add(line);
          },
        ),
      );

      expect(logs.any((line) => line.contains('====== Query ======')), isTrue);
      expect(
        logs.any((line) => line.contains('====== Response ======')),
        isTrue,
      );
      expect(logs.any((line) => line.contains('====== Url ======')), isTrue);
    });

    test('request cancellation rethrows DioException cancel', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search')) {
          await Future<void>.delayed(const Duration(milliseconds: 300));
          await _writeJson(
            request,
            200,
            _searchResponse(requestId: 'req-main', facetCount: 1),
          );
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final token = CancelToken();
      final future = engine.query('mountains').get(token);
      await Future<void>.delayed(const Duration(milliseconds: 20));
      token.cancel('cancelled by test');

      await expectLater(
        future,
        throwsA(
          isA<DioException>().having(
            (e) => e.type,
            'type',
            DioExceptionType.cancel,
          ),
        ),
      );
    });
  });
}
