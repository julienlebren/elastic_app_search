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
      'api logs GET failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/logs/api',
                ),
          ),
        );
      },
    );

    test(
      'api logs POST failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/logs/api',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance list failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/suggestions',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance query failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/suggestions',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance by-query list failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.listAdaptiveRelevanceSuggestionsByQuery('green tea'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.adaptiveRelevanceSuggestionsByQueryList,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/suggestions/green%20tea',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance by-query query failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.queryAdaptiveRelevanceSuggestionsByQuery(
            'green tea',
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/suggestions/green%20tea',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance update failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/suggestions',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance settings failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/settings',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance settings update failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/settings',
                ),
          ),
        );
      },
    );

    test(
      'adaptive relevance refresh failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v0/engines/parks/adaptive_relevance/update_process',
                ),
          ),
        );
      },
    );

    test(
      'crawler configuration failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getCrawlerConfiguration(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having((e) => e.operation, 'operation', Operation.crawlerGet)
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler',
                ),
          ),
        );
      },
    );

    test(
      'active crawl request failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getActiveCrawlRequest(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerActiveCrawlRequestGet,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_requests/active',
                ),
          ),
        );
      },
    );

    test(
      'cancel active crawl request failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.cancelActiveCrawlRequest(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerActiveCrawlRequestCancel,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_requests/active/cancel',
                ),
          ),
        );
      },
    );

    test(
      'list crawl requests failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_requests',
                ),
          ),
        );
      },
    );

    test(
      'create crawl request failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createCrawlRequest(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerCrawlRequestCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_requests',
                ),
          ),
        );
      },
    );

    test(
      'create partial crawl request failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createPartialCrawlRequest(
            const ElasticCrawlerPartialCrawlRequest(maxCrawlDepth: 2),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerPartialCrawlRequestCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_requests',
                ),
          ),
        );
      },
    );

    test(
      'get crawl request failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getCrawlRequest('cr-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerCrawlRequestGet,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_requests/cr-1',
                ),
          ),
        );
      },
    );

    test(
      'crawl schedule failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_schedule',
                ),
          ),
        );
      },
    );

    test(
      'update crawl schedule failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateCrawlSchedule(
            const ElasticCrawlerCrawlSchedule(
              frequency: 2,
              unit: ElasticCrawlerCrawlScheduleUnit.week,
            ),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerCrawlSchedulePut,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_schedule',
                ),
          ),
        );
      },
    );

    test(
      'delete crawl schedule failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.deleteCrawlSchedule(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerCrawlScheduleDelete,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/crawl_schedule',
                ),
          ),
        );
      },
    );

    test(
      'process crawls failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/process_crawls',
                ),
          ),
        );
      },
    );

    test(
      'get process crawl failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getProcessCrawl('pc-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerProcessCrawlGet,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/process_crawls/pc-1',
                ),
          ),
        );
      },
    );

    test(
      'get process crawl denied urls failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getProcessCrawlDeniedUrls('pc-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerProcessCrawlDeniedUrlsGet,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/process_crawls/pc-1/denied_urls',
                ),
          ),
        );
      },
    );

    test(
      'create process crawl failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createProcessCrawl(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerProcessCrawlCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/process_crawls',
                ),
          ),
        );
      },
    );

    test(
      'list crawler domains failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains',
                ),
          ),
        );
      },
    );

    test(
      'create crawler domain failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createCrawlerDomain(
            const ElasticCrawlerDomainCreateRequest(
              name: 'https://example.com',
            ),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerDomainCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains',
                ),
          ),
        );
      },
    );

    test(
      'get crawler domain failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.getCrawlerDomain('dom-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerDomainGet,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1',
                ),
          ),
        );
      },
    );

    test(
      'update crawler domain failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1',
                ),
          ),
        );
      },
    );

    test(
      'delete crawler domain failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.deleteCrawlerDomain('dom-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerDomainDelete,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1',
                ),
          ),
        );
      },
    );

    test(
      'create crawler entry point failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/entry_points',
                ),
          ),
        );
      },
    );

    test(
      'update crawler entry point failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateCrawlerEntryPoint(
            'dom-1',
            'ep-1',
            const ElasticCrawlerEntryPointRequest(value: '/home'),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerEntryPointUpdate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/entry_points/ep-1',
                ),
          ),
        );
      },
    );

    test(
      'delete crawler entry point failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.deleteCrawlerEntryPoint('dom-1', 'ep-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerEntryPointDelete,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/entry_points/ep-1',
                ),
          ),
        );
      },
    );

    test(
      'create crawler crawl rule failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createCrawlerCrawlRule(
            'dom-1',
            const ElasticCrawlerCrawlRuleRequest(
              policy: ElasticCrawlerCrawlRulePolicy.allow,
              rule: ElasticCrawlerCrawlRuleType.begins,
              pattern: '/public',
            ),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerCrawlRuleCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/crawl_rules',
                ),
          ),
        );
      },
    );

    test(
      'update crawler crawl rule failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateCrawlerCrawlRule(
            'dom-1',
            'cr-1',
            const ElasticCrawlerCrawlRuleRequest(
              policy: ElasticCrawlerCrawlRulePolicy.allow,
              rule: ElasticCrawlerCrawlRuleType.begins,
              pattern: '/public',
            ),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerCrawlRuleUpdate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/crawl_rules/cr-1',
                ),
          ),
        );
      },
    );

    test(
      'delete crawler crawl rule failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/crawl_rules/cr-1',
                ),
          ),
        );
      },
    );

    test(
      'create crawler sitemap failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.createCrawlerSitemap(
            'dom-1',
            const ElasticCrawlerSitemapRequest(
              url: 'https://example.com/a.xml',
            ),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerSitemapCreate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/sitemaps',
                ),
          ),
        );
      },
    );

    test(
      'update crawler sitemap failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.updateCrawlerSitemap(
            'dom-1',
            'sm-1',
            const ElasticCrawlerSitemapRequest(
              url: 'https://example.com/a.xml',
            ),
          ),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerSitemapUpdate,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/sitemaps/sm-1',
                ),
          ),
        );
      },
    );

    test(
      'delete crawler sitemap failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          engine.deleteCrawlerSitemap('dom-1', 'sm-1'),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.crawlerSitemapDelete,
                )
                .having((e) => e.engine, 'engine', 'parks')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/engines/parks/crawler/domains/dom-1/sitemaps/sm-1',
                ),
          ),
        );
      },
    );

    test(
      'crawler user agent failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/crawler/user_agent',
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

    test(
      'get log settings failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.getLogSettings(),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.logSettingsGet,
                )
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/log_settings',
                ),
          ),
        );
      },
    );

    test(
      'update log settings failures are wrapped in ElasticAppSearchException',
      () async {
        await expectLater(
          service.updateLogSettings(apiEnabled: true),
          throwsA(
            isA<ElasticAppSearchException>()
                .having(
                  (e) => e.operation,
                  'operation',
                  Operation.logSettingsPut,
                )
                .having((e) => e.engine, 'engine', '<account>')
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/log_settings',
                ),
          ),
        );
      },
    );

    test(
      'patch log settings failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/log_settings',
                ),
          ),
        );
      },
    );

    test(
      'reset log settings failures are wrapped in ElasticAppSearchException',
      () async {
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
                .having(
                  (e) => e.url,
                  'url',
                  'http://127.0.0.1:1/api/as/v1/log_settings',
                ),
          ),
        );
      },
    );
  });
}
