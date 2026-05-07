part of '../elastic_app_search.dart';

/// An object containing the response for a given query
///
/// See [https://www.elastic.co/guide/en/app-search/current/search.html]
@freezed
abstract class ElasticResponse with _$ElasticResponse {
  ElasticResponse._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticResponse({
    /// Object delimiting the results meta data.
    required ElasticResponseMeta meta,

    /// Array of results matching the search.
    required List<ElasticResult> results,

    /// Map of facets passed to the query
    @JsonKey(name: "facets") Map<String, List<ElasticFacet>>? rawFacets,
  }) = _ElasticResponse;

  factory ElasticResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticResponseFromJson(json);

  /// Easier way to retrieve a list of facets rather than use the raw map
  List<ElasticFacet>? facets(String field) => rawFacets?[field];

  /// Easier way to retrieve a single facet
  ElasticFacet? facet(String field) {
    final facets = rawFacets?[field];
    if (facets != null && facets.length == 1) return facets.first;
    return null;
  }
}

/// Object delimiting the results meta data.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search.html#search-api-response-body]
@freezed
abstract class ElasticResponseMeta with _$ElasticResponseMeta {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticResponseMeta({
    /// String ID representing the request. Guaranteed to be unique.
    @JsonKey(name: "request_id") required String requestId,

    /// Array of warnings for the query.
    ///
    /// Included with error responses and success responses, so inspect all responses for warnings.
    required List<dynamic> warnings,

    /// Array of alerts for your deployment.
    ///
    /// Included with error responses and success responses, so inspect all responses for alerts.
    required List<dynamic> alerts,

    /// Object delimiting the pagination meta data.
    required ElasticResponseMetaPage page,
  }) = _ElasticResponseMeta;

  factory ElasticResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$ElasticResponseMetaFromJson(json);
}

/// Object delimiting the pagination meta data.
@freezed
abstract class ElasticResponseMetaPage with _$ElasticResponseMetaPage {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticResponseMetaPage({
    /// Number representing the current page of results.
    required int current,

    /// Number representing the results per page.
    required int size,

    /// Number representing the total pages of results.
    /// Value is 0 when you paginate beyond 10,000 results.
    ///
    /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
    @JsonKey(name: "total_pages") required int totalPages,

    /// Number representing the total results across all pages.
    ///
    /// The values 0 through 9999 are exact counts.
    ///
    /// The value 10000 is a pseudo keyword representing greater than or equal to 10,000 results.
    ///
    /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-display-total]
    /// and [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-count-documents]
    @JsonKey(name: "total_results") required int totalResults,
  }) = _ElasticResponseMetaPage;

  factory ElasticResponseMetaPage.fromJson(Map<String, dynamic> json) =>
      _$ElasticResponseMetaPageFromJson(json);
}

@freezed
abstract class ElasticQuerySuggestionResponse
    with _$ElasticQuerySuggestionResponse {
  ElasticQuerySuggestionResponse._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticQuerySuggestionResponse({
    /// Documents containing the suggestions
    required ElasticSuggestionResult results,

    /// Metadata for the query suggestion request.
    required ElasticQuerySuggestionMeta meta,
  }) = _ElasticQuerySuggestionResponse;

  factory ElasticQuerySuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticQuerySuggestionResponseFromJson(json);
}

@freezed
abstract class ElasticQuerySuggestionMeta with _$ElasticQuerySuggestionMeta {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticQuerySuggestionMeta({
    @JsonKey(name: "request_id") required String requestId,
  }) = _ElasticQuerySuggestionMeta;

  factory ElasticQuerySuggestionMeta.fromJson(Map<String, dynamic> json) =>
      _$ElasticQuerySuggestionMetaFromJson(json);
}

class _StringDynamicMapConverter
    implements JsonConverter<Map<String, dynamic>, Map<dynamic, dynamic>> {
  const _StringDynamicMapConverter();

  @override
  Map<String, dynamic> fromJson(Map<dynamic, dynamic> json) {
    final mapped = _asStringDynamicMap(json);
    if (mapped == null) {
      throw FormatException('Expected a JSON object.');
    }
    return mapped;
  }

  @override
  Map<String, dynamic> toJson(Map<String, dynamic> object) => object;
}

@freezed
abstract class ElasticSearchExplainEngine with _$ElasticSearchExplainEngine {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticSearchExplainEngine({required String name, String? type}) =
      _ElasticSearchExplainEngine;

  factory ElasticSearchExplainEngine.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchExplainEngineFromJson(json);
}

@freezed
abstract class ElasticSearchExplainMeta with _$ElasticSearchExplainMeta {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticSearchExplainMeta({
    @JsonKey(name: "request_id") required String requestId,
    required List<dynamic> warnings,
    required List<dynamic> alerts,
    int? precision,
    ElasticSearchExplainEngine? engine,
  }) = _ElasticSearchExplainMeta;

  factory ElasticSearchExplainMeta.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchExplainMetaFromJson(json);
}

@freezed
abstract class ElasticSearchExplainResponse
    with _$ElasticSearchExplainResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticSearchExplainResponse({
    required ElasticSearchExplainMeta meta,
    @JsonKey(name: "query_string") required String queryString,
    @_StringDynamicMapConverter()
    @JsonKey(name: "query_body")
    required Map<String, dynamic> queryBody,
  }) = _ElasticSearchExplainResponse;

  factory ElasticSearchExplainResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchExplainResponseFromJson(json);
}

class _StringDynamicMapListConverter
    implements JsonConverter<List<Map<String, dynamic>>, List<dynamic>> {
  const _StringDynamicMapListConverter();

  @override
  List<Map<String, dynamic>> fromJson(List<dynamic> value) {
    final maps = <Map<String, dynamic>>[];
    for (final item in value) {
      final mapped = _asStringDynamicMap(item);
      if (mapped != null) {
        maps.add(mapped);
      }
    }
    return maps;
  }

  @override
  List<Map<String, dynamic>> toJson(List<Map<String, dynamic>> value) => value;
}

List<String> _toStringList(dynamic value) {
  if (value is! List) return const <String>[];
  return value.map((entry) => entry.toString()).toList();
}

String _toStringOrEmpty(dynamic value) => value?.toString() ?? '';

bool _toBool(dynamic value) {
  if (value is bool) return value;
  if (value is num) return value != 0;
  if (value is String) {
    final normalized = value.trim().toLowerCase();
    if (normalized == 'true') return true;
    if (normalized == 'false') return false;
  }
  return false;
}

/// Result entry returned by documents index/create/update operations.
@freezed
abstract class ElasticDocumentIndexResult with _$ElasticDocumentIndexResult {
  const ElasticDocumentIndexResult._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticDocumentIndexResult({
    /// Document identifier returned by App Search for the batch entry.
    @JsonKey(fromJson: _toStringOrEmpty) required String id,

    /// Per-document indexing errors returned by App Search.
    ///
    /// Empty means the document was accepted.
    @JsonKey(fromJson: _toStringList) @Default(<String>[]) List<String> errors,
  }) = _ElasticDocumentIndexResult;

  factory ElasticDocumentIndexResult.fromJson(Map<String, dynamic> json) =>
      _$ElasticDocumentIndexResultFromJson(json);

  /// Whether the document was accepted for indexing.
  bool get accepted => errors.isEmpty;
}

/// Result entry returned by the documents delete endpoint.
@freezed
abstract class ElasticDocumentDeleteResult with _$ElasticDocumentDeleteResult {
  const ElasticDocumentDeleteResult._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticDocumentDeleteResult({
    /// Document identifier.
    @JsonKey(fromJson: _toStringOrEmpty) required String id,

    /// `true` when the document was deleted, otherwise `false`.
    @JsonKey(fromJson: _toBool) @Default(false) bool deleted,
  }) = _ElasticDocumentDeleteResult;

  factory ElasticDocumentDeleteResult.fromJson(Map<String, dynamic> json) =>
      _$ElasticDocumentDeleteResultFromJson(json);
}

@freezed
abstract class ElasticDocumentsListMeta with _$ElasticDocumentsListMeta {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticDocumentsListMeta({required ElasticResponseMetaPage page}) =
      _ElasticDocumentsListMeta;

  factory ElasticDocumentsListMeta.fromJson(Map<String, dynamic> json) =>
      _$ElasticDocumentsListMetaFromJson(json);
}

@freezed
abstract class ElasticDocumentsListResponse
    with _$ElasticDocumentsListResponse {
  const ElasticDocumentsListResponse._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticDocumentsListResponse({
    required ElasticDocumentsListMeta meta,
    @_StringDynamicMapListConverter()
    required List<Map<String, dynamic>> results,
  }) = _ElasticDocumentsListResponse;

  factory ElasticDocumentsListResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticDocumentsListResponseFromJson(json);
}

int? _toNullableInt(dynamic value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value);
  return null;
}

@freezed
abstract class ElasticEngineSummary with _$ElasticEngineSummary {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticEngineSummary({
    required String name,
    String? type,
    String? language,
    @JsonKey(name: "document_count", fromJson: _toNullableInt)
    int? documentCount,
  }) = _ElasticEngineSummary;

  factory ElasticEngineSummary.fromJson(Map<String, dynamic> json) =>
      _$ElasticEngineSummaryFromJson(json);
}

@freezed
abstract class ElasticEnginesResponse with _$ElasticEnginesResponse {
  const ElasticEnginesResponse._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory ElasticEnginesResponse({
    required ElasticDocumentsListMeta meta,
    required List<ElasticEngineSummary> results,
  }) = _ElasticEnginesResponse;

  factory ElasticEnginesResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticEnginesResponseFromJson(json);
}

List<String>? _toNullableStringList(dynamic value) {
  if (value == null) return null;
  if (value is! List) return null;
  return value.map((entry) => entry.toString()).toList();
}

List<Map<String, dynamic>> _asJsonObjectListStrict(
  dynamic value, {
  required String context,
}) {
  if (value is! List) {
    throw FormatException('$context must be a JSON array.');
  }

  final objects = <Map<String, dynamic>>[];
  for (final item in value) {
    final mapped = _asStringDynamicMap(item);
    if (mapped == null) {
      throw FormatException('$context items must be JSON objects.');
    }
    objects.add(mapped);
  }

  return objects;
}

Map<String, dynamic> _asJsonObjectStrict(
  dynamic value, {
  required String context,
}) {
  final mapped = _asStringDynamicMap(value);
  if (mapped == null) {
    throw FormatException('$context must be a JSON object.');
  }
  return mapped;
}

/// Detailed engine payload returned by engines and meta-engines endpoints.
class ElasticEngineInfo {
  const ElasticEngineInfo({
    required this.name,
    this.type,
    this.language,
    this.documentCount,
    this.sourceEngines,
    this.numberOfShards,
  });

  /// Engine name.
  final String name;

  /// Engine type (`default` or `meta`).
  final String? type;

  /// Optional language optimization code.
  final String? language;

  /// Number of indexed documents when provided by App Search.
  final int? documentCount;

  /// Source engines for meta engines.
  final List<String>? sourceEngines;

  /// Optional shard count override for default engines.
  final int? numberOfShards;

  factory ElasticEngineInfo.fromJson(Map<String, dynamic> json) {
    final indexSettingsOverride = _asStringDynamicMap(
      json['index_create_settings_override'],
    );
    final sourceEngines = _toNullableStringList(json['source_engines']);

    return ElasticEngineInfo(
      name: json['name']?.toString() ?? '',
      type: json['type']?.toString(),
      language: json['language']?.toString(),
      documentCount: _toNullableInt(json['document_count']),
      sourceEngines: sourceEngines == null
          ? null
          : List.unmodifiable(sourceEngines),
      numberOfShards: _toNullableInt(
        indexSettingsOverride?['number_of_shards'],
      ),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'name': name,
      'type': type,
      'language': language,
      'document_count': documentCount,
      'source_engines': sourceEngines,
    };

    if (numberOfShards != null) {
      json['index_create_settings_override'] = {
        'number_of_shards': numberOfShards,
      };
    }

    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// A single App Search synonym set.
class ElasticSynonymSet {
  const ElasticSynonymSet({required this.id, required this.synonyms});

  /// Synonym set identifier.
  final String id;

  /// Terms grouped inside the synonym set.
  final List<String> synonyms;

  factory ElasticSynonymSet.fromJson(Map<String, dynamic> json) {
    return ElasticSynonymSet(
      id: _toStringOrEmpty(json['id']),
      synonyms: List.unmodifiable(_toStringList(json['synonyms'])),
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'synonyms': synonyms};
}

/// Paginated response returned by the synonyms list endpoint.
class ElasticSynonymsListResponse {
  const ElasticSynonymsListResponse({
    required this.meta,
    required this.results,
  });

  /// Pagination metadata.
  final ElasticDocumentsListMeta meta;

  /// Synonym sets in the current page.
  final List<ElasticSynonymSet> results;

  factory ElasticSynonymsListResponse.fromJson(Map<String, dynamic> json) {
    final metaJson = _asJsonObjectStrict(json['meta'], context: 'meta');
    final resultItems = _asJsonObjectListStrict(
      json['results'],
      context: 'results',
    );

    return ElasticSynonymsListResponse(
      meta: ElasticDocumentsListMeta.fromJson(metaJson),
      results: List.unmodifiable(
        resultItems.map(ElasticSynonymSet.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'meta': meta.toJson(),
    'results': results.map((item) => item.toJson()).toList(),
  };
}

/// Adaptive relevance suggestion attached to a curation when available.
class ElasticCurationSuggestion {
  const ElasticCurationSuggestion({
    this.status,
    this.updatedAt,
    this.createdAt,
    this.operation,
    required this.promoted,
  });

  /// Suggestion status (`pending`, `applied`, `automated`, `rejected`, `disabled`).
  final String? status;

  /// Suggestion last update timestamp.
  final String? updatedAt;

  /// Suggestion creation timestamp.
  final String? createdAt;

  /// Suggested curation operation (`create`, `update`, `delete`).
  final String? operation;

  /// Suggested promoted document ids.
  final List<String> promoted;

  factory ElasticCurationSuggestion.fromJson(Map<String, dynamic> json) {
    return ElasticCurationSuggestion(
      status: json['status']?.toString(),
      updatedAt: json['updated_at']?.toString(),
      createdAt: json['created_at']?.toString(),
      operation: json['operation']?.toString(),
      promoted: List.unmodifiable(_toStringList(json['promoted'])),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'status': status,
      'updated_at': updatedAt,
      'created_at': createdAt,
      'operation': operation,
      'promoted': promoted,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// A curation definition for one or more queries.
class ElasticCuration {
  const ElasticCuration({
    required this.id,
    required this.queries,
    required this.promoted,
    required this.hidden,
    this.suggestion,
  });

  /// Curation identifier.
  final String id;

  /// Queries affected by this curation.
  final List<String> queries;

  /// Promoted document ids returned first for matching queries.
  final List<String> promoted;

  /// Hidden document ids excluded from matching queries.
  final List<String> hidden;

  /// Optional adaptive relevance suggestion metadata.
  final ElasticCurationSuggestion? suggestion;

  factory ElasticCuration.fromJson(Map<String, dynamic> json) {
    final suggestionJson = _asStringDynamicMap(json['suggestion']);
    return ElasticCuration(
      id: _toStringOrEmpty(json['id']),
      queries: List.unmodifiable(_toStringList(json['queries'])),
      promoted: List.unmodifiable(_toStringList(json['promoted'])),
      hidden: List.unmodifiable(_toStringList(json['hidden'])),
      suggestion: suggestionJson == null
          ? null
          : ElasticCurationSuggestion.fromJson(suggestionJson),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'queries': queries,
      'promoted': promoted,
      'hidden': hidden,
      'suggestion': suggestion?.toJson(),
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Paginated response returned by the curations list endpoint.
class ElasticCurationsListResponse {
  const ElasticCurationsListResponse({
    required this.meta,
    required this.results,
  });

  /// Pagination metadata.
  final ElasticDocumentsListMeta meta;

  /// Curations in the current page.
  final List<ElasticCuration> results;

  factory ElasticCurationsListResponse.fromJson(Map<String, dynamic> json) {
    final metaJson = _asJsonObjectStrict(json['meta'], context: 'meta');
    final resultItems = _asJsonObjectListStrict(
      json['results'],
      context: 'results',
    );

    return ElasticCurationsListResponse(
      meta: ElasticDocumentsListMeta.fromJson(metaJson),
      results: List.unmodifiable(
        resultItems.map(ElasticCuration.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'meta': meta.toJson(),
    'results': results.map((item) => item.toJson()).toList(),
  };
}

/// Identifier returned by curation create/update endpoints.
class ElasticCurationWriteResult {
  const ElasticCurationWriteResult({required this.id});

  /// Created or updated curation identifier.
  final String id;

  factory ElasticCurationWriteResult.fromJson(Map<String, dynamic> json) {
    return ElasticCurationWriteResult(id: _toStringOrEmpty(json['id']));
  }

  Map<String, dynamic> toJson() => {'id': id};
}
