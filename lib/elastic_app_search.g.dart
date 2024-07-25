// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_app_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ElasticAnalyticsImpl _$$_ElasticAnalyticsImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticAnalyticsImpl(
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ElasticAnalyticsImplToJson(
        _$_ElasticAnalyticsImpl instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };

_$_ElasticBoostImpl _$$_ElasticBoostImplFromJson(Map<String, dynamic> json) =>
    _$_ElasticBoostImpl(
      type: $enumDecode(_$BoostTypeEnumMap, json['type']),
      value:
          (json['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
      operation:
          $enumDecodeNullable(_$BoostOperationEnumMap, json['operation']),
      factor: (json['factor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ElasticBoostImplToJson(_$_ElasticBoostImpl instance) {
  final val = <String, dynamic>{
    'type': _$BoostTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('operation', _$BoostOperationEnumMap[instance.operation]);
  writeNotNull('factor', instance.factor);
  return val;
}

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

_$_ElasticQueryFacetImpl _$$_ElasticQueryFacetImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticQueryFacetImpl(
      type: json['type'] as String,
      name: json['name'] as String?,
      ranges: (json['ranges'] as List<dynamic>?)
          ?.map((e) => _ElasticRangeFacet.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as num?)?.toInt(),
      center: const _LatLongConverter().fromJson(json['center'] as String?),
      unit: $enumDecodeNullable(_$GeoUnitEnumMap, json['unit']),
    );

Map<String, dynamic> _$$_ElasticQueryFacetImplToJson(
    _$_ElasticQueryFacetImpl instance) {
  final val = <String, dynamic>{
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('ranges', instance.ranges?.map((e) => e.toJson()).toList());
  writeNotNull('size', instance.size);
  writeNotNull('center', const _LatLongConverter().toJson(instance.center));
  writeNotNull('unit', _$GeoUnitEnumMap[instance.unit]);
  return val;
}

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

_$_ElasticRangeFacetImpl _$$_ElasticRangeFacetImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticRangeFacetImpl(
      name: json['name'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_ElasticRangeFacetImplToJson(
    _$_ElasticRangeFacetImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('from', instance.from);
  writeNotNull('to', instance.to);
  writeNotNull('count', instance.count);
  return val;
}

_$ElasticFacetImpl _$$ElasticFacetImplFromJson(Map<String, dynamic> json) =>
    _$ElasticFacetImpl(
      type: $enumDecode(_$ElasticFacetTypeEnumMap, json['type']),
      name: json['name'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ElasticFacetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ElasticFacetImplToJson(_$ElasticFacetImpl instance) {
  final val = <String, dynamic>{
    'type': _$ElasticFacetTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

const _$ElasticFacetTypeEnumMap = {
  ElasticFacetType.value: 'value',
  ElasticFacetType.range: 'range',
};

_$ElasticFacetDataImpl _$$ElasticFacetDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticFacetDataImpl(
      name: json['name'] as String?,
      value: json['value'],
      from: json['from'],
      to: json['to'],
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$ElasticFacetDataImplToJson(
    _$ElasticFacetDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  writeNotNull('from', instance.from);
  writeNotNull('to', instance.to);
  val['count'] = instance.count;
  return val;
}

_$ElasticQueryImpl _$$ElasticQueryImplFromJson(Map<String, dynamic> json) =>
    _$ElasticQueryImpl(
      query: json['query'] as String,
      precisionTuning: (json['precision'] as num?)?.toInt(),
      searchPage: json['page'] == null
          ? null
          : _ElasticSearchPage.fromJson(json['page'] as Map<String, dynamic>),
      filters: const _ElasticSearchFiltersConverter()
          .fromJson(json['filters'] as Map?),
      searchFields: const _ElasticSearchFieldsConverter()
          .fromJson(json['search_fields'] as Map?),
      resultFields: const _ElasticResultFieldsConverter()
          .fromJson(json['result_fields'] as Map?),
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
              json['analytics'] as Map<String, dynamic>),
      groupBy: json['group'] == null
          ? null
          : _ElasticGroup.fromJson(json['group'] as Map<String, dynamic>),
      sortBy: const _ElasticSortConverter()
          .fromJson(json['sort'] as List<Map<dynamic, dynamic>>?),
    );

Map<String, dynamic> _$$ElasticQueryImplToJson(_$ElasticQueryImpl instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('precision', instance.precisionTuning);
  writeNotNull('page', instance.searchPage?.toJson());
  writeNotNull('filters',
      const _ElasticSearchFiltersConverter().toJson(instance.filters));
  writeNotNull('search_fields',
      const _ElasticSearchFieldsConverter().toJson(instance.searchFields));
  writeNotNull('result_fields',
      const _ElasticResultFieldsConverter().toJson(instance.resultFields));
  writeNotNull(
      'facets', instance.facets?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('analytics', instance.analytics?.toJson());
  writeNotNull('group', instance.groupBy?.toJson());
  writeNotNull('sort', const _ElasticSortConverter().toJson(instance.sortBy));
  return val;
}

_$_ElasticSearchPageImpl _$$_ElasticSearchPageImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticSearchPageImpl(
      size: (json['size'] as num?)?.toInt() ?? 10,
      current: (json['current'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$_ElasticSearchPageImplToJson(
    _$_ElasticSearchPageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  writeNotNull('current', instance.current);
  return val;
}

_$_ElasticSearchFilterImpl _$$_ElasticSearchFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticSearchFilterImpl(
      type: $enumDecodeNullable(_$_ElasticFilterTypeEnumMap, json['type']) ??
          _ElasticFilterType.all,
      name: json['name'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$_ElasticSearchFilterImplToJson(
    _$_ElasticSearchFilterImpl instance) {
  final val = <String, dynamic>{
    'type': _$_ElasticFilterTypeEnumMap[instance.type]!,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  return val;
}

const _$_ElasticFilterTypeEnumMap = {
  _ElasticFilterType.all: 'all',
  _ElasticFilterType.none: 'none',
  _ElasticFilterType.any: 'any',
};

_$_ElasticDateRangeFilterImpl _$$_ElasticDateRangeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticDateRangeFilterImpl(
      from: json['from'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$$_ElasticDateRangeFilterImplToJson(
    _$_ElasticDateRangeFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from', instance.from);
  writeNotNull('to', instance.to);
  return val;
}

_$_ElasticNumberRangeFilterImpl _$$_ElasticNumberRangeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticNumberRangeFilterImpl(
      from: (json['from'] as num?)?.toDouble(),
      to: (json['to'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ElasticNumberRangeFilterImplToJson(
    _$_ElasticNumberRangeFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from', instance.from);
  writeNotNull('to', instance.to);
  return val;
}

_$_ElasticGeoFilterImpl _$$_ElasticGeoFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticGeoFilterImpl(
      center: const _LatLongConverter().fromJson(json['center'] as String?),
      distance: (json['distance'] as num?)?.toDouble(),
      unit: $enumDecode(_$GeoUnitEnumMap, json['unit']),
      from: (json['from'] as num?)?.toDouble(),
      to: (json['to'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ElasticGeoFilterImplToJson(
    _$_ElasticGeoFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('center', const _LatLongConverter().toJson(instance.center));
  writeNotNull('distance', instance.distance);
  val['unit'] = _$GeoUnitEnumMap[instance.unit]!;
  writeNotNull('from', instance.from);
  writeNotNull('to', instance.to);
  return val;
}

_$_ElasticSearchFieldImpl _$$_ElasticSearchFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticSearchFieldImpl(
      name: json['name'] as String,
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_ElasticSearchFieldImplToJson(
    _$_ElasticSearchFieldImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('weight', instance.weight);
  return val;
}

_$_ElasticResultFieldImpl _$$_ElasticResultFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticResultFieldImpl(
      name: json['name'] as String,
      rawSize: (json['rawSize'] as num?)?.toInt(),
      snippetSize: (json['snippetSize'] as num?)?.toInt(),
      fallback: json['fallback'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ElasticResultFieldImplToJson(
    _$_ElasticResultFieldImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rawSize', instance.rawSize);
  writeNotNull('snippetSize', instance.snippetSize);
  val['fallback'] = instance.fallback;
  return val;
}

_$_ElasticGroupImpl _$$_ElasticGroupImplFromJson(Map<String, dynamic> json) =>
    _$_ElasticGroupImpl(
      field: json['field'] as String,
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_ElasticGroupImplToJson(_$_ElasticGroupImpl instance) {
  final val = <String, dynamic>{
    'field': instance.field,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  return val;
}

_$_ElasticSortImpl _$$_ElasticSortImplFromJson(Map<String, dynamic> json) =>
    _$_ElasticSortImpl(
      field: json['field'] as String,
      descending: json['descending'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ElasticSortImplToJson(_$_ElasticSortImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'descending': instance.descending,
    };

_$ElasticSuggestionsQueryImpl _$$ElasticSuggestionsQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticSuggestionsQueryImpl(
      query: json['query'] as String,
      sizeField: (json['size'] as num?)?.toInt() ?? 10,
      searchFields: const _ElasticSearchFieldsConverter()
          .fromJson(json['search_fields'] as Map?),
      sortBy: const _ElasticSortConverter()
          .fromJson(json['sort'] as List<Map<dynamic, dynamic>>?),
    );

Map<String, dynamic> _$$ElasticSuggestionsQueryImplToJson(
    _$ElasticSuggestionsQueryImpl instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.sizeField);
  writeNotNull('search_fields',
      const _ElasticSearchFieldsConverter().toJson(instance.searchFields));
  writeNotNull('sort', const _ElasticSortConverter().toJson(instance.sortBy));
  return val;
}

_$ElasticResponseImpl _$$ElasticResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticResponseImpl(
      meta: ElasticResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => ElasticResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      rawFacets: (json['facets'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => ElasticFacet.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$ElasticResponseImplToJson(
        _$ElasticResponseImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'results': instance.results,
      'facets': instance.rawFacets,
    };

_$ElasticResponseMetaImpl _$$ElasticResponseMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticResponseMetaImpl(
      requestId: json['request_id'] as String,
      warnings: json['warnings'] as List<dynamic>,
      alerts: json['alerts'] as List<dynamic>,
      page: ElasticResponseMetaPage.fromJson(
          json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ElasticResponseMetaImplToJson(
        _$ElasticResponseMetaImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'warnings': instance.warnings,
      'alerts': instance.alerts,
      'page': instance.page,
    };

_$ElasticResponseMetaPageImpl _$$ElasticResponseMetaPageImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticResponseMetaPageImpl(
      current: (json['current'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$$ElasticResponseMetaPageImplToJson(
        _$ElasticResponseMetaPageImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'size': instance.size,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$ElasticQuerySuggestionResponseImpl
    _$$ElasticQuerySuggestionResponseImplFromJson(Map<String, dynamic> json) =>
        _$ElasticQuerySuggestionResponseImpl(
          results: ElasticSuggestionResult.fromJson(
              json['results'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ElasticQuerySuggestionResponseImplToJson(
        _$ElasticQuerySuggestionResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ElasticResultMetaImpl _$$ElasticResultMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticResultMetaImpl(
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ElasticResultMetaImplToJson(
        _$ElasticResultMetaImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
    };

_$ElasticResultImpl _$$ElasticResultImplFromJson(Map<String, dynamic> json) =>
    _$ElasticResultImpl(
      data: json['data'] as Map<String, dynamic>?,
      snippets: (json['snippets'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, ElasticResultSnippet.fromJson(e as Map<String, dynamic>)),
      ),
      meta: ElasticResultMeta.fromJson(json['_meta'] as Map<String, dynamic>),
      group: (json['_group'] as List<dynamic>?)
          ?.map((e) => ElasticResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupKey: json['_group_key'] as String?,
    );

Map<String, dynamic> _$$ElasticResultImplToJson(_$ElasticResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'snippets': instance.snippets,
      '_meta': instance.meta,
      '_group': instance.group,
      '_group_key': instance.groupKey,
    };

_$ElasticResultSnippetImpl _$$ElasticResultSnippetImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticResultSnippetImpl(
      fullText: json['fullText'] as String,
      textParts:
          (json['textParts'] as List<dynamic>).map((e) => e as String).toList(),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ElasticResultSnippetImplToJson(
        _$ElasticResultSnippetImpl instance) =>
    <String, dynamic>{
      'fullText': instance.fullText,
      'textParts': instance.textParts,
      'highlights': instance.highlights,
    };

_$ElasticSuggestionResultImpl _$$ElasticSuggestionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticSuggestionResultImpl(
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) =>
              ElasticSuggestionDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ElasticSuggestionResultImplToJson(
        _$ElasticSuggestionResultImpl instance) =>
    <String, dynamic>{
      'documents': instance.documents,
    };

_$ElasticSuggestionDocumentImpl _$$ElasticSuggestionDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$ElasticSuggestionDocumentImpl(
      suggestion: json['suggestion'] as String,
    );

Map<String, dynamic> _$$ElasticSuggestionDocumentImplToJson(
        _$ElasticSuggestionDocumentImpl instance) =>
    <String, dynamic>{
      'suggestion': instance.suggestion,
    };
