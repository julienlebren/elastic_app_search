// GENERATED CODE - DO NOT MODIFY BY HAND

part of elastic_app_search;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Query _$$_QueryFromJson(Map<String, dynamic> json) => _$_Query(
      query: json['query'] as String,
      page: json['page'] == null
          ? null
          : SearchPage.fromJson(json['page'] as Map<String, dynamic>),
      sort: (json['sort'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
      group: (json['group'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      filters: const SearchFiltersConverter().fromJson(json['filters'] as Map?),
      searchFields:
          const SearchFieldsConverter().fromJson(json['search_fields'] as Map?),
      resultFields: json['result_fields'] == null
          ? const []
          : const ResultFieldsConverter()
              .fromJson(json['result_fields'] as Map?),
    );

Map<String, dynamic> _$$_QueryToJson(_$_Query instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page?.toJson());
  writeNotNull('sort', instance.sort);
  writeNotNull('group', instance.group);
  writeNotNull(
      'filters', const SearchFiltersConverter().toJson(instance.filters));
  writeNotNull('search_fields',
      const SearchFieldsConverter().toJson(instance.searchFields));
  writeNotNull('result_fields',
      const ResultFieldsConverter().toJson(instance.resultFields));
  return val;
}

_$_SearchPage _$$_SearchPageFromJson(Map<String, dynamic> json) =>
    _$_SearchPage(
      size: json['size'] as int? ?? 10,
      current: json['current'] as int? ?? 1,
    );

Map<String, dynamic> _$$_SearchPageToJson(_$_SearchPage instance) {
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

_$_SearchFilter _$$_SearchFilterFromJson(Map<String, dynamic> json) =>
    _$_SearchFilter(
      name: json['name'] as String,
      value: json['value'] as List<dynamic>,
    );

Map<String, dynamic> _$$_SearchFilterToJson(_$_SearchFilter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$_SearchField _$$_SearchFieldFromJson(Map<String, dynamic> json) =>
    _$_SearchField(
      name: json['name'] as String,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SearchFieldToJson(_$_SearchField instance) {
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

_$_ResultField _$$_ResultFieldFromJson(Map<String, dynamic> json) =>
    _$_ResultField(
      name: json['name'] as String,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$$_ResultFieldToJson(_$_ResultField instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  return val;
}

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      meta: ResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'results': instance.results,
    };

_$_ResponseMeta _$$_ResponseMetaFromJson(Map<String, dynamic> json) =>
    _$_ResponseMeta(
      page: ResponsePage.fromJson(json['page'] as Map<String, dynamic>),
      precision: json['precision'] as int,
      alerts: json['alerts'] as List<dynamic>,
      warnings: json['warnings'] as List<dynamic>,
      request_id: json['request_id'] as String,
    );

Map<String, dynamic> _$$_ResponseMetaToJson(_$_ResponseMeta instance) =>
    <String, dynamic>{
      'page': instance.page,
      'precision': instance.precision,
      'alerts': instance.alerts,
      'warnings': instance.warnings,
      'request_id': instance.request_id,
    };

_$_ResponsePage _$$_ResponsePageFromJson(Map<String, dynamic> json) =>
    _$_ResponsePage(
      current: json['current'] as int,
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$$_ResponsePageToJson(_$_ResponsePage instance) =>
    <String, dynamic>{
      'current': instance.current,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'size': instance.size,
    };

_$_ResultMeta _$$_ResultMetaFromJson(Map<String, dynamic> json) =>
    _$_ResultMeta(
      id: json['id'] as String,
      engine: json['engine'] as String,
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ResultMetaToJson(_$_ResultMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'engine': instance.engine,
      'score': instance.score,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: json['data'] as Map<String, dynamic>?,
      meta: ResultMeta.fromJson(json['_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
      '_meta': instance.meta,
    };
