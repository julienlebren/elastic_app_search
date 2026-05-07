import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ElasticAppSearch error mapping', () {
    late ElasticEngine engine;
    late ElasticAppSearch service;

    setUp(() {
      service = ElasticAppSearch(
        endPoint: 'http://127.0.0.1:1',
        searchKey: 'search-key',
      );
      engine = service.engine('parks');
    });

    test('engine validates name at runtime', () {
      expect(() => service.engine('   '), throwsArgumentError);
    });

    test('exception toString includes optional fields when present', () {
      const exception = ElasticAppSearchException(
        message: 'Oops',
        operation: Operation.search,
        engine: 'parks',
        statusCode: 500,
        url: 'https://example.com/search',
        cause: 'boom',
      );

      final text = exception.toString();
      expect(text, contains('message: Oops'));
      expect(text, contains('operation: search'));
      expect(text, contains('engine: parks'));
      expect(text, contains('statusCode: 500'));
      expect(text, contains('url: https://example.com/search'));
      expect(text, contains('cause: boom'));
    });

    test('search failures are wrapped in ElasticAppSearchException', () async {
      await expectLater(
        engine.query('mountains').get(),
        throwsA(
          isA<ElasticAppSearchException>()
              .having((e) => e.operation, 'operation', Operation.search)
              .having((e) => e.engine, 'engine', 'parks')
              .having(
                (e) => e.url,
                'url',
                'http://127.0.0.1:1/api/as/v1/engines/parks/search',
              ),
        ),
      );
    });

    test(
      'search explain failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.query('mountains').explain(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.searchExplain,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/search_explain',
                ),
          ),
        );
      },
    );

    test(
      'multi search failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.multiSearch([engine.query('mountains')]),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.multiSearch)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/multi_search',
                ),
          ),
        );
      },
    );

    test(
      'suggestion failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.suggestionQuery('mount').get(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.querySuggestion,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/query_suggestion',
                ),
          ),
        );
      },
    );

    test(
      'documents list failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.listDocuments(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.documentsList,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/documents/list',
                ),
          ),
        );
      },
    );

    test(
      'engines list failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.listEngines(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.engines)
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines',
                ),
          ),
        );
      },
    );
  });
}
