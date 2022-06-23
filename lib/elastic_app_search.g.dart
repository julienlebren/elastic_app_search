// GENERATED CODE - DO NOT MODIFY BY HAND

part of elastic_app_search;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$__ElasticAnalytics _$$__ElasticAnalyticsFromJson(Map<String, dynamic> json) =>
    _$__ElasticAnalytics(
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$__ElasticAnalyticsToJson(
        _$__ElasticAnalytics instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };

_$__ElasticBoost _$$__ElasticBoostFromJson(Map<String, dynamic> json) =>
    _$__ElasticBoost(
      type: $enumDecode(_$BoostTypeEnumMap, json['type']),
      value:
          (json['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
      operation:
          $enumDecodeNullable(_$BoostOperationEnumMap, json['operation']),
      factor: (json['factor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$__ElasticBoostToJson(_$__ElasticBoost instance) {
  final val = <String, dynamic>{
    'type': _$BoostTypeEnumMap[instance.type],
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

_$__ElasticQueryFacet _$$__ElasticQueryFacetFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticQueryFacet(
      type: json['type'] as String,
      name: json['name'] as String?,
      ranges: (json['ranges'] as List<dynamic>?)
          ?.map((e) => _ElasticRangeFacet.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: json['size'] as int?,
      center: const _LatLongConverter().fromJson(json['center'] as String?),
      unit: $enumDecodeNullable(_$GeoUnitEnumMap, json['unit']),
    );

Map<String, dynamic> _$$__ElasticQueryFacetToJson(
    _$__ElasticQueryFacet instance) {
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

_$__ElasticRangeFacet _$$__ElasticRangeFacetFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticRangeFacet(
      name: json['name'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$__ElasticRangeFacetToJson(
    _$__ElasticRangeFacet instance) {
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

_$_ElasticFacet _$$_ElasticFacetFromJson(Map<String, dynamic> json) =>
    _$_ElasticFacet(
      type: $enumDecode(_$ElasticFacetTypeEnumMap, json['type']),
      name: json['name'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ElasticFacetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ElasticFacetToJson(_$_ElasticFacet instance) {
  final val = <String, dynamic>{
    'type': _$ElasticFacetTypeEnumMap[instance.type],
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

_$_ElasticFacetData _$$_ElasticFacetDataFromJson(Map<String, dynamic> json) =>
    _$_ElasticFacetData(
      name: json['name'] as String?,
      value: json['value'],
      from: json['from'],
      to: json['to'],
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_ElasticFacetDataToJson(_$_ElasticFacetData instance) {
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

_$_ElasticQuery _$$_ElasticQueryFromJson(Map<String, dynamic> json) =>
    _$_ElasticQuery(
      query: json['query'] as String,
      precisionTuning: json['precision'] as int?,
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

Map<String, dynamic> _$$_ElasticQueryToJson(_$_ElasticQuery instance) {
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

_$__ElasticSearchPage _$$__ElasticSearchPageFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticSearchPage(
      size: json['size'] as int? ?? 10,
      current: json['current'] as int? ?? 1,
    );

Map<String, dynamic> _$$__ElasticSearchPageToJson(
    _$__ElasticSearchPage instance) {
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

_$__ElasticSearchFilter _$$__ElasticSearchFilterFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticSearchFilter(
      type: $enumDecodeNullable(_$_ElasticFilterTypeEnumMap, json['type']) ??
          _ElasticFilterType.all,
      name: json['name'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$__ElasticSearchFilterToJson(
    _$__ElasticSearchFilter instance) {
  final val = <String, dynamic>{
    'type': _$_ElasticFilterTypeEnumMap[instance.type],
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

_$__ElasticDateRangeFilter _$$__ElasticDateRangeFilterFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticDateRangeFilter(
      from: json['from'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$$__ElasticDateRangeFilterToJson(
    _$__ElasticDateRangeFilter instance) {
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

_$__ElasticNumberRangeFilter _$$__ElasticNumberRangeFilterFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticNumberRangeFilter(
      from: (json['from'] as num?)?.toDouble(),
      to: (json['to'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$__ElasticNumberRangeFilterToJson(
    _$__ElasticNumberRangeFilter instance) {
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

_$__ElasticGeoFilter _$$__ElasticGeoFilterFromJson(Map<String, dynamic> json) =>
    _$__ElasticGeoFilter(
      center: const _LatLongConverter().fromJson(json['center'] as String?),
      distance: (json['distance'] as num?)?.toDouble(),
      unit: $enumDecode(_$GeoUnitEnumMap, json['unit']),
      from: (json['from'] as num?)?.toDouble(),
      to: (json['to'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$__ElasticGeoFilterToJson(
    _$__ElasticGeoFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('center', const _LatLongConverter().toJson(instance.center));
  writeNotNull('distance', instance.distance);
  val['unit'] = _$GeoUnitEnumMap[instance.unit];
  writeNotNull('from', instance.from);
  writeNotNull('to', instance.to);
  return val;
}

_$__ElasticSearchField _$$__ElasticSearchFieldFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticSearchField(
      name: json['name'] as String,
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$__ElasticSearchFieldToJson(
    _$__ElasticSearchField instance) {
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

_$__ElasticResultField _$$__ElasticResultFieldFromJson(
        Map<String, dynamic> json) =>
    _$__ElasticResultField(
      name: json['name'] as String,
      rawSize: json['rawSize'] as int?,
      snippetSize: json['snippetSize'] as int?,
      fallback: json['fallback'] as bool? ?? true,
    );

Map<String, dynamic> _$$__ElasticResultFieldToJson(
    _$__ElasticResultField instance) {
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

_$__ElasticGroup _$$__ElasticGroupFromJson(Map<String, dynamic> json) =>
    _$__ElasticGroup(
      field: json['field'] as String,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$$__ElasticGroupToJson(_$__ElasticGroup instance) {
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

_$__ElasticSort _$$__ElasticSortFromJson(Map<String, dynamic> json) =>
    _$__ElasticSort(
      field: json['field'] as String,
      descending: json['descending'] as bool? ?? false,
    );

Map<String, dynamic> _$$__ElasticSortToJson(_$__ElasticSort instance) =>
    <String, dynamic>{
      'field': instance.field,
      'descending': instance.descending,
    };

_$_ElasticResponse _$$_ElasticResponseFromJson(Map<String, dynamic> json) =>
    _$_ElasticResponse(
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

Map<String, dynamic> _$$_ElasticResponseToJson(_$_ElasticResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'results': instance.results,
      'facets': instance.rawFacets,
    };

_$_ElasticResponseMeta _$$_ElasticResponseMetaFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticResponseMeta(
      requestId: json['request_id'] as String,
      warnings: json['warnings'] as List<dynamic>,
      alerts: json['alerts'] as List<dynamic>,
      page: ElasticResponseMetaPage.fromJson(
          json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ElasticResponseMetaToJson(
        _$_ElasticResponseMeta instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'warnings': instance.warnings,
      'alerts': instance.alerts,
      'page': instance.page,
    };

_$_ElasticResponseMetaPage _$$_ElasticResponseMetaPageFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticResponseMetaPage(
      current: json['current'] as int,
      size: json['size'] as int,
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_ElasticResponseMetaPageToJson(
        _$_ElasticResponseMetaPage instance) =>
    <String, dynamic>{
      'current': instance.current,
      'size': instance.size,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$_ElasticResultMeta _$$_ElasticResultMetaFromJson(Map<String, dynamic> json) =>
    _$_ElasticResultMeta(
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ElasticResultMetaToJson(
        _$_ElasticResultMeta instance) =>
    <String, dynamic>{
      'score': instance.score,
    };

_$_ElasticResult _$$_ElasticResultFromJson(Map<String, dynamic> json) =>
    _$_ElasticResult(
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

Map<String, dynamic> _$$_ElasticResultToJson(_$_ElasticResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'snippets': instance.snippets,
      '_meta': instance.meta,
      '_group': instance.group,
      '_group_key': instance.groupKey,
    };

_$_ElasticResultSnippet _$$_ElasticResultSnippetFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticResultSnippet(
      fullText: json['fullText'] as String,
      textParts:
          (json['textParts'] as List<dynamic>).map((e) => e as String).toList(),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ElasticResultSnippetToJson(
        _$_ElasticResultSnippet instance) =>
    <String, dynamic>{
      'fullText': instance.fullText,
      'textParts': instance.textParts,
      'highlights': instance.highlights,
    };
