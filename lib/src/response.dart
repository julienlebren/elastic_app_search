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
  }) = _ElasticQuerySuggestionResponse;

  factory ElasticQuerySuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticQuerySuggestionResponseFromJson(json);
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
