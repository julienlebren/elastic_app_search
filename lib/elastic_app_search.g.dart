// GENERATED CODE - DO NOT MODIFY BY HAND

part of elastic_app_search;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ElasticQuery _$$_ElasticQueryFromJson(Map<String, dynamic> json) =>
    _$_ElasticQuery(
      query: json['query'] as String,
      queryPrecision: json['precision'] as int?,
      searchPage: json['page'] == null
          ? null
          : ElasticSearchPage.fromJson(json['page'] as Map<String, dynamic>),
      filters: const _ElasticSearchFiltersConverter()
          .fromJson(json['filters'] as Map?),
      searchFields: const _ElasticSearchFieldsConverter()
          .fromJson(json['search_fields'] as Map?),
      resultFields: json['result_fields'] == null
          ? const []
          : const _ElasticResultFieldsConverter()
              .fromJson(json['result_fields'] as Map?),
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

  writeNotNull('precision', instance.queryPrecision);
  writeNotNull('page', instance.searchPage?.toJson());
  writeNotNull('filters',
      const _ElasticSearchFiltersConverter().toJson(instance.filters));
  writeNotNull('search_fields',
      const _ElasticSearchFieldsConverter().toJson(instance.searchFields));
  writeNotNull('result_fields',
      const _ElasticResultFieldsConverter().toJson(instance.resultFields));
  return val;
}

_$_ElasticSearchPage _$$_ElasticSearchPageFromJson(Map<String, dynamic> json) =>
    _$_ElasticSearchPage(
      size: json['size'] as int? ?? 10,
      current: json['current'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ElasticSearchPageToJson(
    _$_ElasticSearchPage instance) {
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

_$_ElasticSearchFilter _$$_ElasticSearchFilterFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticSearchFilter(
      name: json['name'] as String,
      value: json['value'] as List<dynamic>,
    );

Map<String, dynamic> _$$_ElasticSearchFilterToJson(
        _$_ElasticSearchFilter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$_ElasticSearchField _$$_ElasticSearchFieldFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticSearchField(
      name: json['name'] as String,
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$_ElasticSearchFieldToJson(
    _$_ElasticSearchField instance) {
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

_$_ElasticResultField _$$_ElasticResultFieldFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticResultField(
      name: json['name'] as String,
      rawSize: json['rawSize'] as int?,
      snippetSize: json['snippetSize'] as int?,
      fallback: json['fallback'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ElasticResultFieldToJson(
    _$_ElasticResultField instance) {
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

_$_ElasticResponse _$$_ElasticResponseFromJson(Map<String, dynamic> json) =>
    _$_ElasticResponse(
      meta: ElasticResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => ElasticResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ElasticResponseToJson(_$_ElasticResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'results': instance.results,
    };

_$_ElasticResponseMeta _$$_ElasticResponseMetaFromJson(
        Map<String, dynamic> json) =>
    _$_ElasticResponseMeta(
      request_id: json['request_id'] as String,
      warnings: json['warnings'] as List<dynamic>,
      alerts: json['alerts'] as List<dynamic>,
      page: ElasticMetaPage.fromJson(json['page'] as Map<String, dynamic>),
      precision: json['precision'] as int,
    );

Map<String, dynamic> _$$_ElasticResponseMetaToJson(
        _$_ElasticResponseMeta instance) =>
    <String, dynamic>{
      'request_id': instance.request_id,
      'warnings': instance.warnings,
      'alerts': instance.alerts,
      'page': instance.page,
      'precision': instance.precision,
    };

_$_ElasticMetaPage _$$_ElasticMetaPageFromJson(Map<String, dynamic> json) =>
    _$_ElasticMetaPage(
      current: json['current'] as int,
      size: json['size'] as int,
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_ElasticMetaPageToJson(_$_ElasticMetaPage instance) =>
    <String, dynamic>{
      'current': instance.current,
      'size': instance.size,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$_ElasticResultMeta _$$_ElasticResultMetaFromJson(Map<String, dynamic> json) =>
    _$_ElasticResultMeta(
      id: json['id'] as String,
      engine: json['engine'] as String,
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ElasticResultMetaToJson(
        _$_ElasticResultMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'engine': instance.engine,
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
    );

Map<String, dynamic> _$$_ElasticResultToJson(_$_ElasticResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'snippets': instance.snippets,
      '_meta': instance.meta,
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
