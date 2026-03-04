import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ElasticAppSearch error mapping', () {
    late ElasticEngine engine;

    setUp(() {
      final service = ElasticAppSearch(
        endPoint: 'http://127.0.0.1:1',
        searchKey: 'search-key',
      );
      engine = service.engine('parks');
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
  });
}
