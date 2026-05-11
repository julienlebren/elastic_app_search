import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

typedef _RequestHandler = Future<void> Function(HttpRequest request);

Future<dynamic> _readJson(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  if (body.trim().isEmpty) return <String, dynamic>{};

  final decoded = jsonDecode(body);
  if (decoded is Map<String, dynamic>) return decoded;
  if (decoded is Map) {
    return decoded.map((key, value) => MapEntry(key.toString(), value));
  }
  if (decoded is List) return decoded;
  throw FormatException('Request body must be a JSON object or JSON array.');
}

Future<void> _writeJson(
  HttpRequest request,
  int statusCode,
  Object body,
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

    test('search explain success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/search_explain')) {
          final body = await _readJson(request);
          expect(body['query'], 'mountains');
          await _writeJson(request, 200, {
            'meta': {
              'request_id': 'req-explain',
              'warnings': [],
              'alerts': [],
              'precision': 2,
              'engine': {'name': 'parks', 'type': 'default'},
            },
            'query_string': 'GET enterprise-search-engine-parks/_search',
            'query_body': {
              'query': {
                'bool': {'must': []},
              },
            },
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.query('mountains').explain();

      expect(response.meta.requestId, 'req-explain');
      expect(response.meta.precision, 2);
      expect(response.meta.engine?.name, 'parks');
      expect(
        response.queryString,
        'GET enterprise-search-engine-parks/_search',
      );
      expect(response.queryBody['query'], isA<Map>());
    });

    test('multi search success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/multi_search')) {
          final body = await _readJson(request);
          expect(body['queries'], isA<List<dynamic>>());
          final queries = body['queries'] as List<dynamic>;
          expect(queries, hasLength(2));
          expect((queries.first as Map<String, dynamic>)['query'], 'mountains');
          expect((queries.last as Map<String, dynamic>)['query'], 'lakes');

          await _writeJson(request, 200, [
            _searchResponse(requestId: 'req-multi-1', facetCount: 1),
            _searchResponse(requestId: 'req-multi-2', facetCount: 2),
          ]);
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final responses = await engine.multiSearch([
        engine.query('mountains'),
        engine.query('lakes'),
      ]);

      expect(responses, hasLength(2));
      expect(responses.first.meta.requestId, 'req-multi-1');
      expect(responses.last.meta.requestId, 'req-multi-2');
      expect(responses.last.facet('states')?.countForValue('California'), 2);
    });

    test('query suggestion success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/query_suggestion')) {
          suggestionCalls++;
          final body = await _readJson(request);
          expect(body['query'], 'moun');
          expect(body['types'], {
            'documents': {
              'fields': ['title'],
            },
          });
          await _writeJson(request, 200, {
            'results': {
              'documents': [
                {'suggestion': 'mountain'},
                {'suggestion': 'mountains'},
              ],
            },
            'meta': {'request_id': 'req-suggest-1'},
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine
          .suggestionQuery('moun')
          .searchField('title', weight: 4)
          .withSize(2)
          .get();

      expect(suggestionCalls, 1);
      expect(response.results.documents?.length, 2);
      expect(response.results.documents?.first.suggestion, 'mountain');
      expect(response.meta.requestId, 'req-suggest-1');
    });

    test('clickthrough success accepts empty response body', () async {
      var clickCalls = 0;

      handler = (request) async {
        if (request.uri.path.endsWith('/click')) {
          clickCalls++;
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['query'], 'everglade');
          expect(body['document_id'], 'park_zion');
          expect(body['request_id'], 'req-123');
          expect(body['tags'], ['web', 'mobile']);

          request.response.statusCode = 200;
          await request.response.close();
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await engine.clickthrough(
        const ElasticClickthroughRequest(
          query: 'everglade',
          documentId: 'park_zion',
          requestId: 'req-123',
          tags: ['web', 'mobile'],
        ),
      );

      expect(clickCalls, 1);
    });

    test('analytics queries success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/analytics/queries')) {
          expect(request.method, 'POST');
          final body = await _readJson(request);

          final page = body['page'] as Map<String, dynamic>?;
          expect(page?['size'], 5);
          final filters = body['filters'] as Map<String, dynamic>?;
          expect(filters?['clicks'], true);
          expect(filters?['tag'], 'mobile');

          await _writeJson(request, 200, {
            'meta': {
              'page': {'current': 1, 'size': 1},
            },
            'results': [
              {'term': 'everglade', 'clicks': 12, 'queries': 40},
            ],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.analyticsQueries(
        request: ElasticAnalyticsQueriesRequest(
          page: const ElasticPageRequest(size: 5),
          filters: const ElasticAnalyticsFilter(clicks: true, tag: ['mobile']),
        ),
      );

      expect(response.meta.page.current, 1);
      expect(response.meta.page.size, 1);
      expect(response.results, hasLength(1));
      expect(response.results.first.term, 'everglade');
      expect(response.results.first.clicks, 12);
      expect(response.results.first.queries, 40);
    });

    test('analytics clicks success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/analytics/clicks')) {
          expect(request.method, 'POST');
          final body = await _readJson(request);

          expect(body['query'], 'everglade');
          final page = body['page'] as Map<String, dynamic>?;
          expect(page?['size'], 4);
          final filters = body['filters'] as Map<String, dynamic>?;
          expect(filters?['tag'], ['web', 'mobile']);

          await _writeJson(request, 200, {
            'meta': {
              'page': {'current': 1, 'size': 2},
            },
            'results': [
              {'document_id': '5209', 'clicks': 3},
              {'document_id': '6879', 'clicks': 2},
            ],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.analyticsClicks(
        request: ElasticAnalyticsClicksRequest(
          query: 'everglade',
          page: const ElasticPageRequest(size: 4),
          filters: const ElasticAnalyticsFilter(tag: ['web', 'mobile']),
        ),
      );

      expect(response.meta.page.current, 1);
      expect(response.meta.page.size, 2);
      expect(response.results, hasLength(2));
      expect(response.results.first.documentId, '5209');
      expect(response.results.first.clicks, 3);
    });

    test('analytics counts success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/analytics/counts')) {
          expect(request.method, 'POST');
          final body = await _readJson(request);

          expect(body['interval'], 'hour');
          final filters = body['filters'] as Map<String, dynamic>?;
          expect(filters?['query'], 'rails');
          expect(filters?['document_id'], '163');
          expect(filters?['date'], {
            'from': '2018-07-05T12:00:00+00:00',
            'to': '2018-07-05T14:00:00+00:00',
          });

          await _writeJson(request, 200, {
            'results': [
              {
                'clicks': 1,
                'queries': 139,
                'from': '2018-07-05T12:00:00+00:00',
                'to': '2018-07-05T13:00:00+00:00',
              },
              {
                'clicks': 0,
                'queries': 59,
                'from': '2018-07-05T13:00:00+00:00',
                'to': '2018-07-05T14:00:00+00:00',
              },
            ],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.analyticsCounts(
        request: const ElasticAnalyticsCountsRequest(
          interval: ElasticAnalyticsInterval.hour,
          filters: ElasticAnalyticsFilter(
            query: 'rails',
            documentId: '163',
            date: ElasticAnalyticsDateFilter(
              from: '2018-07-05T12:00:00+00:00',
              to: '2018-07-05T14:00:00+00:00',
            ),
          ),
        ),
      );

      expect(response.results, hasLength(2));
      expect(response.results.first.clicks, 1);
      expect(response.results.first.queries, 139);
      expect(response.results.first.from, '2018-07-05T12:00:00+00:00');
      expect(response.results.first.to, '2018-07-05T13:00:00+00:00');
    });

    test('api logs GET and POST endpoints parse payloads', () async {
      final apiLogsRequest = ElasticApiLogsRequest(
        filters: const ElasticApiLogsFilter(
          date: ElasticApiLogsDateFilter(
            from: '2018-10-15T00:00:00+00:00',
            to: '2018-10-16T00:00:00+00:00',
          ),
          status: 200,
          method: ElasticApiLogsHttpMethod.post,
        ),
        query: '/api/as/v1/engines/parks/search',
        sortDirection: ElasticApiLogsSortDirection.desc,
        page: const ElasticPageRequest(size: 20),
      );

      handler = (request) async {
        if (request.uri.path.endsWith('/logs/api')) {
          final body = await _readJson(request);
          final filters = body['filters'] as Map<String, dynamic>?;
          final date = filters?['date'] as Map<String, dynamic>?;
          final page = body['page'] as Map<String, dynamic>?;

          expect(date?['from'], '2018-10-15T00:00:00+00:00');
          expect(date?['to'], '2018-10-16T00:00:00+00:00');
          expect(filters?['status'], 200);
          expect(filters?['method'], 'POST');
          expect(body['query'], '/api/as/v1/engines/parks/search');
          expect(body['sort_direction'], 'desc');
          expect(page?['size'], 20);

          await _writeJson(request, 200, {
            'results': [
              {
                'timestamp': '2018-10-15T20:42:14Z',
                'http_method': 'POST',
                'path': '/api/as/v1/engines/parks/search',
                'full_request_path': '/api/as/v1/engines/parks/search',
                'status': 200,
                'request_body': '{"query":"everglade"}',
                'response_body': '{"meta":{"request_id":"req-1"}}',
                'user_agent': 'curl/7.54.0',
              },
            ],
            'meta': {
              'query': '/api/as/v1/engines/parks/search',
              'filters': {
                'date': {
                  'from': '2018-10-15T00:00:00+00:00',
                  'to': '2018-10-16T00:00:00+00:00',
                },
                'status': 200,
                'method': 'POST',
              },
              'sort_direction': 'desc',
              'page': {
                'current': 1,
                'size': 20,
                'total_pages': 1,
                'total_results': 1,
              },
            },
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final getResponse = await engine.getApiLogs(apiLogsRequest);
      final postResponse = await engine.queryApiLogs(apiLogsRequest);

      expect(getResponse.results, hasLength(1));
      expect(getResponse.results.first.httpMethod, 'POST');
      expect(getResponse.results.first.status, 200);
      expect(getResponse.meta.sortDirection, ElasticApiLogsSortDirection.desc);
      expect(getResponse.meta.page.totalResults, 1);
      expect(postResponse.results, hasLength(1));
      expect(postResponse.meta.page.current, 1);
      expect(postResponse.meta.filters?.method, ElasticApiLogsHttpMethod.post);
    });

    test('adaptive relevance endpoints parse payloads', () async {
      final filterRequest = ElasticAdaptiveRelevanceSuggestionsRequest(
        filters: const ElasticAdaptiveRelevanceSuggestionsFilter(
          type: ElasticAdaptiveRelevanceSuggestionType.curation,
          status: [
            ElasticAdaptiveRelevanceSuggestionStatus.pending,
            ElasticAdaptiveRelevanceSuggestionStatus.automated,
          ],
        ),
      );

      final settingsUpdate = ElasticAdaptiveRelevanceSettings(
        curation: const ElasticAdaptiveRelevanceCurationSettings(
          enabled: true,
          mode: ElasticAdaptiveRelevanceMode.manual,
          timeframe: 10,
          maxSize: 25,
          minClicks: 5,
          scheduleFrequency: 2,
          scheduleUnit: ElasticAdaptiveRelevanceScheduleUnit.hour,
        ),
      );

      handler = (request) async {
        if (request.uri.path ==
            '/api/as/v0/engines/parks/adaptive_relevance/suggestions') {
          if (request.method == 'GET' || request.method == 'POST') {
            final body = await _readJson(request);
            final filters = body['filters'] as Map<String, dynamic>?;
            expect(filters?['type'], 'curation');
            expect(filters?['status'], ['pending', 'automated']);

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 25,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'query': 'green tea',
                  'type': 'curation',
                  'status': 'pending',
                  'operation': 'create',
                  'promoted': ['doc-1'],
                  'curation_id': 'cur-123',
                  'override_manual_curation': false,
                },
              ],
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            final suggestions = body['suggestions'] as List<dynamic>?;
            expect(suggestions, hasLength(1));
            expect(
              (suggestions!.first as Map<String, dynamic>)['query'],
              'green tea',
            );
            expect(
              (suggestions.first as Map<String, dynamic>)['type'],
              'curation',
            );
            expect(
              (suggestions.first as Map<String, dynamic>)['status'],
              'applied',
            );

            await _writeJson(request, 200, {
              'results': [
                {
                  'query': 'green tea',
                  'type': 'curation',
                  'status': 'applied',
                  'operation': 'update',
                  'promoted': ['doc-1'],
                  'errors': [],
                },
              ],
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v0/engines/parks/adaptive_relevance/suggestions/chill%20query') {
          if (request.method == 'GET' || request.method == 'POST') {
            final body = await _readJson(request);
            final filters = body['filters'] as Map<String, dynamic>?;
            expect(filters?['type'], 'curation');
            expect(filters?['status'], ['pending', 'automated']);

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 25,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'query': 'chill query',
                  'type': 'curation',
                  'status': 'automated',
                  'operation': 'update',
                  'promoted': ['doc-2'],
                },
              ],
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v0/engines/parks/adaptive_relevance/settings') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'curation': {
                'enabled': true,
                'mode': 'automatic',
                'timeframe': 30,
                'max_size': 10,
                'min_clicks': 20,
                'schedule_frequency': 1,
                'schedule_unit': 'hour',
              },
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            final curation = body['curation'] as Map<String, dynamic>?;
            expect(curation?['enabled'], true);
            expect(curation?['mode'], 'manual');
            expect(curation?['timeframe'], 10);
            expect(curation?['max_size'], 25);
            expect(curation?['min_clicks'], 5);
            expect(curation?['schedule_frequency'], 2);
            expect(curation?['schedule_unit'], 'hour');

            await _writeJson(request, 200, {
              'curation': {
                'enabled': true,
                'mode': 'manual',
                'timeframe': 10,
                'max_size': 25,
                'min_clicks': 5,
                'schedule_frequency': 2,
                'schedule_unit': 'hour',
              },
            });
            return;
          }
        }

        if (request.uri.path ==
                '/api/as/v0/engines/parks/adaptive_relevance/update_process/curation/refresh' &&
            request.method == 'POST') {
          request.response.statusCode = 200;
          await request.response.close();
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final listed = await engine.listAdaptiveRelevanceSuggestions(
        filterRequest,
      );
      final queried = await engine.queryAdaptiveRelevanceSuggestions(
        filterRequest,
      );
      final byQueryListed = await engine
          .listAdaptiveRelevanceSuggestionsByQuery(
            'chill query',
            filterRequest,
          );
      final byQueryQueried = await engine
          .queryAdaptiveRelevanceSuggestionsByQuery(
            'chill query',
            filterRequest,
          );
      final updatedSuggestions = await engine
          .updateAdaptiveRelevanceSuggestions([
            const ElasticAdaptiveRelevanceSuggestionUpdate(
              query: 'green tea',
              type: ElasticAdaptiveRelevanceSuggestionType.curation,
              status: ElasticAdaptiveRelevanceSuggestionStatus.applied,
            ),
          ]);
      final currentSettings = await engine.getAdaptiveRelevanceSettings();
      final updatedSettings = await engine.updateAdaptiveRelevanceSettings(
        settingsUpdate,
      );
      await engine.refreshAdaptiveRelevanceSuggestions();

      expect(listed.results, hasLength(1));
      expect(
        listed.results.first.type,
        ElasticAdaptiveRelevanceSuggestionType.curation,
      );
      expect(
        listed.results.first.status,
        ElasticAdaptiveRelevanceSuggestionStatus.pending,
      );
      expect(queried.meta.page.totalResults, 1);
      expect(byQueryListed.results.first.query, 'chill query');
      expect(
        byQueryQueried.results.first.status,
        ElasticAdaptiveRelevanceSuggestionStatus.automated,
      );
      expect(updatedSuggestions.results, hasLength(1));
      expect(
        updatedSuggestions.results.first.status,
        ElasticAdaptiveRelevanceSuggestionStatus.applied,
      );
      expect(
        currentSettings.curation.mode,
        ElasticAdaptiveRelevanceMode.automatic,
      );
      expect(
        updatedSettings.curation.mode,
        ElasticAdaptiveRelevanceMode.manual,
      );
      expect(
        updatedSettings.curation.scheduleUnit,
        ElasticAdaptiveRelevanceScheduleUnit.hour,
      );
    });

    test('schema get success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/schema') && request.method == 'GET') {
          await _writeJson(request, 200, {
            'title': 'text',
            'visitors': 'number',
            'date_established': 'date',
            'location': 'geolocation',
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final schema = await engine.getSchema();

      expect(schema.fields, hasLength(4));
      expect(schema['title'], ElasticSchemaFieldType.text);
      expect(schema['visitors'], ElasticSchemaFieldType.number);
      expect(schema['date_established'], ElasticSchemaFieldType.date);
      expect(schema['location'], ElasticSchemaFieldType.geolocation);
    });

    test('schema update success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/schema') && request.method == 'POST') {
          final body = await _readJson(request);
          expect(body, {'title': 'text', 'visitors': 'number'});

          await _writeJson(request, 200, {
            'title': 'text',
            'visitors': 'number',
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final schema = await engine.updateSchema({
        'title': ElasticSchemaFieldType.text,
        'visitors': ElasticSchemaFieldType.number,
      });

      expect(schema.fields, hasLength(2));
      expect(schema['title'], ElasticSchemaFieldType.text);
      expect(schema['visitors'], ElasticSchemaFieldType.number);
    });

    test('search settings endpoints parse payloads', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/search_settings') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'search_fields': {
                'title': {'weight': 3},
              },
              'result_fields': {
                'title': {'raw': {}},
              },
              'boosts': {
                'visitors': [
                  {
                    'type': 'functional',
                    'function': 'logarithmic',
                    'factor': 2.5,
                  },
                ],
              },
              'precision': 3,
              'precision_enabled': true,
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['search_fields'], {
              'title': {'weight': 6},
            });
            expect(body['result_fields'], {
              'title': {
                'snippet': {'size': 40, 'fallback': true},
              },
            });
            expect(body['boosts'], {
              'visitors': [
                {
                  'type': 'value',
                  'factor': 4,
                  'value': ['10'],
                },
              ],
            });
            expect(body['precision'], 7);

            await _writeJson(request, 200, {
              'search_fields': {
                'title': {'weight': 6},
              },
              'result_fields': {
                'title': {
                  'snippet': {'size': 40, 'fallback': true},
                },
              },
              'boosts': {
                'visitors': [
                  {
                    'type': 'value',
                    'factor': 4,
                    'value': ['10'],
                  },
                ],
              },
              'precision': 7,
              'precision_enabled': true,
            });
            return;
          }
        }

        if (request.uri.path ==
                '/api/as/v1/engines/parks/search_settings/reset' &&
            request.method == 'POST') {
          await _writeJson(request, 200, {
            'search_fields': {
              'title': {'weight': 1},
            },
            'boosts': {},
            'precision': 2,
            'precision_enabled': true,
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final current = await engine.getSearchSettings();
      final updated = await engine.updateSearchSettings(
        searchFields: const {
          'title': {'weight': 6},
        },
        resultFields: const {
          'title': {
            'snippet': {'size': 40, 'fallback': true},
          },
        },
        boosts: const {
          'visitors': [
            {
              'type': 'value',
              'factor': 4,
              'value': ['10'],
            },
          ],
        },
        precision: 7,
      );
      final reset = await engine.resetSearchSettings();

      expect((current.searchFields?['title'] as Map)['weight'], 3);
      expect((updated.searchFields?['title'] as Map)['weight'], 6);
      expect(updated.precision, 7);
      expect(updated.precisionEnabled, isTrue);
      expect(reset.precision, 2);
    });

    test('index documents success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'POST') {
          final body = await _readJson(request);
          expect(body, isA<List<dynamic>>());
          final documents = body as List<dynamic>;
          expect(documents, hasLength(2));
          expect((documents.first as Map<String, dynamic>)['id'], 'park_zion');

          await _writeJson(request, 200, [
            {'id': 'park_zion', 'errors': []},
            {
              'id': 'park_missing',
              'errors': ['Missing required key "title"'],
            },
          ]);
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final results = await engine.indexDocuments([
        {'id': 'park_zion', 'title': 'Zion'},
        {'id': 'park_missing'},
      ]);

      expect(results, hasLength(2));
      expect(results.first.id, 'park_zion');
      expect(results.first.errors, isEmpty);
      expect(results.first.accepted, isTrue);
      expect(results.last.id, 'park_missing');
      expect(results.last.errors, contains('Missing required key "title"'));
      expect(results.last.accepted, isFalse);
    });

    test('partial update documents success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'PATCH') {
          final body = await _readJson(request);
          expect(body, isA<List<dynamic>>());
          final documents = body as List<dynamic>;
          expect((documents.first as Map<String, dynamic>)['id'], 'park_zion');
          expect(
            (documents.first as Map<String, dynamic>)['title'],
            'Zion Canyon',
          );

          await _writeJson(request, 200, [
            {'id': 'park_zion', 'errors': []},
          ]);
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final results = await engine.updateDocuments([
        {'id': 'park_zion', 'title': 'Zion Canyon'},
      ]);

      expect(results, hasLength(1));
      expect(results.first.id, 'park_zion');
      expect(results.first.accepted, isTrue);
    });

    test('get documents success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'GET') {
          final body = await _readJson(request);
          expect(body, ['park_zion', 'does_not_exist']);

          await _writeJson(request, 200, [
            {'id': 'park_zion', 'title': 'Zion'},
            null,
          ]);
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final results = await engine.getDocuments([
        'park_zion',
        'does_not_exist',
      ]);

      expect(results, hasLength(2));
      expect(results.first?['id'], 'park_zion');
      expect(results.first?['title'], 'Zion');
      expect(results.last, isNull);
    });

    test('delete documents success parses response payload', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'DELETE') {
          final body = await _readJson(request);
          expect(body, ['park_zion', 'does_not_exist']);

          await _writeJson(request, 200, [
            {'id': 'park_zion', 'deleted': true},
            {'id': 'does_not_exist', 'deleted': false},
          ]);
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final results = await engine.deleteDocuments([
        'park_zion',
        'does_not_exist',
      ]);

      expect(results, hasLength(2));
      expect(results.first.id, 'park_zion');
      expect(results.first.deleted, isTrue);
      expect(results.last.id, 'does_not_exist');
      expect(results.last.deleted, isFalse);
    });

    test('engines list success parses account-level payload', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines') {
          expect(request.method, 'GET');
          final body = await _readJson(request);
          final page = body['page'] as Map<String, dynamic>?;
          expect(page?['current'], 1);
          expect(page?['size'], 20);

          await _writeJson(request, 200, {
            'meta': {
              'page': {
                'current': 1,
                'size': 20,
                'total_pages': 1,
                'total_results': 1,
              },
            },
            'results': [
              {
                'name': 'parks',
                'type': 'default',
                'language': null,
                'document_count': '12',
              },
            ],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await service.listEngines(
        page: const ElasticPageRequest(current: 1, size: 20),
      );

      expect(response.meta.page.current, 1);
      expect(response.meta.page.size, 20);
      expect(response.results, hasLength(1));
      expect(response.results.first.name, 'parks');
      expect(response.results.first.type, 'default');
      expect(response.results.first.documentCount, 12);
    });

    test('engines list validates pagination bounds', () {
      expect(
        () => service.listEngines(page: const ElasticPageRequest(current: 0)),
        throwsRangeError,
      );
      expect(
        () => service.listEngines(page: const ElasticPageRequest(size: 0)),
        throwsRangeError,
      );
      expect(
        () => service.listEngines(page: const ElasticPageRequest(size: 26)),
        throwsRangeError,
      );
    });

    test('engines list errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines') {
          await _writeJson(request, 401, {
            'errors': ['Invalid admin key'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        service.listEngines(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.engines)
              .having((e) => e.engine, 'engine', '<account>')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having((e) => e.message, 'message', 'Invalid admin key'),
        ),
      );
    });

    test('credentials endpoints parse payloads', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/credentials') {
          if (request.method == 'GET') {
            final body = await _readJson(request);
            final page = body['page'] as Map<String, dynamic>?;
            expect(page?['current'], 2);
            expect(page?['size'], 10);

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 2,
                  'size': 10,
                  'total_pages': 3,
                  'total_results': 21,
                },
              },
              'results': [
                {
                  'name': 'my-private-key',
                  'key': 'private-xyz',
                  'type': 'private',
                  'read': true,
                  'write': false,
                  'access_all_engines': true,
                },
              ],
            });
            return;
          }

          if (request.method == 'POST') {
            final body = await _readJson(request);
            expect(body['name'], 'reading-private-key');
            expect(body['type'], 'private');
            expect(body['read'], true);
            expect(body['write'], false);
            expect(body['access_all_engines'], false);
            expect(body['engines'], orderedEquals(['parks']));

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 25,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'name': 'reading-private-key',
                  'key': 'private-new',
                  'type': 'private',
                  'read': true,
                  'write': false,
                  'access_all_engines': false,
                  'engines': ['parks'],
                },
              ],
            });
            return;
          }
        }

        if (request.uri.path == '/api/as/v1/credentials/reading-private-key') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 25,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'name': 'reading-private-key',
                  'key': 'private-old',
                  'type': 'private',
                  'read': true,
                  'write': false,
                  'access_all_engines': false,
                  'engines': ['parks'],
                },
              ],
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['name'], 'reading-private-key-v2');
            expect(body['type'], 'private');
            expect(body['read'], true);
            expect(body['write'], true);
            expect(body['access_all_engines'], true);
            expect(body.containsKey('engines'), isFalse);

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 25,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'name': 'reading-private-key-v2',
                  'key': 'private-old',
                  'type': 'private',
                  'read': true,
                  'write': true,
                  'access_all_engines': true,
                },
              ],
            });
            return;
          }

          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final listed = await service.listCredentials(
        page: const ElasticPageRequest(current: 2, size: 10),
      );
      final fetched = await service.getCredential('reading-private-key');
      final created = await service.createCredential(
        name: 'reading-private-key',
        type: ElasticCredentialType.privateKey,
        read: true,
        write: false,
        accessAllEngines: false,
        engines: const ['parks'],
      );
      final updated = await service.updateCredential(
        'reading-private-key',
        newName: 'reading-private-key-v2',
        type: ElasticCredentialType.privateKey,
        read: true,
        write: true,
        accessAllEngines: true,
      );
      final deleted = await service.deleteCredential('reading-private-key');

      expect(listed.meta.page.current, 2);
      expect(listed.meta.page.size, 10);
      expect(listed.meta.page.totalResults, 21);
      expect(listed.results, hasLength(1));
      expect(listed.results.first.type, ElasticCredentialType.privateKey);
      expect(fetched.name, 'reading-private-key');
      expect(fetched.accessAllEngines, isFalse);
      expect(created.key, 'private-new');
      expect(created.engines, orderedEquals(['parks']));
      expect(updated.name, 'reading-private-key-v2');
      expect(updated.accessAllEngines, isTrue);
      expect(deleted, isTrue);
    });

    test('log settings endpoints parse payloads', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/log_settings') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'api': {'enabled': true},
              'analytics': {'enabled': true},
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body, {
              'api': {'enabled': false},
            });
            await _writeJson(request, 200, {
              'api': {'enabled': false},
              'analytics': {'enabled': true},
            });
            return;
          }

          if (request.method == 'PATCH') {
            final body = await _readJson(request);
            expect(body, {
              'analytics': {'enabled': false},
            });
            await _writeJson(request, 200, {
              'api': {'enabled': false},
              'analytics': {'enabled': false},
            });
            return;
          }

          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {
              'api': {'enabled': true},
              'analytics': {'enabled': true},
            });
            return;
          }
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final current = await service.getLogSettings();
      final updated = await service.updateLogSettings(apiEnabled: false);
      final patched = await service.patchLogSettings(analyticsEnabled: false);
      final reset = await service.resetLogSettings();

      expect(current.api.enabled, isTrue);
      expect(current.analytics.enabled, isTrue);
      expect(updated.api.enabled, isFalse);
      expect(updated.analytics.enabled, isTrue);
      expect(patched.api.enabled, isFalse);
      expect(patched.analytics.enabled, isFalse);
      expect(reset.api.enabled, isTrue);
      expect(reset.analytics.enabled, isTrue);
    });

    test('crawler endpoints parse payloads', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/crawler') {
          expect(request.method, 'GET');
          await _writeJson(request, 200, {
            'domains': [
              {
                'id': 'dom-1',
                'name': 'https://example.com',
                'document_count': 12,
              },
            ],
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/crawl_requests/active') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'id': 'cr-active',
              'type': 'full',
              'status': 'running',
              'created_at': '2021-02-03T22:20:29Z',
              'begun_at': '2021-02-03T22:20:31Z',
              'completed_at': null,
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/crawl_requests/active/cancel') {
          expect(request.method, 'POST');
          await _writeJson(request, 200, {
            'id': 'cr-active',
            'type': 'full',
            'status': 'canceling',
            'created_at': '2021-02-03T22:20:29Z',
            'begun_at': '2021-02-03T22:20:31Z',
            'completed_at': null,
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/crawl_requests') {
          if (request.method == 'GET') {
            final body = await _readJson(request);
            final page = body['page'] as Map<String, dynamic>?;
            expect(page?['current'], 1);
            expect(page?['size'], 10);

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 10,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'id': 'cr-1',
                  'type': 'full',
                  'status': 'success',
                  'created_at': '2021-02-01T10:00:00Z',
                  'begun_at': '2021-02-01T10:00:01Z',
                  'completed_at': '2021-02-01T10:30:00Z',
                },
              ],
            });
            return;
          }

          if (request.method == 'POST') {
            final body = await _readJson(request);
            if (body.isEmpty) {
              await _writeJson(request, 200, {
                'id': 'cr-new',
                'type': 'full',
                'status': 'pending',
                'created_at': '2021-02-02T10:00:00Z',
                'begun_at': null,
                'completed_at': null,
              });
              return;
            }

            expect(body['max_crawl_depth'], 2);
            expect(body['domain_allowlist'], ['https://example.com']);
            expect(body['seed_urls'], ['https://example.com/start']);
            expect(body['sitemap_urls'], ['https://example.com/sitemap.xml']);
            expect(body['sitemap_discovery_disabled'], true);

            await _writeJson(request, 200, {
              'id': 'cr-partial',
              'type': 'partial',
              'status': 'pending',
              'created_at': '2021-02-02T11:00:00Z',
              'begun_at': null,
              'completed_at': null,
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/crawl_requests/cr-1') {
          expect(request.method, 'GET');
          await _writeJson(request, 200, {
            'id': 'cr-1',
            'type': 'full',
            'status': 'success',
            'created_at': '2021-02-01T10:00:00Z',
            'begun_at': '2021-02-01T10:00:01Z',
            'completed_at': '2021-02-01T10:30:00Z',
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/crawl_schedule') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'engine': 'parks',
              'frequency': 2,
              'unit': 'week',
            });
            return;
          }
          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body, {'frequency': 12, 'unit': 'hour'});
            await _writeJson(request, 200, {
              'engine': 'parks',
              'frequency': 12,
              'unit': 'hour',
            });
            return;
          }
          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/process_crawls') {
          if (request.method == 'GET') {
            final body = await _readJson(request);
            final page = body['page'] as Map<String, dynamic>?;
            expect(page?['current'], 1);
            expect(page?['size'], 10);

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 10,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'id': 'pc-1',
                  'dry_run': true,
                  'total_url_count': 167,
                  'denied_url_count': 92,
                  'domains': ['https://example.com'],
                  'process_all_domains': false,
                  'created_at': '2021-09-15T16:31:34Z',
                  'begun_at': '2021-09-15T16:31:35Z',
                  'completed_at': '2021-09-15T16:31:52Z',
                },
              ],
            });
            return;
          }
          if (request.method == 'POST') {
            final body = await _readJson(request);
            expect(body['dry_run'], true);
            expect(body['domains'], ['https://example.com']);
            await _writeJson(request, 200, {
              'id': 'pc-2',
              'dry_run': true,
              'total_url_count': 0,
              'denied_url_count': 0,
              'domains': ['https://example.com'],
              'process_all_domains': false,
              'created_at': '2021-09-15T17:00:00Z',
              'begun_at': null,
              'completed_at': null,
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/process_crawls/pc-1') {
          expect(request.method, 'GET');
          await _writeJson(request, 200, {
            'id': 'pc-1',
            'dry_run': true,
            'total_url_count': 167,
            'denied_url_count': 92,
            'domains': ['https://example.com'],
            'process_all_domains': false,
            'created_at': '2021-09-15T16:31:34Z',
            'begun_at': '2021-09-15T16:31:35Z',
            'completed_at': '2021-09-15T16:31:52Z',
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/process_crawls/pc-1/denied_urls') {
          expect(request.method, 'GET');
          await _writeJson(request, 200, {
            'total_url_count': 167,
            'denied_url_count': 92,
            'sample_size': 2,
            'denied_urls_sample': [
              'https://example.com/private',
              'https://example.com/archive',
            ],
          });
          return;
        }

        if (request.uri.path == '/api/as/v1/engines/parks/crawler/domains') {
          if (request.method == 'GET') {
            final body = await _readJson(request);
            final page = body['page'] as Map<String, dynamic>?;
            expect(page?['current'], 1);
            expect(page?['size'], 10);

            await _writeJson(request, 200, {
              'meta': {
                'page': {
                  'current': 1,
                  'size': 10,
                  'total_pages': 1,
                  'total_results': 1,
                },
              },
              'results': [
                {
                  'id': 'dom-1',
                  'name': 'https://example.com',
                  'document_count': 12,
                  'deduplication_enabled': true,
                  'deduplication_fields': ['title', 'body'],
                  'available_deduplication_fields': ['title', 'body', 'url'],
                  'entry_points': [
                    {'id': 'ep-1', 'value': '/start'},
                  ],
                  'crawl_rules': [
                    {
                      'id': 'rule-1',
                      'order': 0,
                      'policy': 'allow',
                      'rule': 'begins',
                      'pattern': '/public',
                    },
                  ],
                  'default_crawl_rule': {
                    'id': 'default-1',
                    'order': 9999,
                    'policy': 'allow',
                    'rule': 'regex',
                    'pattern': '.*',
                  },
                  'sitemaps': [
                    {'id': 'sm-1', 'url': 'https://example.com/sitemap.xml'},
                  ],
                },
              ],
            });
            return;
          }

          if (request.method == 'POST') {
            final body = await _readJson(request);
            expect(body['name'], 'https://crawler.example.com');
            final auth = body['auth'] as Map<String, dynamic>?;
            expect(auth?['type'], 'basic');
            expect(auth?['username'], 'crawler-user');
            expect(auth?['password'], 'crawler-pass');

            await _writeJson(request, 200, {
              'id': 'dom-new',
              'name': 'https://crawler.example.com',
              'entry_points': const [],
              'crawl_rules': const [],
              'sitemaps': const [],
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/domains/dom-1') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'id': 'dom-1',
              'name': 'https://example.com',
              'entry_points': const [],
              'crawl_rules': const [],
              'sitemaps': const [],
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['name'], 'https://updated.example.com');
            final auth = body['auth'] as Map<String, dynamic>?;
            expect(auth?['type'], 'raw');
            expect(auth?['value'], 'Bearer crawler-token');
            await _writeJson(request, 200, {
              'id': 'dom-1',
              'name': 'https://updated.example.com',
              'auth': {'type': 'raw'},
              'entry_points': const [],
              'crawl_rules': const [],
              'sitemaps': const [],
            });
            return;
          }

          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/domains/dom-1/entry_points') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['value'], '/start-here');
          await _writeJson(request, 200, {
            'id': 'ep-new',
            'value': '/start-here',
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/domains/dom-1/entry_points/ep-1') {
          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['value'], '/updated');
            await _writeJson(request, 200, {'id': 'ep-1', 'value': '/updated'});
            return;
          }
          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/domains/dom-1/crawl_rules') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['policy'], 'deny');
          expect(body['rule'], 'contains');
          expect(body['pattern'], '/private');
          expect(body['order'], 2);
          await _writeJson(request, 200, {
            'id': 'cr-new',
            'order': 2,
            'policy': 'deny',
            'rule': 'contains',
            'pattern': '/private',
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/domains/dom-1/crawl_rules/cr-1') {
          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['policy'], 'allow');
            expect(body['rule'], 'begins');
            expect(body['pattern'], '/public');
            expect(body['order'], 0);
            await _writeJson(request, 200, {
              'id': 'cr-1',
              'order': 0,
              'policy': 'allow',
              'rule': 'begins',
              'pattern': '/public',
            });
            return;
          }
          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/domains/dom-1/sitemaps') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['url'], 'https://example.com/sitemap-new.xml');
          await _writeJson(request, 200, {
            'id': 'sm-new',
            'url': 'https://example.com/sitemap-new.xml',
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/domains/dom-1/sitemaps/sm-1') {
          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['url'], 'https://example.com/sitemap-updated.xml');
            await _writeJson(request, 200, {
              'id': 'sm-1',
              'url': 'https://example.com/sitemap-updated.xml',
            });
            return;
          }
          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        if (request.uri.path == '/api/as/v1/crawler/validate_url') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['url'], 'https://example.com');
          expect(body['checks'], ['dns', 'url']);
          await _writeJson(request, 200, {
            'url': 'https://example.com',
            'normalized_url': 'https://example.com/',
            'valid': true,
            'results': [
              {
                'result': 'ok',
                'name': 'url',
                'details': const {},
                'comment': 'URL structure looks valid',
              },
            ],
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/validate_url') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['url'], 'https://example.com/docs');
          expect(body['checks'], ['url', 'domain_access']);
          await _writeJson(request, 200, {
            'url': 'https://example.com/docs',
            'normalized_url': 'https://example.com/docs',
            'valid': true,
            'results': [
              {
                'result': 'ok',
                'name': 'url',
                'details': const {},
                'comment': 'URL structure looks valid',
              },
              {
                'result': 'ok',
                'name': 'domain_access',
                'details': {'domain': 'https://example.com'},
                'comment': 'The URL matches one of the domains',
              },
            ],
          });
          return;
        }

        if (request.uri.path ==
            '/api/as/v1/engines/parks/crawler/extract_url') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['url'], 'https://example.com/docs');
          await _writeJson(request, 200, {
            'url': 'https://example.com/docs',
            'normalized_url': 'https://example.com/docs',
            'results': {
              'download': {'status_code': 200},
              'extraction': {
                'content_hash': 'hash-1',
                'content_fields': {'title': 'Documentation'},
              },
              'indexing': {'document_id': null, 'document_fields': null},
              'deduplication': {'urls_count': 0, 'urls_sample': const []},
            },
          });
          return;
        }

        if (request.uri.path == '/api/as/v1/engines/parks/crawler/trace_url') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['url'], 'https://example.com/docs');
          await _writeJson(request, 200, {
            'url': 'https://example.com/docs',
            'normalized_url': 'https://example.com/docs',
            'crawl_requests': [
              {
                'crawl_request': {'id': 'cr-1', 'status': 'success'},
                'found': true,
                'discover': const [],
                'fetch': {'outcome': 'success'},
                'output': {'outcome': 'success'},
              },
            ],
          });
          return;
        }

        if (request.uri.path == '/api/as/v1/crawler/user_agent') {
          expect(request.method, 'GET');
          await _writeJson(request, 200, {
            'user_agent': 'Elastic Crawler (0.0.1)',
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final config = await engine.getCrawlerConfiguration();
      final active = await engine.getActiveCrawlRequest();
      final canceled = await engine.cancelActiveCrawlRequest();
      final crawls = await engine.listCrawlRequests(
        page: const ElasticPageRequest(current: 1, size: 10),
      );
      final created = await engine.createCrawlRequest();
      final partial = await engine.createPartialCrawlRequest(
        const ElasticCrawlerPartialCrawlRequest(
          maxCrawlDepth: 2,
          domainAllowlist: ['https://example.com'],
          seedUrls: ['https://example.com/start'],
          sitemapUrls: ['https://example.com/sitemap.xml'],
          sitemapDiscoveryDisabled: true,
        ),
      );
      final crawlDetail = await engine.getCrawlRequest('cr-1');
      final schedule = await engine.getCrawlSchedule();
      final updatedSchedule = await engine.updateCrawlSchedule(
        const ElasticCrawlerCrawlSchedule(
          frequency: 12,
          unit: ElasticCrawlerCrawlScheduleUnit.hour,
        ),
      );
      final deletedSchedule = await engine.deleteCrawlSchedule();
      final processCrawls = await engine.listProcessCrawls(
        page: const ElasticPageRequest(current: 1, size: 10),
      );
      final processCrawl = await engine.getProcessCrawl('pc-1');
      final deniedUrls = await engine.getProcessCrawlDeniedUrls('pc-1');
      final createdProcessCrawl = await engine.createProcessCrawl(
        request: const ElasticCrawlerProcessCrawlRequest(
          dryRun: true,
          domains: ['https://example.com'],
        ),
      );
      final domains = await engine.listCrawlerDomains(
        page: const ElasticPageRequest(current: 1, size: 10),
      );
      final createdDomain = await engine.createCrawlerDomain(
        const ElasticCrawlerDomainCreateRequest(
          name: 'https://crawler.example.com',
          auth: ElasticCrawlerDomainAuthRequest.basic(
            username: 'crawler-user',
            password: 'crawler-pass',
          ),
        ),
      );
      final domain = await engine.getCrawlerDomain('dom-1');
      final updatedDomain = await engine.updateCrawlerDomain(
        'dom-1',
        const ElasticCrawlerDomainUpdateRequest(
          name: 'https://updated.example.com',
          auth: ElasticCrawlerDomainAuthRequest.raw(
            value: 'Bearer crawler-token',
          ),
        ),
      );
      final deletedDomain = await engine.deleteCrawlerDomain('dom-1');
      final createdEntryPoint = await engine.createCrawlerEntryPoint(
        'dom-1',
        const ElasticCrawlerEntryPointRequest(value: '/start-here'),
      );
      final updatedEntryPoint = await engine.updateCrawlerEntryPoint(
        'dom-1',
        'ep-1',
        const ElasticCrawlerEntryPointRequest(value: '/updated'),
      );
      final deletedEntryPoint = await engine.deleteCrawlerEntryPoint(
        'dom-1',
        'ep-1',
      );
      final createdCrawlRule = await engine.createCrawlerCrawlRule(
        'dom-1',
        const ElasticCrawlerCrawlRuleRequest(
          policy: ElasticCrawlerCrawlRulePolicy.deny,
          rule: ElasticCrawlerCrawlRuleType.contains,
          pattern: '/private',
          order: 2,
        ),
      );
      final updatedCrawlRule = await engine.updateCrawlerCrawlRule(
        'dom-1',
        'cr-1',
        const ElasticCrawlerCrawlRuleRequest(
          policy: ElasticCrawlerCrawlRulePolicy.allow,
          rule: ElasticCrawlerCrawlRuleType.begins,
          pattern: '/public',
          order: 0,
        ),
      );
      final deletedCrawlRule = await engine.deleteCrawlerCrawlRule(
        'dom-1',
        'cr-1',
      );
      final createdSitemap = await engine.createCrawlerSitemap(
        'dom-1',
        const ElasticCrawlerSitemapRequest(
          url: 'https://example.com/sitemap-new.xml',
        ),
      );
      final updatedSitemap = await engine.updateCrawlerSitemap(
        'dom-1',
        'sm-1',
        const ElasticCrawlerSitemapRequest(
          url: 'https://example.com/sitemap-updated.xml',
        ),
      );
      final deletedSitemap = await engine.deleteCrawlerSitemap('dom-1', 'sm-1');
      final domainValidation = await service.validateCrawlerDomain(
        const ElasticCrawlerUrlValidationRequest(
          url: 'https://example.com',
          checks: ['dns', 'url'],
        ),
      );
      final urlValidation = await engine.validateCrawlerUrl(
        const ElasticCrawlerUrlValidationRequest(
          url: 'https://example.com/docs',
          checks: ['url', 'domain_access'],
        ),
      );
      final extraction = await engine.extractCrawlerUrl(
        const ElasticCrawlerUrlRequest(url: 'https://example.com/docs'),
      );
      final trace = await engine.traceCrawlerUrl(
        const ElasticCrawlerUrlRequest(url: 'https://example.com/docs'),
      );
      final crawlerUserAgent = await service.getCrawlerUserAgent();

      expect(config.domains, hasLength(1));
      expect(config.domains.first['name'], 'https://example.com');
      expect(active.status, 'running');
      expect(canceled.status, 'canceling');
      expect(crawls.meta.page.totalResults, 1);
      expect(crawls.results.first.id, 'cr-1');
      expect(created.type, 'full');
      expect(partial.type, 'partial');
      expect(crawlDetail.completedAt, '2021-02-01T10:30:00Z');
      expect(schedule.frequency, 2);
      expect(schedule.unit, ElasticCrawlerCrawlScheduleUnit.week);
      expect(updatedSchedule.frequency, 12);
      expect(updatedSchedule.unit, ElasticCrawlerCrawlScheduleUnit.hour);
      expect(deletedSchedule, isTrue);
      expect(processCrawls.results, hasLength(1));
      expect(processCrawl.deniedUrlCount, 92);
      expect(deniedUrls.deniedUrlsSample, hasLength(2));
      expect(createdProcessCrawl.id, 'pc-2');
      expect(domains.results, hasLength(1));
      expect(domains.results.first.entryPoints, hasLength(1));
      expect(createdDomain.id, 'dom-new');
      expect(domain.name, 'https://example.com');
      expect(updatedDomain.name, 'https://updated.example.com');
      expect(updatedDomain.auth?['type'], 'raw');
      expect(deletedDomain, isTrue);
      expect(createdEntryPoint.id, 'ep-new');
      expect(updatedEntryPoint.value, '/updated');
      expect(deletedEntryPoint, isTrue);
      expect(createdCrawlRule.id, 'cr-new');
      expect(updatedCrawlRule.id, 'cr-1');
      expect(deletedCrawlRule, isTrue);
      expect(createdSitemap.id, 'sm-new');
      expect(updatedSitemap.url, 'https://example.com/sitemap-updated.xml');
      expect(deletedSitemap, isTrue);
      expect(domainValidation.valid, isTrue);
      expect(domainValidation.results.first.name, 'url');
      expect(urlValidation.results, hasLength(2));
      expect(urlValidation.results[1].name, 'domain_access');
      final downloadResult = extraction.results['download'] as Map;
      expect(downloadResult['status_code'], 200);
      expect(trace.crawlRequests, hasLength(1));
      expect(trace.crawlRequests.first['found'], isTrue);
      expect(crawlerUserAgent.userAgent, 'Elastic Crawler (0.0.1)');
    });

    test('engine info success parses payload', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks') {
          expect(request.method, 'GET');
          await _writeJson(request, 200, {
            'name': 'parks',
            'type': 'default',
            'language': 'en',
            'document_count': '42',
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final info = await engine.info();

      expect(info.name, 'parks');
      expect(info.type, 'default');
      expect(info.language, 'en');
      expect(info.documentCount, 42);
    });

    test('create engine success parses payload with shard override', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['name'], 'mountains');
          expect(body['language'], 'fr');
          expect(body['type'], isNull);
          final settings =
              body['index_create_settings_override'] as Map<String, dynamic>?;
          expect(settings?['number_of_shards'], 5);

          await _writeJson(request, 200, {
            'name': 'mountains',
            'type': 'default',
            'language': 'fr',
            'document_count': 0,
            'index_create_settings_override': {'number_of_shards': 5},
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final created = await service.createEngine(
        name: 'mountains',
        language: 'fr',
        numberOfShards: 5,
      );

      expect(created.name, 'mountains');
      expect(created.type, 'default');
      expect(created.language, 'fr');
      expect(created.numberOfShards, 5);
    });

    test('create meta engine infers type from source engines', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines') {
          expect(request.method, 'POST');
          final body = await _readJson(request);
          expect(body['name'], 'global-parks');
          expect(body['type'], 'meta');
          expect(body['source_engines'], orderedEquals(['parks', 'trails']));
          expect(body['language'], isNull);
          expect(body['index_create_settings_override'], isNull);

          await _writeJson(request, 200, {
            'name': 'global-parks',
            'type': 'meta',
            'source_engines': ['parks', 'trails'],
            'document_count': 12,
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final created = await service.createEngine(
        name: 'global-parks',
        sourceEngines: const ['parks', 'trails'],
      );

      expect(created.name, 'global-parks');
      expect(created.type, 'meta');
      expect(created.sourceEngines, orderedEquals(['parks', 'trails']));
      expect(created.documentCount, 12);
    });

    test('delete engine success returns deleted flag', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks') {
          expect(request.method, 'DELETE');
          await _writeJson(request, 200, {'deleted': true});
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final deleted = await engine.delete();
      expect(deleted, isTrue);
    });

    test('meta engine source endpoints parse payload', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/source_engines') {
          final body = await _readJson(request);
          expect(body, orderedEquals(['east', 'west']));

          if (request.method == 'POST') {
            await _writeJson(request, 200, {
              'name': 'parks',
              'type': 'meta',
              'source_engines': ['north', 'east', 'west'],
            });
            return;
          }

          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {
              'name': 'parks',
              'type': 'meta',
              'source_engines': ['north'],
            });
            return;
          }
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final added = await engine.addSourceEngines(const ['east', 'west']);
      final removed = await engine.removeSourceEngines(const ['east', 'west']);

      expect(added.type, 'meta');
      expect(added.sourceEngines, orderedEquals(['north', 'east', 'west']));
      expect(removed.sourceEngines, orderedEquals(['north']));
    });

    test('engine APIs validate create payload constraints', () {
      expect(
        () => service.createEngine(name: 'InvalidName'),
        throwsArgumentError,
      );
      expect(() => service.createEngine(name: 'new'), throwsArgumentError);
      expect(
        () => service.createEngine(name: 'parks', language: '   '),
        throwsArgumentError,
      );
      expect(
        () => service.createEngine(name: 'parks', numberOfShards: 0),
        throwsRangeError,
      );
      expect(
        () => service.createEngine(
          name: 'parks',
          type: ElasticEngineType.defaultEngine,
          sourceEngines: const ['source-a'],
        ),
        throwsArgumentError,
      );
      expect(
        () => service.createEngine(
          name: 'parks',
          type: ElasticEngineType.meta,
          language: 'en',
        ),
        throwsArgumentError,
      );
      expect(
        () => service.createEngine(
          name: 'parks',
          type: ElasticEngineType.meta,
          numberOfShards: 2,
        ),
        throwsArgumentError,
      );
      expect(() => engine.addSourceEngines(const []), throwsArgumentError);
      expect(
        () => engine.removeSourceEngines(const ['Bad Name']),
        throwsArgumentError,
      );
    });

    test('synonyms list success parses paginated response', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/synonyms') {
          expect(request.method, 'GET');
          final body = await _readJson(request);
          final page = body['page'] as Map<String, dynamic>?;
          expect(page?['current'], 2);
          expect(page?['size'], 20);

          await _writeJson(request, 200, {
            'meta': {
              'page': {
                'current': 2,
                'size': 20,
                'total_pages': 3,
                'total_results': 42,
              },
            },
            'results': [
              {
                'id': 'syn-1',
                'synonyms': ['park', 'trail'],
              },
            ],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.listSynonyms(current: 2, size: 20);
      expect(response.meta.page.current, 2);
      expect(response.meta.page.size, 20);
      expect(response.meta.page.totalPages, 3);
      expect(response.meta.page.totalResults, 42);
      expect(response.results, hasLength(1));
      expect(response.results.first.id, 'syn-1');
      expect(response.results.first.synonyms, orderedEquals(['park', 'trail']));
    });

    test('synonyms CRUD endpoints parse payloads', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/synonyms') {
          if (request.method == 'POST') {
            final body = await _readJson(request);
            expect(body['synonyms'], orderedEquals(['park', 'trail']));
            await _writeJson(request, 200, {
              'id': 'syn-new',
              'synonyms': ['park', 'trail'],
            });
            return;
          }
        }

        if (request.uri.path == '/api/as/v1/engines/parks/synonyms/syn-1') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'id': 'syn-1',
              'synonyms': ['hike', 'trek'],
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['synonyms'], orderedEquals(['road', 'route']));
            await _writeJson(request, 200, {
              'id': 'syn-1',
              'synonyms': ['road', 'route'],
            });
            return;
          }

          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final created = await engine.createSynonymSet(['park', 'trail']);
      final fetched = await engine.getSynonymSet('syn-1');
      final updated = await engine.updateSynonymSet('syn-1', ['road', 'route']);
      final deleted = await engine.deleteSynonymSet('syn-1');

      expect(created.id, 'syn-new');
      expect(created.synonyms, orderedEquals(['park', 'trail']));
      expect(fetched.id, 'syn-1');
      expect(fetched.synonyms, orderedEquals(['hike', 'trek']));
      expect(updated.id, 'syn-1');
      expect(updated.synonyms, orderedEquals(['road', 'route']));
      expect(deleted, isTrue);
    });

    test('synonyms API validates payload and pagination', () {
      expect(() => engine.listSynonyms(current: 0), throwsRangeError);
      expect(() => engine.listSynonyms(size: 0), throwsRangeError);
      expect(() => engine.listSynonyms(size: 26), throwsRangeError);

      expect(() => engine.getSynonymSet('  '), throwsArgumentError);
      expect(() => engine.deleteSynonymSet('  '), throwsArgumentError);
      expect(() => engine.createSynonymSet(['park']), throwsRangeError);
      expect(
        () => engine.createSynonymSet(List<String>.generate(33, (i) => 's$i')),
        throwsRangeError,
      );
      expect(
        () => engine.createSynonymSet(['park', 'Park']),
        throwsArgumentError,
      );
      expect(
        () => engine.updateSynonymSet('syn-1', ['park', '']),
        throwsArgumentError,
      );
    });

    test('curations list success parses paginated response', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/curations') {
          expect(request.method, 'GET');
          final body = await _readJson(request);
          final page = body['page'] as Map<String, dynamic>?;
          expect(page?['current'], 1);
          expect(page?['size'], 25);

          await _writeJson(request, 200, {
            'meta': {
              'page': {
                'current': 1,
                'size': 25,
                'total_pages': 1,
                'total_results': 1,
              },
            },
            'results': [
              {
                'id': 'cur-1',
                'queries': ['mountains'],
                'promoted': ['park_zion'],
                'hidden': ['park_lake-clark'],
                'suggestion': {
                  'status': 'pending',
                  'operation': 'update',
                  'promoted': ['park_yellowstone'],
                  'created_at': '2021-11-16T09:07:38Z',
                  'updated_at': '2021-11-16T11:35:39Z',
                },
              },
            ],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.listCurations();
      expect(response.meta.page.current, 1);
      expect(response.results, hasLength(1));
      final curation = response.results.first;
      expect(curation.id, 'cur-1');
      expect(curation.queries, orderedEquals(['mountains']));
      expect(curation.promoted, orderedEquals(['park_zion']));
      expect(curation.hidden, orderedEquals(['park_lake-clark']));
      expect(curation.suggestion?.status, 'pending');
      expect(curation.suggestion?.operation, 'update');
      expect(
        curation.suggestion?.promoted,
        orderedEquals(['park_yellowstone']),
      );
    });

    test('curations CRUD endpoints parse payloads', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/curations') {
          if (request.method == 'POST') {
            final body = await _readJson(request);
            expect(body['queries'], orderedEquals(['winter coat']));
            expect(body['promoted'], orderedEquals(['coat-1']));
            expect(body['hidden'], orderedEquals(['hat-1']));
            await _writeJson(request, 200, {'id': 'cur-new'});
            return;
          }
        }

        if (request.uri.path == '/api/as/v1/engines/parks/curations/cur-1') {
          if (request.method == 'GET') {
            await _writeJson(request, 200, {
              'id': 'cur-1',
              'queries': ['hiking'],
              'promoted': ['park_shenandoah'],
              'hidden': [],
            });
            return;
          }

          if (request.method == 'PUT') {
            final body = await _readJson(request);
            expect(body['queries'], orderedEquals(['hiking', 'mountains']));
            expect(body['promoted'], orderedEquals(['park_olympic']));
            expect(body.containsKey('hidden'), isFalse);
            await _writeJson(request, 200, {'id': 'cur-1'});
            return;
          }

          if (request.method == 'DELETE') {
            await _writeJson(request, 200, {'deleted': true});
            return;
          }
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final created = await engine.createCuration(
        queries: const ['winter coat'],
        promoted: const ['coat-1'],
        hidden: const ['hat-1'],
      );
      final fetched = await engine.getCuration('cur-1');
      final updated = await engine.updateCuration(
        'cur-1',
        queries: const ['hiking', 'mountains'],
        promoted: const ['park_olympic'],
      );
      final deleted = await engine.deleteCuration('cur-1');

      expect(created.id, 'cur-new');
      expect(fetched.id, 'cur-1');
      expect(fetched.queries, orderedEquals(['hiking']));
      expect(updated.id, 'cur-1');
      expect(deleted, isTrue);
    });

    test('curations API validates payload and pagination', () {
      expect(() => engine.listCurations(current: 0), throwsRangeError);
      expect(() => engine.listCurations(size: 0), throwsRangeError);
      expect(() => engine.listCurations(size: 26), throwsRangeError);

      expect(
        () => engine.createCuration(
          queries: const ['query'],
          promoted: const [],
          hidden: const [],
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.createCuration(queries: const []),
        throwsArgumentError,
      );
      expect(
        () => engine.createCuration(
          queries: const ['query', 'Query'],
          promoted: const ['doc-1'],
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.createCuration(
          queries: const ['query'],
          promoted: const [''],
        ),
        throwsArgumentError,
      );
      expect(() => engine.getCuration(' '), throwsArgumentError);
      expect(() => engine.deleteCuration(' '), throwsArgumentError);
      expect(() => engine.updateCuration('cur-1'), throwsArgumentError);
      expect(
        () => engine.updateCuration(' ', promoted: const ['doc-1']),
        throwsArgumentError,
      );
      expect(
        () => engine.updateCuration('cur-1', queries: const []),
        throwsArgumentError,
      );
      expect(
        () => engine.updateCuration('cur-1', hidden: const ['']),
        throwsArgumentError,
      );
    });

    test('multi search validates query count bounds', () {
      expect(() => engine.multiSearch([]), throwsArgumentError);
      expect(
        () => engine.multiSearch(
          List<ElasticQuery>.generate(11, (i) => engine.query('q$i')),
        ),
        throwsRangeError,
      );
    });

    test('multi search validates query engine consistency', () {
      final otherService = ElasticAppSearch(
        endPoint: 'http://${server.address.address}:${server.port}',
        searchKey: 'search-key',
      );
      final otherEngine = otherService.engine('other');

      expect(
        () => engine.multiSearch([otherEngine.query('mountains')]),
        throwsArgumentError,
      );
    });

    test('documents list success parses payload with pagination', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents/list')) {
          expect(request.method, 'GET');
          final body = await _readJson(request);
          final page = body['page'] as Map<String, dynamic>?;
          expect(page?['current'], 2);
          expect(page?['size'], 15);

          await _writeJson(request, 200, {
            'meta': {
              'page': {
                'current': 2,
                'size': 15,
                'total_pages': 4,
                'total_results': 59,
              },
            },
            'results': [
              {'id': 'park_yosemite', 'title': 'Yosemite'},
            ],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      final response = await engine.listDocuments(current: 2, size: 15);

      expect(response.meta.page.current, 2);
      expect(response.meta.page.size, 15);
      expect(response.meta.page.totalPages, 4);
      expect(response.meta.page.totalResults, 59);
      expect(response.results, hasLength(1));
      expect(response.results.first['id'], 'park_yosemite');
      expect(response.results.first['title'], 'Yosemite');
    });

    test('documents list validates pagination bounds', () {
      expect(() => engine.listDocuments(current: 0), throwsRangeError);
      expect(() => engine.listDocuments(size: 0), throwsRangeError);
      expect(() => engine.listDocuments(size: 101), throwsRangeError);
    });

    test('documents APIs validate request bounds', () {
      expect(() => engine.indexDocuments([]), throwsArgumentError);
      expect(
        () => engine.indexDocuments(
          List.generate(101, (i) => {'id': 'doc-$i', 'title': 'Doc $i'}),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.updateDocuments([
          {'title': 'Missing id'},
        ]),
        throwsArgumentError,
      );
      expect(() => engine.getDocuments([]), throwsArgumentError);
      expect(() => engine.getDocuments(['']), throwsArgumentError);
      expect(
        () =>
            engine.deleteDocuments(List<String>.generate(101, (i) => 'doc-$i')),
        throwsRangeError,
      );
    });

    test('schema API validates field names and payload', () {
      expect(() => engine.updateSchema({}), throwsArgumentError);
      expect(
        () => engine.updateSchema({'Title': ElasticSchemaFieldType.text}),
        throwsArgumentError,
      );
      expect(
        () => engine.updateSchema({'_title': ElasticSchemaFieldType.text}),
        throwsArgumentError,
      );
      expect(
        () => engine.updateSchema({'engine_id': ElasticSchemaFieldType.text}),
        throwsArgumentError,
      );
      expect(
        () => engine.updateSchema({'123': ElasticSchemaFieldType.number}),
        throwsArgumentError,
      );
      expect(
        () => engine.updateSchema({'bad-name': ElasticSchemaFieldType.text}),
        throwsArgumentError,
      );
      expect(
        () => engine.updateSchema({'has space': ElasticSchemaFieldType.text}),
        throwsArgumentError,
      );
      expect(
        () => engine.updateSchema({'x' * 65: ElasticSchemaFieldType.text}),
        throwsRangeError,
      );
      expect(
        () => engine.updateSchema(
          Map<String, ElasticSchemaFieldType>.fromEntries(
            List.generate(
              65,
              (i) => MapEntry('field_$i', ElasticSchemaFieldType.text),
            ),
          ),
        ),
        throwsRangeError,
      );
    });

    test('search settings API validates payload', () {
      expect(() => engine.updateSearchSettings(), throwsArgumentError);
      expect(() => engine.updateSearchSettings(precision: 0), throwsRangeError);
      expect(
        () => engine.updateSearchSettings(precision: 12),
        throwsRangeError,
      );
      expect(
        () => engine.updateSearchSettings(
          searchFields: const {
            ' ': {'weight': 1},
          },
        ),
        throwsArgumentError,
      );
    });

    test('credentials API validates payload and pagination', () {
      expect(
        () =>
            service.listCredentials(page: const ElasticPageRequest(current: 0)),
        throwsRangeError,
      );
      expect(
        () => service.listCredentials(page: const ElasticPageRequest(size: 0)),
        throwsRangeError,
      );
      expect(
        () => service.listCredentials(page: const ElasticPageRequest(size: 26)),
        throwsRangeError,
      );

      expect(() => service.getCredential(' '), throwsArgumentError);
      expect(() => service.deleteCredential(' '), throwsArgumentError);
      expect(
        () => service.createCredential(
          name: 'private-key',
          type: ElasticCredentialType.privateKey,
          read: true,
        ),
        throwsArgumentError,
      );
      expect(
        () => service.createCredential(
          name: 'admin-key',
          type: ElasticCredentialType.admin,
          accessAllEngines: true,
        ),
        throwsArgumentError,
      );
      expect(
        () => service.createCredential(
          name: 'search-key',
          type: ElasticCredentialType.search,
          accessAllEngines: false,
        ),
        throwsArgumentError,
      );
      expect(() => service.updateCredential('search-key'), throwsArgumentError);
      expect(
        () => service.updateCredential('search-key', read: true),
        throwsArgumentError,
      );
      expect(
        () => service.updateCredential('search-key', accessAllEngines: false),
        throwsArgumentError,
      );
    });

    test('api logs API validates filters and pagination', () {
      expect(
        () => engine.getApiLogs(
          const ElasticApiLogsRequest(
            filters: ElasticApiLogsFilter(
              date: ElasticApiLogsDateFilter(from: '', to: 'x'),
            ),
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.getApiLogs(
          const ElasticApiLogsRequest(
            filters: ElasticApiLogsFilter(
              date: ElasticApiLogsDateFilter(from: 'x', to: ''),
            ),
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.getApiLogs(
          const ElasticApiLogsRequest(
            filters: ElasticApiLogsFilter(
              date: ElasticApiLogsDateFilter(from: 'x', to: 'y'),
              status: 99,
            ),
          ),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.queryApiLogs(
          const ElasticApiLogsRequest(
            filters: ElasticApiLogsFilter(
              date: ElasticApiLogsDateFilter(from: 'x', to: 'y'),
            ),
            query: ' ',
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.queryApiLogs(
          const ElasticApiLogsRequest(
            filters: ElasticApiLogsFilter(
              date: ElasticApiLogsDateFilter(from: 'x', to: 'y'),
            ),
            page: ElasticPageRequest(current: 0),
          ),
        ),
        throwsRangeError,
      );
    });

    test('log settings API validates payload', () {
      expect(() => service.updateLogSettings(), throwsArgumentError);
      expect(() => service.patchLogSettings(), throwsArgumentError);
    });

    test('adaptive relevance APIs validate payload', () {
      expect(
        () => engine.listAdaptiveRelevanceSuggestionsByQuery(' '),
        throwsArgumentError,
      );
      expect(
        () => engine.queryAdaptiveRelevanceSuggestionsByQuery(
          '',
          const ElasticAdaptiveRelevanceSuggestionsRequest(),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.updateAdaptiveRelevanceSuggestions(const []),
        throwsArgumentError,
      );
      expect(
        () => engine.updateAdaptiveRelevanceSuggestions([
          const ElasticAdaptiveRelevanceSuggestionUpdate(
            query: '',
            type: ElasticAdaptiveRelevanceSuggestionType.curation,
            status: ElasticAdaptiveRelevanceSuggestionStatus.applied,
          ),
        ]),
        throwsArgumentError,
      );
      expect(
        () => engine.updateAdaptiveRelevanceSettings(
          const ElasticAdaptiveRelevanceSettings(
            curation: ElasticAdaptiveRelevanceCurationSettings(),
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.updateAdaptiveRelevanceSettings(
          const ElasticAdaptiveRelevanceSettings(
            curation: ElasticAdaptiveRelevanceCurationSettings(timeframe: 0),
          ),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.updateAdaptiveRelevanceSettings(
          const ElasticAdaptiveRelevanceSettings(
            curation: ElasticAdaptiveRelevanceCurationSettings(
              scheduleFrequency: 0,
            ),
          ),
        ),
        throwsRangeError,
      );
    });

    test('crawler APIs validate payload and pagination', () {
      expect(
        () => engine.listCrawlRequests(
          page: const ElasticPageRequest(current: 0, size: 10),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.listCrawlRequests(
          page: const ElasticPageRequest(current: 1, size: 101),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.createPartialCrawlRequest(
          const ElasticCrawlerPartialCrawlRequest(maxCrawlDepth: 0),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.createPartialCrawlRequest(
          const ElasticCrawlerPartialCrawlRequest(domainAllowlist: ['']),
        ),
        throwsArgumentError,
      );
      expect(() => engine.getCrawlRequest(' '), throwsArgumentError);
      expect(
        () => engine.updateCrawlSchedule(
          const ElasticCrawlerCrawlSchedule(
            frequency: 0,
            unit: ElasticCrawlerCrawlScheduleUnit.day,
          ),
        ),
        throwsRangeError,
      );
      expect(() => engine.getProcessCrawl(' '), throwsArgumentError);
      expect(() => engine.getProcessCrawlDeniedUrls(' '), throwsArgumentError);
      expect(
        () => engine.createProcessCrawl(
          request: const ElasticCrawlerProcessCrawlRequest(domains: ['']),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.listCrawlerDomains(
          page: const ElasticPageRequest(current: 1, size: 101),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.createCrawlerDomain(
          const ElasticCrawlerDomainCreateRequest(name: ' '),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.createCrawlerDomain(
          const ElasticCrawlerDomainCreateRequest(
            name: 'https://example.com',
            auth: ElasticCrawlerDomainAuthRequest.basic(
              username: '',
              password: 'x',
            ),
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.updateCrawlerDomain(
          'dom-1',
          const ElasticCrawlerDomainUpdateRequest(),
        ),
        throwsArgumentError,
      );
      expect(() => engine.getCrawlerDomain(' '), throwsArgumentError);
      expect(() => engine.deleteCrawlerDomain(' '), throwsArgumentError);
      expect(
        () => engine.createCrawlerEntryPoint(
          'dom-1',
          const ElasticCrawlerEntryPointRequest(value: ' '),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.updateCrawlerEntryPoint(
          ' ',
          'ep-1',
          const ElasticCrawlerEntryPointRequest(value: '/start'),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.deleteCrawlerEntryPoint('dom-1', ' '),
        throwsArgumentError,
      );
      expect(
        () => engine.createCrawlerCrawlRule(
          'dom-1',
          const ElasticCrawlerCrawlRuleRequest(
            policy: ElasticCrawlerCrawlRulePolicy.allow,
            rule: ElasticCrawlerCrawlRuleType.begins,
            pattern: '',
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.updateCrawlerCrawlRule(
          'dom-1',
          'cr-1',
          const ElasticCrawlerCrawlRuleRequest(
            policy: ElasticCrawlerCrawlRulePolicy.allow,
            rule: ElasticCrawlerCrawlRuleType.begins,
            pattern: '/ok',
            order: -1,
          ),
        ),
        throwsRangeError,
      );
      expect(
        () => engine.deleteCrawlerCrawlRule('dom-1', ' '),
        throwsArgumentError,
      );
      expect(
        () => engine.createCrawlerSitemap(
          'dom-1',
          const ElasticCrawlerSitemapRequest(url: ''),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.updateCrawlerSitemap(
          'dom-1',
          ' ',
          const ElasticCrawlerSitemapRequest(url: 'https://example.com/a.xml'),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.deleteCrawlerSitemap(' ', 'sm-1'),
        throwsArgumentError,
      );
      expect(
        () => service.validateCrawlerDomain(
          const ElasticCrawlerUrlValidationRequest(url: ' '),
        ),
        throwsArgumentError,
      );
      expect(
        () => service.validateCrawlerDomain(
          const ElasticCrawlerUrlValidationRequest(
            url: 'https://example.com',
            checks: [],
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.validateCrawlerUrl(
          const ElasticCrawlerUrlValidationRequest(
            url: 'https://example.com/docs',
            checks: [''],
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.extractCrawlerUrl(const ElasticCrawlerUrlRequest(url: '')),
        throwsArgumentError,
      );
      expect(
        () => engine.traceCrawlerUrl(const ElasticCrawlerUrlRequest(url: ' ')),
        throwsArgumentError,
      );
    });

    test('documents list errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents/list')) {
          await _writeJson(request, 403, {
            'errors': ['Invalid key for documents access'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.listDocuments(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.documentsList)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 403)
              .having(
                (e) => e.message,
                'message',
                'Invalid key for documents access',
              ),
        ),
      );
    });

    test('schema get HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/schema') && request.method == 'GET') {
          await _writeJson(request, 401, {
            'errors': ['Schema access unauthorized'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.getSchema(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.schemaGet)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having(
                (e) => e.message,
                'message',
                'Schema access unauthorized',
              ),
        ),
      );
    });

    test('schema update HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/schema') && request.method == 'POST') {
          await _writeJson(request, 400, {
            'errors': ['Schema payload invalid'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.updateSchema({'title': ElasticSchemaFieldType.text}),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.schemaUpdate)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 400)
              .having((e) => e.message, 'message', 'Schema payload invalid'),
        ),
      );
    });

    test('index documents HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'POST') {
          await _writeJson(request, 422, {
            'errors': ['Documents payload invalid'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.indexDocuments([
          {'id': 'park_zion', 'title': 'Zion'},
        ]),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.documentsCreateOrUpdate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 422)
              .having((e) => e.message, 'message', 'Documents payload invalid'),
        ),
      );
    });

    test('partial update documents HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'PATCH') {
          await _writeJson(request, 400, {
            'errors': ['Partial update payload invalid'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.updateDocuments([
          {'id': 'park_zion', 'title': 'New title'},
        ]),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.documentsPartialUpdate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 400)
              .having(
                (e) => e.message,
                'message',
                'Partial update payload invalid',
              ),
        ),
      );
    });

    test('get documents HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'GET') {
          await _writeJson(request, 403, {
            'errors': ['Get documents forbidden'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.getDocuments(['park_zion']),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.documentsGet)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 403)
              .having((e) => e.message, 'message', 'Get documents forbidden'),
        ),
      );
    });

    test('delete documents HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/documents') &&
            request.method == 'DELETE') {
          await _writeJson(request, 500, {
            'errors': ['Delete documents failed'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.deleteDocuments(['park_zion']),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.documentsDelete,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 500)
              .having((e) => e.message, 'message', 'Delete documents failed'),
        ),
      );
    });

    test('clickthrough validates required fields and tags', () {
      expect(
        () => engine.clickthrough(
          const ElasticClickthroughRequest(query: '', documentId: 'doc-1'),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.clickthrough(
          const ElasticClickthroughRequest(query: 'everglade', documentId: ''),
        ),
        throwsArgumentError,
      );
      expect(
        () => engine.clickthrough(
          ElasticClickthroughRequest(
            query: 'everglade',
            documentId: 'doc-1',
            tags: List.generate(17, (i) => 'tag-$i'),
          ),
        ),
        throwsRangeError,
      );
    });

    test('analytics requests validate filters and pagination', () {
      expect(
        () => engine.analyticsQueries(
          request: ElasticAnalyticsQueriesRequest(
            page: const ElasticPageRequest(current: 0, size: 10),
          ),
        ),
        throwsRangeError,
      );

      expect(
        () => engine.analyticsClicks(
          request: const ElasticAnalyticsClicksRequest(
            query: '   ',
            page: ElasticPageRequest(current: 1, size: 0),
          ),
        ),
        throwsArgumentError,
      );

      expect(
        () => engine.analyticsCounts(
          request: const ElasticAnalyticsCountsRequest(
            filters: ElasticAnalyticsFilter(tag: ['']),
          ),
        ),
        throwsArgumentError,
      );
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
      'clickthrough HTTP errors are mapped with status and message',
      () async {
        handler = (request) async {
          if (request.uri.path.endsWith('/click')) {
            await _writeJson(request, 400, {
              'errors': ['Click payload invalid'],
            });
            return;
          }

          await _writeJson(request, 404, {
            'errors': ['Unexpected path: ${request.uri.path}'],
          });
        };

        await expectLater(
          engine.clickthrough(
            const ElasticClickthroughRequest(
              query: 'everglade',
              documentId: 'park_zion',
            ),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.click)
                .having((e) => e.engine, 'engine', 'parks')
                .having((e) => e.statusCode, 'statusCode', 400)
                .having((e) => e.message, 'message', 'Click payload invalid'),
          ),
        );
      },
    );

    test('analytics queries HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/analytics/queries')) {
          await _writeJson(request, 401, {
            'errors': ['Unauthorized analytics access'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.analyticsQueries(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.analyticsQueries,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having(
                (e) => e.message,
                'message',
                'Unauthorized analytics access',
              ),
        ),
      );
    });

    test('analytics clicks HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/analytics/clicks')) {
          await _writeJson(request, 500, {
            'errors': ['Analytics clicks failed'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.analyticsClicks(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.analyticsClicks,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 500)
              .having((e) => e.message, 'message', 'Analytics clicks failed'),
        ),
      );
    });

    test('analytics counts HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/analytics/counts')) {
          await _writeJson(request, 502, {
            'errors': ['Analytics counts unavailable'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.analyticsCounts(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.analyticsCounts,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 502)
              .having(
                (e) => e.message,
                'message',
                'Analytics counts unavailable',
              ),
        ),
      );
    });

    test('api logs GET HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/logs/api') && request.method == 'GET') {
          await _writeJson(request, 429, {
            'errors': ['API logs rate limited'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.getApiLogs(
          const ElasticApiLogsRequest(
            filters: ElasticApiLogsFilter(
              date: ElasticApiLogsDateFilter(
                from: '2018-10-15T00:00:00+00:00',
                to: '2018-10-16T00:00:00+00:00',
              ),
            ),
          ),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.apiLogsGet)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 429)
              .having((e) => e.message, 'message', 'API logs rate limited'),
        ),
      );
    });

    test('api logs POST HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path.endsWith('/logs/api') &&
            request.method == 'POST') {
          await _writeJson(request, 500, {
            'errors': ['API logs backend unavailable'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.queryApiLogs(
          const ElasticApiLogsRequest(
            filters: ElasticApiLogsFilter(
              date: ElasticApiLogsDateFilter(
                from: '2018-10-15T00:00:00+00:00',
                to: '2018-10-16T00:00:00+00:00',
              ),
            ),
          ),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.apiLogsQuery)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 500)
              .having(
                (e) => e.message,
                'message',
                'API logs backend unavailable',
              ),
        ),
      );
    });

    test('log settings HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/log_settings') {
          if (request.method == 'GET') {
            await _writeJson(request, 401, {
              'errors': ['Log settings unauthorized'],
            });
            return;
          }
          if (request.method == 'PUT') {
            await _writeJson(request, 400, {
              'errors': ['Invalid log settings update'],
            });
            return;
          }
          if (request.method == 'PATCH') {
            await _writeJson(request, 422, {
              'errors': ['Invalid log settings patch'],
            });
            return;
          }
          if (request.method == 'DELETE') {
            await _writeJson(request, 503, {
              'errors': ['Log settings service unavailable'],
            });
            return;
          }
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        service.getLogSettings(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.logSettingsGet)
              .having((e) => e.engine, 'engine', '<account>')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having((e) => e.message, 'message', 'Log settings unauthorized'),
        ),
      );

      await expectLater(
        service.updateLogSettings(apiEnabled: true),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.logSettingsPut)
              .having((e) => e.engine, 'engine', '<account>')
              .having((e) => e.statusCode, 'statusCode', 400)
              .having(
                (e) => e.message,
                'message',
                'Invalid log settings update',
              ),
        ),
      );

      await expectLater(
        service.patchLogSettings(analyticsEnabled: true),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.logSettingsPatch,
              )
              .having((e) => e.engine, 'engine', '<account>')
              .having((e) => e.statusCode, 'statusCode', 422)
              .having(
                (e) => e.message,
                'message',
                'Invalid log settings patch',
              ),
        ),
      );

      await expectLater(
        service.resetLogSettings(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.logSettingsDelete,
              )
              .having((e) => e.engine, 'engine', '<account>')
              .having((e) => e.statusCode, 'statusCode', 503)
              .having(
                (e) => e.message,
                'message',
                'Log settings service unavailable',
              ),
        ),
      );
    });

    test('adaptive relevance HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path ==
            '/api/as/v0/engines/parks/adaptive_relevance/suggestions') {
          if (request.method == 'GET') {
            await _writeJson(request, 500, {
              'errors': ['Adaptive suggestions list failed'],
            });
            return;
          }
          if (request.method == 'POST') {
            await _writeJson(request, 502, {
              'errors': ['Adaptive suggestions query failed'],
            });
            return;
          }
          if (request.method == 'PUT') {
            await _writeJson(request, 422, {
              'errors': ['Adaptive suggestions update failed'],
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v0/engines/parks/adaptive_relevance/suggestions/chill%20query') {
          if (request.method == 'GET') {
            await _writeJson(request, 401, {
              'errors': ['Adaptive suggestions by-query list failed'],
            });
            return;
          }
          if (request.method == 'POST') {
            await _writeJson(request, 403, {
              'errors': ['Adaptive suggestions by-query query failed'],
            });
            return;
          }
        }

        if (request.uri.path ==
            '/api/as/v0/engines/parks/adaptive_relevance/settings') {
          if (request.method == 'GET') {
            await _writeJson(request, 429, {
              'errors': ['Adaptive settings get failed'],
            });
            return;
          }
          if (request.method == 'PUT') {
            await _writeJson(request, 400, {
              'errors': ['Adaptive settings update failed'],
            });
            return;
          }
        }

        if (request.uri.path ==
                '/api/as/v0/engines/parks/adaptive_relevance/update_process/curation/refresh' &&
            request.method == 'POST') {
          await _writeJson(request, 503, {
            'errors': ['Adaptive refresh failed'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.listAdaptiveRelevanceSuggestions(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceSuggestionsList,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 500)
              .having(
                (e) => e.message,
                'message',
                'Adaptive suggestions list failed',
              ),
        ),
      );

      await expectLater(
        engine.queryAdaptiveRelevanceSuggestions(
          const ElasticAdaptiveRelevanceSuggestionsRequest(),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceSuggestionsQuery,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 502)
              .having(
                (e) => e.message,
                'message',
                'Adaptive suggestions query failed',
              ),
        ),
      );

      await expectLater(
        engine.listAdaptiveRelevanceSuggestionsByQuery('chill query'),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceSuggestionsByQueryList,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having(
                (e) => e.message,
                'message',
                'Adaptive suggestions by-query list failed',
              ),
        ),
      );

      await expectLater(
        engine.queryAdaptiveRelevanceSuggestionsByQuery(
          'chill query',
          const ElasticAdaptiveRelevanceSuggestionsRequest(),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceSuggestionsByQueryQuery,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 403)
              .having(
                (e) => e.message,
                'message',
                'Adaptive suggestions by-query query failed',
              ),
        ),
      );

      await expectLater(
        engine.updateAdaptiveRelevanceSuggestions([
          const ElasticAdaptiveRelevanceSuggestionUpdate(
            query: 'green tea',
            type: ElasticAdaptiveRelevanceSuggestionType.curation,
            status: ElasticAdaptiveRelevanceSuggestionStatus.applied,
          ),
        ]),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceSuggestionsUpdate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 422)
              .having(
                (e) => e.message,
                'message',
                'Adaptive suggestions update failed',
              ),
        ),
      );

      await expectLater(
        engine.getAdaptiveRelevanceSettings(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceSettingsGet,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 429)
              .having(
                (e) => e.message,
                'message',
                'Adaptive settings get failed',
              ),
        ),
      );

      await expectLater(
        engine.updateAdaptiveRelevanceSettings(
          const ElasticAdaptiveRelevanceSettings(
            curation: ElasticAdaptiveRelevanceCurationSettings(enabled: true),
          ),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceSettingsUpdate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 400)
              .having(
                (e) => e.message,
                'message',
                'Adaptive settings update failed',
              ),
        ),
      );

      await expectLater(
        engine.refreshAdaptiveRelevanceSuggestions(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.adaptiveRelevanceRefresh,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 503)
              .having((e) => e.message, 'message', 'Adaptive refresh failed'),
        ),
      );
    });

    test('crawler HTTP errors are mapped', () async {
      handler = (request) async {
        if (request.uri.path == '/api/as/v1/engines/parks/crawler') {
          await _writeJson(request, 503, {
            'errors': ['Crawler configuration unavailable'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/crawl_requests' &&
            request.method == 'GET') {
          await _writeJson(request, 401, {
            'errors': ['Crawler crawl requests unauthorized'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/crawl_schedule' &&
            request.method == 'GET') {
          await _writeJson(request, 429, {
            'errors': ['Crawler crawl schedule rate limited'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/process_crawls' &&
            request.method == 'GET') {
          await _writeJson(request, 502, {
            'errors': ['Crawler process crawls unavailable'],
          });
          return;
        }
        if (request.uri.path == '/api/as/v1/engines/parks/crawler/domains' &&
            request.method == 'GET') {
          await _writeJson(request, 500, {
            'errors': ['Crawler domains unavailable'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/domains/dom-1' &&
            request.method == 'PUT') {
          await _writeJson(request, 409, {
            'errors': ['Crawler domain update conflict'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/domains/dom-1/entry_points' &&
            request.method == 'POST') {
          await _writeJson(request, 422, {
            'errors': ['Crawler entry point invalid'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/domains/dom-1/crawl_rules/cr-1' &&
            request.method == 'DELETE') {
          await _writeJson(request, 410, {
            'errors': ['Crawler crawl rule missing'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/domains/dom-1/sitemaps' &&
            request.method == 'POST') {
          await _writeJson(request, 400, {
            'errors': ['Crawler sitemap invalid'],
          });
          return;
        }
        if (request.uri.path == '/api/as/v1/crawler/validate_url' &&
            request.method == 'POST') {
          await _writeJson(request, 422, {
            'errors': ['Crawler domain validation invalid'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/validate_url' &&
            request.method == 'POST') {
          await _writeJson(request, 401, {
            'errors': ['Crawler URL validation unauthorized'],
          });
          return;
        }
        if (request.uri.path ==
                '/api/as/v1/engines/parks/crawler/extract_url' &&
            request.method == 'POST') {
          await _writeJson(request, 500, {
            'errors': ['Crawler URL extraction failed'],
          });
          return;
        }
        if (request.uri.path == '/api/as/v1/engines/parks/crawler/trace_url' &&
            request.method == 'POST') {
          await _writeJson(request, 503, {
            'errors': ['Crawler URL trace unavailable'],
          });
          return;
        }
        if (request.uri.path == '/api/as/v1/crawler/user_agent') {
          await _writeJson(request, 403, {
            'errors': ['Crawler user agent forbidden'],
          });
          return;
        }

        await _writeJson(request, 404, {
          'errors': ['Unexpected path: ${request.uri.path}'],
        });
      };

      await expectLater(
        engine.getCrawlerConfiguration(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.crawlerGet)
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 503)
              .having(
                (e) => e.message,
                'message',
                'Crawler configuration unavailable',
              ),
        ),
      );

      await expectLater(
        engine.listCrawlRequests(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerCrawlRequestsList,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having(
                (e) => e.message,
                'message',
                'Crawler crawl requests unauthorized',
              ),
        ),
      );

      await expectLater(
        engine.getCrawlSchedule(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerCrawlScheduleGet,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 429)
              .having(
                (e) => e.message,
                'message',
                'Crawler crawl schedule rate limited',
              ),
        ),
      );

      await expectLater(
        engine.listProcessCrawls(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerProcessCrawlsList,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 502)
              .having(
                (e) => e.message,
                'message',
                'Crawler process crawls unavailable',
              ),
        ),
      );

      await expectLater(
        engine.listCrawlerDomains(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerDomainsList,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 500)
              .having(
                (e) => e.message,
                'message',
                'Crawler domains unavailable',
              ),
        ),
      );

      await expectLater(
        engine.updateCrawlerDomain(
          'dom-1',
          const ElasticCrawlerDomainUpdateRequest(
            name: 'https://updated.example.com',
          ),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerDomainUpdate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 409)
              .having(
                (e) => e.message,
                'message',
                'Crawler domain update conflict',
              ),
        ),
      );

      await expectLater(
        engine.createCrawlerEntryPoint(
          'dom-1',
          const ElasticCrawlerEntryPointRequest(value: '/home'),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerEntryPointCreate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 422)
              .having(
                (e) => e.message,
                'message',
                'Crawler entry point invalid',
              ),
        ),
      );

      await expectLater(
        engine.deleteCrawlerCrawlRule('dom-1', 'cr-1'),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerCrawlRuleDelete,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 410)
              .having(
                (e) => e.message,
                'message',
                'Crawler crawl rule missing',
              ),
        ),
      );

      await expectLater(
        engine.createCrawlerSitemap(
          'dom-1',
          const ElasticCrawlerSitemapRequest(url: 'https://example.com/a.xml'),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerSitemapCreate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 400)
              .having((e) => e.message, 'message', 'Crawler sitemap invalid'),
        ),
      );

      await expectLater(
        service.validateCrawlerDomain(
          const ElasticCrawlerUrlValidationRequest(url: 'https://example.com'),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerDomainValidate,
              )
              .having((e) => e.engine, 'engine', '<account>')
              .having((e) => e.statusCode, 'statusCode', 422)
              .having(
                (e) => e.message,
                'message',
                'Crawler domain validation invalid',
              ),
        ),
      );

      await expectLater(
        engine.validateCrawlerUrl(
          const ElasticCrawlerUrlValidationRequest(
            url: 'https://example.com/docs',
          ),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerUrlValidate,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 401)
              .having(
                (e) => e.message,
                'message',
                'Crawler URL validation unauthorized',
              ),
        ),
      );

      await expectLater(
        engine.extractCrawlerUrl(
          const ElasticCrawlerUrlRequest(url: 'https://example.com/docs'),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerUrlExtract,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 500)
              .having(
                (e) => e.message,
                'message',
                'Crawler URL extraction failed',
              ),
        ),
      );

      await expectLater(
        engine.traceCrawlerUrl(
          const ElasticCrawlerUrlRequest(url: 'https://example.com/docs'),
        ),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerUrlTrace,
              )
              .having((e) => e.engine, 'engine', 'parks')
              .having((e) => e.statusCode, 'statusCode', 503)
              .having(
                (e) => e.message,
                'message',
                'Crawler URL trace unavailable',
              ),
        ),
      );

      await expectLater(
        service.getCrawlerUserAgent(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having(
                (e) => e.operation,
                'operation',
                Operation.crawlerUserAgentGet,
              )
              .having((e) => e.engine, 'engine', '<account>')
              .having((e) => e.statusCode, 'statusCode', 403)
              .having(
                (e) => e.message,
                'message',
                'Crawler user agent forbidden',
              ),
        ),
      );
    });

    test(
      'search explain HTTP errors are mapped with status and message',
      () async {
        handler = (request) async {
          if (request.uri.path.endsWith('/search_explain')) {
            await _writeJson(request, 403, {
              'errors': ['Explain endpoint forbidden'],
            });
            return;
          }

          await _writeJson(request, 404, {
            'errors': ['Unexpected path: ${request.uri.path}'],
          });
        };

        await expectLater(
          engine.query('moun').explain(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.searchExplain,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having((e) => e.statusCode, 'statusCode', 403)
                .having(
                  (e) => e.message,
                  'message',
                  'Explain endpoint forbidden',
                ),
          ),
        );
      },
    );

    test(
      'multi search HTTP errors are mapped with status and message',
      () async {
        handler = (request) async {
          if (request.uri.path.endsWith('/multi_search')) {
            await _writeJson(request, 400, {
              'errors': ['Invalid multi search payload'],
            });
            return;
          }

          await _writeJson(request, 404, {
            'errors': ['Unexpected path: ${request.uri.path}'],
          });
        };

        await expectLater(
          engine.multiSearch([engine.query('moun')]),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.multiSearch)
                .having((e) => e.engine, 'engine', 'parks')
                .having((e) => e.statusCode, 'statusCode', 400)
                .having(
                  (e) => e.message,
                  'message',
                  'Invalid multi search payload',
                ),
          ),
        );
      },
    );

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
            'meta': {'request_id': 'req-debug-suggest'},
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
