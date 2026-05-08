// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_app_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ElasticAnalyticsImpl _$ElasticAnalyticsImplFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsImpl(
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ElasticAnalyticsImplToJson(
  _ElasticAnalyticsImpl instance,
) => <String, dynamic>{'tags': instance.tags};

_ElasticClickthroughRequest _$ElasticClickthroughRequestFromJson(
  Map<String, dynamic> json,
) => _ElasticClickthroughRequest(
  query: json['query'] as String,
  documentId: json['document_id'] as String,
  requestId: json['request_id'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ElasticClickthroughRequestToJson(
  _ElasticClickthroughRequest instance,
) => <String, dynamic>{
  'query': instance.query,
  'document_id': instance.documentId,
  'request_id': ?instance.requestId,
  'tags': ?instance.tags,
};

_ElasticAnalyticsDateFilter _$ElasticAnalyticsDateFilterFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsDateFilter(
  from: json['from'] as String?,
  to: json['to'] as String?,
);

Map<String, dynamic> _$ElasticAnalyticsDateFilterToJson(
  _ElasticAnalyticsDateFilter instance,
) => <String, dynamic>{'from': ?instance.from, 'to': ?instance.to};

_ElasticAnalyticsFilter _$ElasticAnalyticsFilterFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsFilter(
  query: json['query'] as String?,
  clicks: json['clicks'] as bool?,
  results: json['results'] as bool?,
  documentId: json['document_id'],
  tag: const _AnalyticsTagFilterConverter().fromJson(json['tag']),
  date: json['date'] == null
      ? null
      : ElasticAnalyticsDateFilter.fromJson(
          json['date'] as Map<String, dynamic>,
        ),
  all: (json['all'] as List<dynamic>?)
      ?.map((e) => ElasticAnalyticsFilter.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ElasticAnalyticsFilterToJson(
  _ElasticAnalyticsFilter instance,
) => <String, dynamic>{
  'query': ?instance.query,
  'clicks': ?instance.clicks,
  'results': ?instance.results,
  'document_id': ?instance.documentId,
  'tag': ?const _AnalyticsTagFilterConverter().toJson(instance.tag),
  'date': ?instance.date?.toJson(),
  'all': ?instance.all?.map((e) => e.toJson()).toList(),
};

_ElasticAnalyticsQueriesRequest _$ElasticAnalyticsQueriesRequestFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsQueriesRequest(
  page: json['page'] == null
      ? null
      : ElasticPageRequest.fromJson(json['page'] as Map<String, dynamic>),
  filters: json['filters'] == null
      ? null
      : ElasticAnalyticsFilter.fromJson(
          json['filters'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ElasticAnalyticsQueriesRequestToJson(
  _ElasticAnalyticsQueriesRequest instance,
) => <String, dynamic>{
  'page': ?instance.page?.toJson(),
  'filters': ?instance.filters?.toJson(),
};

_ElasticAnalyticsClicksRequest _$ElasticAnalyticsClicksRequestFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsClicksRequest(
  query: json['query'] as String?,
  page: json['page'] == null
      ? null
      : ElasticPageRequest.fromJson(json['page'] as Map<String, dynamic>),
  filters: json['filters'] == null
      ? null
      : ElasticAnalyticsFilter.fromJson(
          json['filters'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ElasticAnalyticsClicksRequestToJson(
  _ElasticAnalyticsClicksRequest instance,
) => <String, dynamic>{
  'query': ?instance.query,
  'page': ?instance.page?.toJson(),
  'filters': ?instance.filters?.toJson(),
};

_ElasticAnalyticsCountsRequest _$ElasticAnalyticsCountsRequestFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsCountsRequest(
  filters: json['filters'] == null
      ? null
      : ElasticAnalyticsFilter.fromJson(
          json['filters'] as Map<String, dynamic>,
        ),
  interval: $enumDecodeNullable(
    _$ElasticAnalyticsIntervalEnumMap,
    json['interval'],
  ),
);

Map<String, dynamic> _$ElasticAnalyticsCountsRequestToJson(
  _ElasticAnalyticsCountsRequest instance,
) => <String, dynamic>{
  'filters': ?instance.filters?.toJson(),
  'interval': ?_$ElasticAnalyticsIntervalEnumMap[instance.interval],
};

const _$ElasticAnalyticsIntervalEnumMap = {
  ElasticAnalyticsInterval.hour: 'hour',
  ElasticAnalyticsInterval.day: 'day',
};

_ElasticAnalyticsMeta _$ElasticAnalyticsMetaFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsMeta(
  page: ElasticPageRequest.fromJson(json['page'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ElasticAnalyticsMetaToJson(
  _ElasticAnalyticsMeta instance,
) => <String, dynamic>{'page': instance.page.toJson()};

_ElasticAnalyticsQueryResult _$ElasticAnalyticsQueryResultFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsQueryResult(
  term: json['term'] as String,
  clicks: (json['clicks'] as num).toInt(),
  queries: (json['queries'] as num).toInt(),
);

Map<String, dynamic> _$ElasticAnalyticsQueryResultToJson(
  _ElasticAnalyticsQueryResult instance,
) => <String, dynamic>{
  'term': instance.term,
  'clicks': instance.clicks,
  'queries': instance.queries,
};

_ElasticAnalyticsQueriesResponse _$ElasticAnalyticsQueriesResponseFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsQueriesResponse(
  meta: ElasticAnalyticsMeta.fromJson(json['meta'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>)
      .map(
        (e) => ElasticAnalyticsQueryResult.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ElasticAnalyticsQueriesResponseToJson(
  _ElasticAnalyticsQueriesResponse instance,
) => <String, dynamic>{
  'meta': instance.meta.toJson(),
  'results': instance.results.map((e) => e.toJson()).toList(),
};

_ElasticAnalyticsClickResult _$ElasticAnalyticsClickResultFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsClickResult(
  documentId: json['document_id'] as String,
  clicks: (json['clicks'] as num).toInt(),
);

Map<String, dynamic> _$ElasticAnalyticsClickResultToJson(
  _ElasticAnalyticsClickResult instance,
) => <String, dynamic>{
  'document_id': instance.documentId,
  'clicks': instance.clicks,
};

_ElasticAnalyticsClicksResponse _$ElasticAnalyticsClicksResponseFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsClicksResponse(
  meta: ElasticAnalyticsMeta.fromJson(json['meta'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>)
      .map(
        (e) => ElasticAnalyticsClickResult.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ElasticAnalyticsClicksResponseToJson(
  _ElasticAnalyticsClicksResponse instance,
) => <String, dynamic>{
  'meta': instance.meta.toJson(),
  'results': instance.results.map((e) => e.toJson()).toList(),
};

_ElasticAnalyticsCountResult _$ElasticAnalyticsCountResultFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsCountResult(
  clicks: (json['clicks'] as num).toInt(),
  queries: (json['queries'] as num).toInt(),
  from: json['from'] as String,
  to: json['to'] as String,
);

Map<String, dynamic> _$ElasticAnalyticsCountResultToJson(
  _ElasticAnalyticsCountResult instance,
) => <String, dynamic>{
  'clicks': instance.clicks,
  'queries': instance.queries,
  'from': instance.from,
  'to': instance.to,
};

_ElasticAnalyticsCountsResponse _$ElasticAnalyticsCountsResponseFromJson(
  Map<String, dynamic> json,
) => _ElasticAnalyticsCountsResponse(
  results: (json['results'] as List<dynamic>)
      .map(
        (e) => ElasticAnalyticsCountResult.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ElasticAnalyticsCountsResponseToJson(
  _ElasticAnalyticsCountsResponse instance,
) => <String, dynamic>{
  'results': instance.results.map((e) => e.toJson()).toList(),
};

_ElasticBoostImpl _$ElasticBoostImplFromJson(Map<String, dynamic> json) =>
    _ElasticBoostImpl(
      type: $enumDecode(_$BoostTypeEnumMap, json['type']),
      value: json['value'],
      function: $enumDecodeNullable(_$BoostFunctionEnumMap, json['function']),
      center: json['center'],
      operation: $enumDecodeNullable(
        _$BoostOperationEnumMap,
        json['operation'],
      ),
      factor: (json['factor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ElasticBoostImplToJson(_ElasticBoostImpl instance) =>
    <String, dynamic>{
      'type': _$BoostTypeEnumMap[instance.type]!,
      'value': ?instance.value,
      'function': ?_$BoostFunctionEnumMap[instance.function],
      'center': ?instance.center,
      'operation': ?_$BoostOperationEnumMap[instance.operation],
      'factor': ?instance.factor,
    };

const _$BoostTypeEnumMap = {
  BoostType.value: 'value',
  BoostType.functional: 'functional',
  BoostType.proximity: 'proximity',
  BoostType.recency: 'recency',
};

const _$BoostFunctionEnumMap = {
  BoostFunction.linear: 'linear',
  BoostFunction.exponential: 'exponential',
  BoostFunction.gaussian: 'gaussian',
  BoostFunction.logarithmic: 'logarithmic',
};

const _$BoostOperationEnumMap = {
  BoostOperation.add: 'add',
  BoostOperation.multiply: 'multiply',
};

_ElasticQueryFacetImpl _$ElasticQueryFacetImplFromJson(
  Map<String, dynamic> json,
) => _ElasticQueryFacetImpl(
  type: json['type'] as String,
  name: json['name'] as String?,
  ranges: (json['ranges'] as List<dynamic>?)
      ?.map((e) => _ElasticRangeFacet.fromJson(e as Map<String, dynamic>))
      .toList(),
  size: (json['size'] as num?)?.toInt(),
  center: const _LatLongConverter().fromJson(json['center'] as String?),
  unit: $enumDecodeNullable(_$GeoUnitEnumMap, json['unit']),
);

Map<String, dynamic> _$ElasticQueryFacetImplToJson(
  _ElasticQueryFacetImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'name': ?instance.name,
  'ranges': ?instance.ranges?.map((e) => e.toJson()).toList(),
  'size': ?instance.size,
  'center': ?const _LatLongConverter().toJson(instance.center),
  'unit': ?_$GeoUnitEnumMap[instance.unit],
};

const _$GeoUnitEnumMap = {
  GeoUnit.millimeters: 'mm',
  GeoUnit.centimeters: 'cm',
  GeoUnit.meters: 'm',
  GeoUnit.kilometers: 'km',
  GeoUnit.inches: 'in',
  GeoUnit.feet: 'ft',
  GeoUnit.yard: 'yd',
  GeoUnit.miles: 'mi',
};

_ElasticRangeFacetImpl _$ElasticRangeFacetImplFromJson(
  Map<String, dynamic> json,
) => _ElasticRangeFacetImpl(
  name: json['name'] as String?,
  from: json['from'],
  to: json['to'],
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$ElasticRangeFacetImplToJson(
  _ElasticRangeFacetImpl instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'from': ?instance.from,
  'to': ?instance.to,
  'count': ?instance.count,
};

_ElasticFacet _$ElasticFacetFromJson(Map<String, dynamic> json) =>
    _ElasticFacet(
      type: $enumDecode(_$ElasticFacetTypeEnumMap, json['type']),
      name: json['name'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ElasticFacetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ElasticFacetToJson(_ElasticFacet instance) =>
    <String, dynamic>{
      'type': _$ElasticFacetTypeEnumMap[instance.type]!,
      'name': ?instance.name,
      'data': ?instance.data?.map((e) => e.toJson()).toList(),
    };

const _$ElasticFacetTypeEnumMap = {
  ElasticFacetType.value: 'value',
  ElasticFacetType.range: 'range',
};

_ElasticFacetData _$ElasticFacetDataFromJson(Map<String, dynamic> json) =>
    _ElasticFacetData(
      name: json['name'] as String?,
      value: json['value'],
      from: json['from'],
      to: json['to'],
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$ElasticFacetDataToJson(_ElasticFacetData instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'value': ?instance.value,
      'from': ?instance.from,
      'to': ?instance.to,
      'count': instance.count,
    };

_ElasticPageRequest _$ElasticPageRequestFromJson(Map<String, dynamic> json) =>
    _ElasticPageRequest(
      current: (json['current'] as num?)?.toInt() ?? 1,
      size: (json['size'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$ElasticPageRequestToJson(_ElasticPageRequest instance) =>
    <String, dynamic>{'current': instance.current, 'size': instance.size};

_ElasticQuery _$ElasticQueryFromJson(Map<String, dynamic> json) =>
    _ElasticQuery(
      query: json['query'] as String,
      precisionTuning: (json['precision'] as num?)?.toInt(),
      searchPage: json['page'] == null
          ? null
          : _ElasticSearchPage.fromJson(json['page'] as Map<String, dynamic>),
      filters: const _ElasticSearchFiltersConverter().fromJson(
        json['filters'] as Map?,
      ),
      searchFields: const _ElasticSearchFieldsConverter().fromJson(
        json['search_fields'] as Map?,
      ),
      boosts: const _ElasticBoostsConverter().fromJson(json['boosts'] as Map?),
      resultFields: const _ElasticResultFieldsConverter().fromJson(
        json['result_fields'] as Map?,
      ),
      facets: (json['facets'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, _ElasticQueryFacet.fromJson(e as Map<String, dynamic>)),
      ),
      disjunctiveFacets: (json['disjunctiveFacets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      analytics: json['analytics'] == null
          ? null
          : _ElasticAnalytics.fromJson(
              json['analytics'] as Map<String, dynamic>,
            ),
      recordAnalytics: json['record_analytics'] as bool?,
      groupBy: json['group'] == null
          ? null
          : _ElasticGroup.fromJson(json['group'] as Map<String, dynamic>),
      sortBy: const _ElasticSortConverter().fromJson(
        json['sort'] as List<Map<dynamic, dynamic>>?,
      ),
    );

Map<String, dynamic> _$ElasticQueryToJson(
  _ElasticQuery instance,
) => <String, dynamic>{
  'query': instance.query,
  'precision': ?instance.precisionTuning,
  'page': ?instance.searchPage?.toJson(),
  'filters': ?const _ElasticSearchFiltersConverter().toJson(instance.filters),
  'search_fields': ?const _ElasticSearchFieldsConverter().toJson(
    instance.searchFields,
  ),
  'boosts': ?const _ElasticBoostsConverter().toJson(instance.boosts),
  'result_fields': ?const _ElasticResultFieldsConverter().toJson(
    instance.resultFields,
  ),
  'facets': ?instance.facets?.map((k, e) => MapEntry(k, e.toJson())),
  'analytics': ?instance.analytics?.toJson(),
  'record_analytics': ?instance.recordAnalytics,
  'group': ?instance.groupBy?.toJson(),
  'sort': ?const _ElasticSortConverter().toJson(instance.sortBy),
};

_ElasticSearchPageImpl _$ElasticSearchPageImplFromJson(
  Map<String, dynamic> json,
) => _ElasticSearchPageImpl(
  size: (json['size'] as num?)?.toInt() ?? 10,
  current: (json['current'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$ElasticSearchPageImplToJson(
  _ElasticSearchPageImpl instance,
) => <String, dynamic>{'size': ?instance.size, 'current': ?instance.current};

_ElasticSearchFilterImpl _$ElasticSearchFilterImplFromJson(
  Map<String, dynamic> json,
) => _ElasticSearchFilterImpl(
  type:
      $enumDecodeNullable(_$_ElasticFilterTypeEnumMap, json['type']) ??
      _ElasticFilterType.all,
  name: json['name'] as String,
  value: json['value'],
);

Map<String, dynamic> _$ElasticSearchFilterImplToJson(
  _ElasticSearchFilterImpl instance,
) => <String, dynamic>{
  'type': _$_ElasticFilterTypeEnumMap[instance.type]!,
  'name': instance.name,
  'value': ?instance.value,
};

const _$_ElasticFilterTypeEnumMap = {
  _ElasticFilterType.all: 'all',
  _ElasticFilterType.none: 'none',
  _ElasticFilterType.any: 'any',
};

_ElasticDateRangeFilterImpl _$ElasticDateRangeFilterImplFromJson(
  Map<String, dynamic> json,
) => _ElasticDateRangeFilterImpl(
  from: json['from'] as String?,
  to: json['to'] as String?,
);

Map<String, dynamic> _$ElasticDateRangeFilterImplToJson(
  _ElasticDateRangeFilterImpl instance,
) => <String, dynamic>{'from': ?instance.from, 'to': ?instance.to};

_ElasticNumberRangeFilterImpl _$ElasticNumberRangeFilterImplFromJson(
  Map<String, dynamic> json,
) => _ElasticNumberRangeFilterImpl(
  from: (json['from'] as num?)?.toDouble(),
  to: (json['to'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ElasticNumberRangeFilterImplToJson(
  _ElasticNumberRangeFilterImpl instance,
) => <String, dynamic>{'from': ?instance.from, 'to': ?instance.to};

_ElasticGeoFilterImpl _$ElasticGeoFilterImplFromJson(
  Map<String, dynamic> json,
) => _ElasticGeoFilterImpl(
  center: const _LatLongConverter().fromJson(json['center'] as String?),
  distance: (json['distance'] as num?)?.toDouble(),
  unit: $enumDecode(_$GeoUnitEnumMap, json['unit']),
  from: (json['from'] as num?)?.toDouble(),
  to: (json['to'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ElasticGeoFilterImplToJson(
  _ElasticGeoFilterImpl instance,
) => <String, dynamic>{
  'center': ?const _LatLongConverter().toJson(instance.center),
  'distance': ?instance.distance,
  'unit': _$GeoUnitEnumMap[instance.unit]!,
  'from': ?instance.from,
  'to': ?instance.to,
};

_ElasticSearchFieldImpl _$ElasticSearchFieldImplFromJson(
  Map<String, dynamic> json,
) => _ElasticSearchFieldImpl(
  name: json['name'] as String,
  weight: (json['weight'] as num?)?.toInt(),
);

Map<String, dynamic> _$ElasticSearchFieldImplToJson(
  _ElasticSearchFieldImpl instance,
) => <String, dynamic>{'name': instance.name, 'weight': ?instance.weight};

_ElasticResultFieldImpl _$ElasticResultFieldImplFromJson(
  Map<String, dynamic> json,
) => _ElasticResultFieldImpl(
  name: json['name'] as String,
  rawSize: (json['rawSize'] as num?)?.toInt(),
  snippetSize: (json['snippetSize'] as num?)?.toInt(),
  fallback: json['fallback'] as bool? ?? true,
);

Map<String, dynamic> _$ElasticResultFieldImplToJson(
  _ElasticResultFieldImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'rawSize': ?instance.rawSize,
  'snippetSize': ?instance.snippetSize,
  'fallback': instance.fallback,
};

_ElasticGroupImpl _$ElasticGroupImplFromJson(Map<String, dynamic> json) =>
    _ElasticGroupImpl(
      field: json['field'] as String,
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ElasticGroupImplToJson(_ElasticGroupImpl instance) =>
    <String, dynamic>{'field': instance.field, 'size': ?instance.size};

_ElasticSortImpl _$ElasticSortImplFromJson(Map<String, dynamic> json) =>
    _ElasticSortImpl(
      field: json['field'] as String,
      descending: json['descending'] as bool? ?? false,
    );

Map<String, dynamic> _$ElasticSortImplToJson(_ElasticSortImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'descending': instance.descending,
    };

_ElasticSuggestionsQuery _$ElasticSuggestionsQueryFromJson(
  Map<String, dynamic> json,
) => _ElasticSuggestionsQuery(
  query: json['query'] as String,
  size: (json['size'] as num?)?.toInt() ?? 10,
  searchFields: const _ElasticSuggestionTypesConverter().fromJson(
    json['types'] as Map?,
  ),
  sortBy: const _ElasticSortConverter().fromJson(
    json['sort'] as List<Map<dynamic, dynamic>>?,
  ),
);

Map<String, dynamic> _$ElasticSuggestionsQueryToJson(
  _ElasticSuggestionsQuery instance,
) => <String, dynamic>{
  'query': instance.query,
  'size': ?instance.size,
  'types': ?const _ElasticSuggestionTypesConverter().toJson(
    instance.searchFields,
  ),
  'sort': ?const _ElasticSortConverter().toJson(instance.sortBy),
};

_ElasticResponse _$ElasticResponseFromJson(Map<String, dynamic> json) =>
    _ElasticResponse(
      meta: ElasticResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => ElasticResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      rawFacets: (json['facets'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>)
              .map((e) => ElasticFacet.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      ),
    );

Map<String, dynamic> _$ElasticResponseToJson(_ElasticResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta.toJson(),
      'results': instance.results.map((e) => e.toJson()).toList(),
      'facets': ?instance.rawFacets?.map(
        (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
      ),
    };

_ElasticResponseMeta _$ElasticResponseMetaFromJson(Map<String, dynamic> json) =>
    _ElasticResponseMeta(
      requestId: _toStringOrEmpty(json['request_id']),
      warnings: json['warnings'] as List<dynamic>,
      alerts: json['alerts'] as List<dynamic>,
      page: ElasticResponseMetaPage.fromJson(
        json['page'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ElasticResponseMetaToJson(
  _ElasticResponseMeta instance,
) => <String, dynamic>{
  'request_id': instance.requestId,
  'warnings': instance.warnings,
  'alerts': instance.alerts,
  'page': instance.page.toJson(),
};

_ElasticResponseMetaPage _$ElasticResponseMetaPageFromJson(
  Map<String, dynamic> json,
) => _ElasticResponseMetaPage(
  current: (json['current'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$ElasticResponseMetaPageToJson(
  _ElasticResponseMetaPage instance,
) => <String, dynamic>{
  'current': instance.current,
  'size': instance.size,
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};

_ElasticQuerySuggestionResponse _$ElasticQuerySuggestionResponseFromJson(
  Map<String, dynamic> json,
) => _ElasticQuerySuggestionResponse(
  results: ElasticSuggestionResult.fromJson(
    json['results'] as Map<String, dynamic>,
  ),
  meta: ElasticQuerySuggestionMeta.fromJson(
    json['meta'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ElasticQuerySuggestionResponseToJson(
  _ElasticQuerySuggestionResponse instance,
) => <String, dynamic>{
  'results': instance.results.toJson(),
  'meta': instance.meta.toJson(),
};

_ElasticQuerySuggestionMeta _$ElasticQuerySuggestionMetaFromJson(
  Map<String, dynamic> json,
) => _ElasticQuerySuggestionMeta(
  requestId: _toStringOrEmpty(json['request_id']),
);

Map<String, dynamic> _$ElasticQuerySuggestionMetaToJson(
  _ElasticQuerySuggestionMeta instance,
) => <String, dynamic>{'request_id': instance.requestId};

_ElasticSearchExplainEngine _$ElasticSearchExplainEngineFromJson(
  Map<String, dynamic> json,
) => _ElasticSearchExplainEngine(
  name: json['name'] as String,
  type: json['type'] as String?,
);

Map<String, dynamic> _$ElasticSearchExplainEngineToJson(
  _ElasticSearchExplainEngine instance,
) => <String, dynamic>{'name': instance.name, 'type': ?instance.type};

_ElasticSearchExplainMeta _$ElasticSearchExplainMetaFromJson(
  Map<String, dynamic> json,
) => _ElasticSearchExplainMeta(
  requestId: _toStringOrEmpty(json['request_id']),
  warnings: json['warnings'] as List<dynamic>,
  alerts: json['alerts'] as List<dynamic>,
  precision: (json['precision'] as num?)?.toInt(),
  engine: json['engine'] == null
      ? null
      : ElasticSearchExplainEngine.fromJson(
          json['engine'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ElasticSearchExplainMetaToJson(
  _ElasticSearchExplainMeta instance,
) => <String, dynamic>{
  'request_id': instance.requestId,
  'warnings': instance.warnings,
  'alerts': instance.alerts,
  'precision': ?instance.precision,
  'engine': ?instance.engine?.toJson(),
};

_ElasticSearchExplainResponse _$ElasticSearchExplainResponseFromJson(
  Map<String, dynamic> json,
) => _ElasticSearchExplainResponse(
  meta: ElasticSearchExplainMeta.fromJson(json['meta'] as Map<String, dynamic>),
  queryString: json['query_string'] as String,
  queryBody: const _StringDynamicMapConverter().fromJson(
    json['query_body'] as Map,
  ),
);

Map<String, dynamic> _$ElasticSearchExplainResponseToJson(
  _ElasticSearchExplainResponse instance,
) => <String, dynamic>{
  'meta': instance.meta.toJson(),
  'query_string': instance.queryString,
  'query_body': const _StringDynamicMapConverter().toJson(instance.queryBody),
};

_ElasticDocumentIndexResult _$ElasticDocumentIndexResultFromJson(
  Map<String, dynamic> json,
) => _ElasticDocumentIndexResult(
  id: _toStringOrEmpty(json['id']),
  errors: json['errors'] == null
      ? const <String>[]
      : _toStringList(json['errors']),
);

Map<String, dynamic> _$ElasticDocumentIndexResultToJson(
  _ElasticDocumentIndexResult instance,
) => <String, dynamic>{'id': instance.id, 'errors': instance.errors};

_ElasticDocumentDeleteResult _$ElasticDocumentDeleteResultFromJson(
  Map<String, dynamic> json,
) => _ElasticDocumentDeleteResult(
  id: _toStringOrEmpty(json['id']),
  deleted: json['deleted'] == null ? false : _toBool(json['deleted']),
);

Map<String, dynamic> _$ElasticDocumentDeleteResultToJson(
  _ElasticDocumentDeleteResult instance,
) => <String, dynamic>{'id': instance.id, 'deleted': instance.deleted};

_ElasticDocumentsListMeta _$ElasticDocumentsListMetaFromJson(
  Map<String, dynamic> json,
) => _ElasticDocumentsListMeta(
  page: ElasticResponseMetaPage.fromJson(json['page'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ElasticDocumentsListMetaToJson(
  _ElasticDocumentsListMeta instance,
) => <String, dynamic>{'page': instance.page.toJson()};

_ElasticDocumentsListResponse _$ElasticDocumentsListResponseFromJson(
  Map<String, dynamic> json,
) => _ElasticDocumentsListResponse(
  meta: ElasticDocumentsListMeta.fromJson(json['meta'] as Map<String, dynamic>),
  results: const _StringDynamicMapListConverter().fromJson(
    json['results'] as List,
  ),
);

Map<String, dynamic> _$ElasticDocumentsListResponseToJson(
  _ElasticDocumentsListResponse instance,
) => <String, dynamic>{
  'meta': instance.meta.toJson(),
  'results': const _StringDynamicMapListConverter().toJson(instance.results),
};

_ElasticEngineSummary _$ElasticEngineSummaryFromJson(
  Map<String, dynamic> json,
) => _ElasticEngineSummary(
  name: json['name'] as String,
  type: json['type'] as String?,
  language: json['language'] as String?,
  documentCount: _toNullableInt(json['document_count']),
);

Map<String, dynamic> _$ElasticEngineSummaryToJson(
  _ElasticEngineSummary instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': ?instance.type,
  'language': ?instance.language,
  'document_count': ?instance.documentCount,
};

_ElasticEnginesResponse _$ElasticEnginesResponseFromJson(
  Map<String, dynamic> json,
) => _ElasticEnginesResponse(
  meta: ElasticDocumentsListMeta.fromJson(json['meta'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>)
      .map((e) => ElasticEngineSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ElasticEnginesResponseToJson(
  _ElasticEnginesResponse instance,
) => <String, dynamic>{
  'meta': instance.meta.toJson(),
  'results': instance.results.map((e) => e.toJson()).toList(),
};

_ElasticResultMeta _$ElasticResultMetaFromJson(Map<String, dynamic> json) =>
    _ElasticResultMeta(score: (json['score'] as num?)?.toDouble());

Map<String, dynamic> _$ElasticResultMetaToJson(_ElasticResultMeta instance) =>
    <String, dynamic>{'score': ?instance.score};

_ElasticResult _$ElasticResultFromJson(Map<String, dynamic> json) =>
    _ElasticResult(
      data: json['data'] as Map<String, dynamic>?,
      snippets: (json['snippets'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          ElasticResultSnippet.fromJson(e as Map<String, dynamic>),
        ),
      ),
      meta: ElasticResultMeta.fromJson(json['_meta'] as Map<String, dynamic>),
      group: (json['_group'] as List<dynamic>?)
          ?.map((e) => ElasticResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupKey: json['_group_key'] as String?,
    );

Map<String, dynamic> _$ElasticResultToJson(_ElasticResult instance) =>
    <String, dynamic>{
      'data': ?instance.data,
      'snippets': ?instance.snippets?.map((k, e) => MapEntry(k, e.toJson())),
      '_meta': instance.meta.toJson(),
      '_group': ?instance.group?.map((e) => e.toJson()).toList(),
      '_group_key': ?instance.groupKey,
    };

_ElasticResultSnippet _$ElasticResultSnippetFromJson(
  Map<String, dynamic> json,
) => _ElasticResultSnippet(
  fullText: json['fullText'] as String,
  textParts: (json['textParts'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  highlights: (json['highlights'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ElasticResultSnippetToJson(
  _ElasticResultSnippet instance,
) => <String, dynamic>{
  'fullText': instance.fullText,
  'textParts': instance.textParts,
  'highlights': instance.highlights,
};

_ElasticSuggestionResult _$ElasticSuggestionResultFromJson(
  Map<String, dynamic> json,
) => _ElasticSuggestionResult(
  documents: (json['documents'] as List<dynamic>?)
      ?.map(
        (e) => ElasticSuggestionDocument.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ElasticSuggestionResultToJson(
  _ElasticSuggestionResult instance,
) => <String, dynamic>{
  'documents': ?instance.documents?.map((e) => e.toJson()).toList(),
};

_ElasticSuggestionDocument _$ElasticSuggestionDocumentFromJson(
  Map<String, dynamic> json,
) => _ElasticSuggestionDocument(suggestion: json['suggestion'] as String);

Map<String, dynamic> _$ElasticSuggestionDocumentToJson(
  _ElasticSuggestionDocument instance,
) => <String, dynamic>{'suggestion': instance.suggestion};
