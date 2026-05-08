# Usage Guide

This guide gives copy/paste examples for each API family exposed by the package.

## Setup

```dart
import 'package:elastic_app_search/elastic_app_search.dart';

final service = ElasticAppSearch(
  endPoint: 'https://your-enterprise-search-host',
  searchKey: 'search-xxxxxxxxxxxxxxxxxxxx',
);

final engine = service.engine('national-parks-demo');
```

## Search DSL (query builder)

```dart
final response = await engine
    .query('mountains')
    .precision(3)
    .searchField('title', weight: 10)
    .searchField('description', weight: 4)
    .boostValue(
      'world_heritage_site',
      value: true,
      operation: BoostOperation.multiply,
      factor: 2,
    )
    .boostFunctional(
      'visitors',
      function: BoostFunction.logarithmic,
      factor: 1.5,
    )
    .boostRecency(
      'date_established',
      center: 'now',
      function: BoostFunction.linear,
      factor: 3,
    )
    .filter('states', whereIn: const ['California', 'Nevada'])
    .filterNone('closed', isEqualTo: true)
    .facet('states')
    .disjunctiveFacet('states') // requires facet('states') before
    .sort('visitors', descending: true)
    .group('park_id', size: 3)
    .tag('mobile')
    .withRecordAnalytics(true)
    .page(1, size: 20)
    .get();

print(response.meta.page.totalResults);
```

## Explain, multi-search, suggestions

```dart
final explain = await engine.query('mountains').explain();
print(explain.queryString);

final responses = await engine.multiSearch([
  engine.query('mountains'),
  engine.query('lakes'),
]);

final suggestions = await engine
    .suggestionQuery('moun')
    .searchField('title', weight: 8)
    .withSize(5)
    .get();

print(responses.length);
print(suggestions.results.documents?.map((e) => e.suggestion).toList());
```

## Documents, schema, search settings

```dart
await engine.indexDocuments([
  {
    'id': 'park-yosemite',
    'title': 'Yosemite',
    'visitors': 4200000,
    'world_heritage_site': true,
  },
]);

await engine.updateDocuments([
  {
    'id': 'park-yosemite',
    'visitors': 4250000,
  },
]);

final docs = await engine.getDocuments(const ['park-yosemite']);
print(docs.first?['title']);

final list = await engine.listDocuments(current: 1, size: 25);
print(list.meta.page.totalResults);

await engine.deleteDocuments(const ['park-yosemite']);

final schema = await engine.getSchema();
print(schema.fields);

await engine.updateSchema({
  'title': ElasticSchemaFieldType.text,
  'visitors': ElasticSchemaFieldType.number,
  'date_established': ElasticSchemaFieldType.date,
});

final settings = await engine.getSearchSettings();
print(settings.precision);

await engine.updateSearchSettings(
  searchFields: {
    'title': {'weight': 10},
    'description': {'weight': 5},
  },
  resultFields: {
    'title': {'raw': {}},
    'description': {
      'snippet': {'size': 140, 'fallback': true},
    },
  },
  boosts: {
    'visitors': {
      'type': 'functional',
      'function': 'logarithmic',
      'factor': 2,
    },
  },
  precision: 3,
);

await engine.resetSearchSettings();
```

## Synonyms and curations

```dart
final synonymSet = await engine.createSynonymSet(
  const ['trail', 'path', 'track'],
);
print(synonymSet.id);

await engine.updateSynonymSet(
  synonymSet.id,
  const ['trail', 'route', 'pathway'],
);

final synonymPage = await engine.listSynonyms(current: 1, size: 10);
print(synonymPage.results.length);

await engine.deleteSynonymSet(synonymSet.id);

final createdCuration = await engine.createCuration(
  queries: const ['hiking'],
  promoted: const ['park-yosemite'],
);

await engine.updateCuration(
  createdCuration.id,
  hidden: const ['park-closed'],
);

final curations = await engine.listCurations(current: 1, size: 10);
print(curations.results.length);

await engine.deleteCuration(createdCuration.id);
```

## Clickthrough, analytics, API logs

```dart
await engine.clickthrough(
  const ElasticClickthroughRequest(
    query: 'yosemite',
    documentId: 'park-yosemite',
    requestId: 'req-123',
    tags: ['mobile', 'ios'],
  ),
);

final analyticsQueries = await engine.analyticsQueries(
  request: const ElasticAnalyticsQueriesRequest(
    page: ElasticPageRequest(current: 1, size: 10),
    filters: ElasticAnalyticsFilter(
      date: ElasticAnalyticsDateFilter(
        from: '2026-05-01T00:00:00+00:00',
        to: '2026-05-08T00:00:00+00:00',
      ),
    ),
  ),
);

final analyticsClicks = await engine.analyticsClicks(
  request: const ElasticAnalyticsClicksRequest(
    query: 'yosemite',
    page: ElasticPageRequest(current: 1, size: 10),
  ),
);

final analyticsCounts = await engine.analyticsCounts(
  request: const ElasticAnalyticsCountsRequest(
    filters: ElasticAnalyticsFilter(
      date: ElasticAnalyticsDateFilter(
        from: '2026-05-01T00:00:00+00:00',
        to: '2026-05-08T00:00:00+00:00',
      ),
    ),
    interval: ElasticAnalyticsInterval.day,
  ),
);

print(analyticsQueries.results.length);
print(analyticsClicks.results.length);
print(analyticsCounts.results.length);

final logsRequest = const ElasticApiLogsRequest(
  filters: ElasticApiLogsFilter(
    date: ElasticApiLogsDateFilter(
      from: '2026-05-01T00:00:00+00:00',
      to: '2026-05-08T00:00:00+00:00',
    ),
    status: 200,
  ),
  query: '/search',
  sortDirection: ElasticApiLogsSortDirection.desc,
  page: ElasticPageRequest(current: 1, size: 20),
);

final logsWithGet = await engine.getApiLogs(logsRequest);
final logsWithPost = await engine.queryApiLogs(logsRequest);
print(logsWithGet.results.length + logsWithPost.results.length);
```

## Account-level APIs (engines, credentials, log settings)

```dart
final engines = await service.listEngines(
  page: const ElasticPageRequest(current: 1, size: 25),
);
print(engines.results.map((e) => e.name).toList());

await service.createEngine(name: 'parks-fr', language: 'fr');

await service.createEngine(
  name: 'all-parks',
  type: ElasticEngineType.meta,
  sourceEngines: const ['parks-fr', 'parks-us'],
);

await service.addMetaEngineSourceEngines('all-parks', const ['parks-eu']);
await service.removeMetaEngineSourceEngines('all-parks', const ['parks-eu']);

final credential = await service.createCredential(
  name: 'mobile-search',
  type: ElasticCredentialType.search,
  accessAllEngines: false,
  engines: const ['parks-fr'],
);

await service.updateCredential(
  credential.name,
  accessAllEngines: true,
);

await service.getCredential(credential.name);
await service.listCredentials();
await service.deleteCredential(credential.name);

await service.patchLogSettings(apiEnabled: true, analyticsEnabled: true);
await service.getLogSettings();
```

## Adaptive relevance APIs

```dart
final suggestionList = await engine.listAdaptiveRelevanceSuggestions(
  const ElasticAdaptiveRelevanceSuggestionsRequest(
    filters: ElasticAdaptiveRelevanceSuggestionsFilter(
      status: [ElasticAdaptiveRelevanceSuggestionStatus.pending],
    ),
  ),
);
print(suggestionList.results.length);

await engine.updateAdaptiveRelevanceSuggestions(const [
  ElasticAdaptiveRelevanceSuggestionUpdate(
    query: 'hiking',
    type: ElasticAdaptiveRelevanceSuggestionType.curation,
    status: ElasticAdaptiveRelevanceSuggestionStatus.applied,
  ),
]);

final adaptiveSettings = await engine.getAdaptiveRelevanceSettings();
print(adaptiveSettings.curation.mode);

await engine.updateAdaptiveRelevanceSettings(
  const ElasticAdaptiveRelevanceSettings(
    curation: ElasticAdaptiveRelevanceCurationSettings(
      enabled: true,
      mode: ElasticAdaptiveRelevanceMode.manual,
      scheduleFrequency: 1,
      scheduleUnit: ElasticAdaptiveRelevanceScheduleUnit.day,
    ),
  ),
);

await engine.refreshAdaptiveRelevanceSuggestions();
```

## Crawler APIs

```dart
final crawlerConfig = await engine.getCrawlerConfiguration();
print(crawlerConfig.domains.length);

final domain = await engine.createCrawlerDomain(
  const ElasticCrawlerDomainCreateRequest(name: 'https://example.com'),
);

await engine.createCrawlerEntryPoint(
  domain.id,
  const ElasticCrawlerEntryPointRequest(value: '/docs'),
);

await engine.createCrawlerCrawlRule(
  domain.id,
  const ElasticCrawlerCrawlRuleRequest(
    policy: ElasticCrawlerCrawlRulePolicy.allow,
    rule: ElasticCrawlerCrawlRuleType.begins,
    pattern: '/docs',
    order: 1,
  ),
);

await engine.createCrawlerSitemap(
  domain.id,
  const ElasticCrawlerSitemapRequest(
    url: 'https://example.com/sitemap.xml',
  ),
);

await engine.updateCrawlSchedule(
  const ElasticCrawlerCrawlSchedule(
    frequency: 1,
    unit: ElasticCrawlerCrawlScheduleUnit.day,
  ),
);

await engine.createCrawlRequest();

await engine.createPartialCrawlRequest(
  const ElasticCrawlerPartialCrawlRequest(
    maxCrawlDepth: 3,
    seedUrls: ['https://example.com/docs'],
  ),
);

await engine.createProcessCrawl(
  request: const ElasticCrawlerProcessCrawlRequest(dryRun: true),
);

final validation = await engine.validateCrawlerUrl(
  const ElasticCrawlerUrlValidationRequest(
    url: 'https://example.com/docs',
    checks: ['url', 'domain_access'],
  ),
);
print(validation.valid);

final extraction = await engine.extractCrawlerUrl(
  const ElasticCrawlerUrlRequest(url: 'https://example.com/docs'),
);
print(extraction.results.keys.toList());

final trace = await engine.traceCrawlerUrl(
  const ElasticCrawlerUrlRequest(url: 'https://example.com/docs'),
);
print(trace.crawlRequests.length);

await service.getCrawlerUserAgent();
await service.validateCrawlerDomain(
  const ElasticCrawlerUrlValidationRequest(url: 'https://example.com'),
);
```

## Error handling

```dart
try {
  await engine.query('mountains').page(0).get();
} on RangeError catch (e) {
  // Local payload validation (before HTTP call).
  print(e);
} on ElasticAppSearchException catch (e) {
  // HTTP/API failure mapping with extra context.
  print('${e.operation} ${e.statusCode} ${e.url}');
}
```

## Pagination conventions

- Query DSL uses `.page(current, size: ...)`.
- Engine list endpoints usually expose `current/size` or `ElasticPageRequest`.
- Account-level list endpoints use `ElasticPageRequest`.
- Endpoint-specific max sizes are enforced with runtime validation.

