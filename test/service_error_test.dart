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
      'clickthrough failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/click',
                ),
          ),
        );
      },
    );

    test(
      'analytics queries failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/analytics/queries',
                ),
          ),
        );
      },
    );

    test(
      'analytics clicks failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/analytics/clicks',
                ),
          ),
        );
      },
    );

    test(
      'analytics counts failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/analytics/counts',
                ),
          ),
        );
      },
    );

    test(
      'get schema failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getSchema(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.schemaGet)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/schema',
                ),
          ),
        );
      },
    );

    test(
      'update schema failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateSchema({'title': ElasticSchemaFieldType.text}),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.schemaUpdate)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/schema',
                ),
          ),
        );
      },
    );

    test(
      'index documents failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/documents',
                ),
          ),
        );
      },
    );

    test(
      'partial update documents failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateDocuments([
            {'id': 'park_zion', 'title': 'Zion Canyon'},
          ]),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.documentsPartialUpdate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/documents',
                ),
          ),
        );
      },
    );

    test(
      'get documents failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getDocuments(['park_zion']),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.documentsGet)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/documents',
                ),
          ),
        );
      },
    );

    test(
      'delete documents failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/documents',
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

    test(
      'engine info failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.info(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.engineGet)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks',
                ),
          ),
        );
      },
    );

    test(
      'create engine failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.createEngine(name: 'parks'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.engineCreate)
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

    test(
      'delete engine failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.delete(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.engineDelete)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks',
                ),
          ),
        );
      },
    );

    test(
      'add source engines failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.addSourceEngines(const ['source-a']),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.sourceEnginesAdd,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/source_engines',
                ),
          ),
        );
      },
    );

    test(
      'remove source engines failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.removeSourceEngines(const ['source-a']),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.sourceEnginesRemove,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/source_engines',
                ),
          ),
        );
      },
    );

    test(
      'list synonyms failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.listSynonyms(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.synonymsList)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/synonyms',
                ),
          ),
        );
      },
    );

    test(
      'get synonym failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getSynonymSet('syn-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.synonymGet)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/synonyms/syn-1',
                ),
          ),
        );
      },
    );

    test(
      'create synonym failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createSynonymSet(['park', 'trail']),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.synonymCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/synonyms',
                ),
          ),
        );
      },
    );

    test(
      'update synonym failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateSynonymSet('syn-1', ['road', 'trail']),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.synonymUpdate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/synonyms/syn-1',
                ),
          ),
        );
      },
    );

    test(
      'delete synonym failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.deleteSynonymSet('syn-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.synonymDelete,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/synonyms/syn-1',
                ),
          ),
        );
      },
    );

    test(
      'list curations failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.listCurations(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.curationsList,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/curations',
                ),
          ),
        );
      },
    );

    test(
      'get curation failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getCuration('cur-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.curationGet)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/curations/cur-1',
                ),
          ),
        );
      },
    );

    test(
      'create curation failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createCuration(
            queries: const ['query'],
            promoted: const ['doc-1'],
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.curationCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/curations',
                ),
          ),
        );
      },
    );

    test(
      'update curation failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateCuration('cur-1', promoted: const ['doc-1']),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.curationUpdate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/curations/cur-1',
                ),
          ),
        );
      },
    );

    test(
      'delete curation failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.deleteCuration('cur-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.curationDelete,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/curations/cur-1',
                ),
          ),
        );
      },
    );

    test(
      'get search settings failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getSearchSettings(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.searchSettingsGet,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/search_settings',
                ),
          ),
        );
      },
    );

    test(
      'update search settings failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateSearchSettings(
            searchFields: const {
              'title': {'weight': 2},
            },
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.searchSettingsUpdate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/search_settings',
                ),
          ),
        );
      },
    );

    test(
      'reset search settings failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.resetSearchSettings(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.searchSettingsReset,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/search_settings/reset',
                ),
          ),
        );
      },
    );

    test(
      'credentials list failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.listCredentials(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.credentialsList,
                )
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/credentials',
                ),
          ),
        );
      },
    );

    test(
      'get credential failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.getCredential('my-private-key'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.credentialGet,
                )
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/credentials/my-private-key',
                ),
          ),
        );
      },
    );

    test(
      'create credential failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.createCredential(
            name: 'my-private-key',
            type: ElasticCredentialType.privateKey,
            read: true,
            write: false,
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.credentialCreate,
                )
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/credentials',
                ),
          ),
        );
      },
    );

    test(
      'update credential failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.updateCredential('my-private-key', read: true, write: false),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.credentialUpdate,
                )
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/credentials/my-private-key',
                ),
          ),
        );
      },
    );

    test(
      'delete credential failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.deleteCredential('my-private-key'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.credentialDelete,
                )
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/credentials/my-private-key',
                ),
          ),
        );
      },
    );
  });
}
