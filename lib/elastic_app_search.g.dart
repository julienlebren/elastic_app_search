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

_ElasticBoostImpl _$ElasticBoostImplFromJson(
  Map<String, dynamic> json,
) => _ElasticBoostImpl(
  type: $enumDecode(_$BoostTypeEnumMap, json['type']),
  value: (json['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
  operation: $enumDecodeNullable(_$BoostOperationEnumMap, json['operation']),
  factor: (json['factor'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ElasticBoostImplToJson(_ElasticBoostImpl instance) =>
    <String, dynamic>{
      'type': _$BoostTypeEnumMap[instance.type]!,
      'value': ?instance.value,
      'operation': ?_$BoostOperationEnumMap[instance.operation],
      'factor': ?instance.factor,
    };

const _$BoostTypeEnumMap = {
  BoostType.value: 'value',
  BoostType.functional: 'functional',
  BoostType.proximity: 'proximity',
  BoostType.recency: 'recency',
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
  from: json['from'] as String?,
  to: json['to'] as String?,
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
  'result_fields': ?const _ElasticResultFieldsConverter().toJson(
    instance.resultFields,
  ),
  'facets': ?instance.facets?.map((k, e) => MapEntry(k, e.toJson())),
  'analytics': ?instance.analytics?.toJson(),
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
  sizeField: (json['size'] as num?)?.toInt() ?? 10,
  searchFields: const _ElasticSearchFieldsConverter().fromJson(
    json['search_fields'] as Map?,
  ),
  sortBy: const _ElasticSortConverter().fromJson(
    json['sort'] as List<Map<dynamic, dynamic>>?,
  ),
);

Map<String, dynamic> _$ElasticSuggestionsQueryToJson(
  _ElasticSuggestionsQuery instance,
) => <String, dynamic>{
  'query': instance.query,
  'size': ?instance.sizeField,
  'search_fields': ?const _ElasticSearchFieldsConverter().toJson(
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
      'meta': instance.meta,
      'results': instance.results,
      'facets': instance.rawFacets,
    };

_ElasticResponseMeta _$ElasticResponseMetaFromJson(Map<String, dynamic> json) =>
    _ElasticResponseMeta(
      requestId: json['request_id'] as String,
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
  'page': instance.page,
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
);

Map<String, dynamic> _$ElasticQuerySuggestionResponseToJson(
  _ElasticQuerySuggestionResponse instance,
) => <String, dynamic>{'results': instance.results};

_ElasticResultMeta _$ElasticResultMetaFromJson(Map<String, dynamic> json) =>
    _ElasticResultMeta(score: (json['score'] as num?)?.toDouble());

Map<String, dynamic> _$ElasticResultMetaToJson(_ElasticResultMeta instance) =>
    <String, dynamic>{'score': instance.score};

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
      'data': instance.data,
      'snippets': instance.snippets,
      '_meta': instance.meta,
      '_group': instance.group,
      '_group_key': instance.groupKey,
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
) => <String, dynamic>{'documents': instance.documents};

_ElasticSuggestionDocument _$ElasticSuggestionDocumentFromJson(
  Map<String, dynamic> json,
) => _ElasticSuggestionDocument(suggestion: json['suggestion'] as String);

Map<String, dynamic> _$ElasticSuggestionDocumentToJson(
  _ElasticSuggestionDocument instance,
) => <String, dynamic>{'suggestion': instance.suggestion};
