part of '../elastic_app_search.dart';

/// An object representing an Elastic engine
class ElasticEngine {
  const ElasticEngine({required this.name, required this.service});

  /// The name must fit one of the engines created in your Elastic deployment
  final String name;

  /// An instance of [ElasticAppSearch] is required to handle queries through the object
  final ElasticAppSearch service;

  /// Creates a [ElasticQuery] object related to this engine
  ElasticQuery query(String query) => ElasticQuery(engine: this, query: query);

  /// Creates a [ElasticSuggestionsQuery] object related to this engine
  ElasticSuggestionsQuery suggestionQuery(String query) =>
      ElasticSuggestionsQuery(engine: this, query: query);

  /// Executes the given query on this engine
  Future<ElasticResponse> get(ElasticQuery query, [CancelToken? cancelToken]) =>
      service.postSearchOperation(query, cancelToken);

  /// Executes multiple queries in a single request on this engine.
  Future<List<ElasticResponse>> multiSearch(
    List<ElasticQuery> queries, [
    CancelToken? cancelToken,
  ]) => service.postMultiSearchOperation(name, queries, cancelToken);

  /// Executes a Search Explain request for the given query on this engine.
  Future<ElasticSearchExplainResponse> explain(
    ElasticQuery query, [
    CancelToken? cancelToken,
  ]) => service.postSearchExplainOperation(query, cancelToken);

  /// Executes the given query in a query suggestion operation on this engine
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/query-suggestions-guide.html]
  Future<ElasticQuerySuggestionResponse> getQuerySuggestion(
    ElasticSuggestionsQuery query, [
    CancelToken? cancelToken,
  ]) => service.postSuggestionOperation(query, cancelToken);

  /// Sends a clickthrough event for this engine.
  Future<void> clickthrough(
    ElasticClickthroughRequest request, [
    CancelToken? cancelToken,
  ]) => service.postClickOperation(name, request, cancelToken);

  /// Retrieves analytics queries for this engine.
  Future<ElasticAnalyticsQueriesResponse> analyticsQueries({
    ElasticAnalyticsQueriesRequest request =
        const ElasticAnalyticsQueriesRequest(),
    CancelToken? cancelToken,
  }) => service.postAnalyticsQueriesOperation(name, request, cancelToken);

  /// Retrieves analytics clicks for this engine.
  Future<ElasticAnalyticsClicksResponse> analyticsClicks({
    ElasticAnalyticsClicksRequest request =
        const ElasticAnalyticsClicksRequest(),
    CancelToken? cancelToken,
  }) => service.postAnalyticsClicksOperation(name, request, cancelToken);

  /// Retrieves analytics counts for this engine.
  Future<ElasticAnalyticsCountsResponse> analyticsCounts({
    ElasticAnalyticsCountsRequest request =
        const ElasticAnalyticsCountsRequest(),
    CancelToken? cancelToken,
  }) => service.postAnalyticsCountsOperation(name, request, cancelToken);

  /// Creates or updates documents in bulk.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/documents`.
  Future<List<ElasticDocumentIndexResult>> indexDocuments(
    List<Map<String, dynamic>> documents, [
    CancelToken? cancelToken,
  ]) => service.indexDocuments(name, documents, cancelToken);

  /// Applies partial updates to documents in bulk.
  ///
  /// Uses `PATCH /api/as/v1/engines/{engine}/documents`.
  Future<List<ElasticDocumentIndexResult>> updateDocuments(
    List<Map<String, dynamic>> documents, [
    CancelToken? cancelToken,
  ]) => service.updateDocuments(name, documents, cancelToken);

  /// Retrieves documents by id.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/documents`.
  Future<List<Map<String, dynamic>?>> getDocuments(
    List<String> ids, [
    CancelToken? cancelToken,
  ]) => service.getDocuments(name, ids, cancelToken);

  /// Deletes documents by id.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/documents`.
  Future<List<ElasticDocumentDeleteResult>> deleteDocuments(
    List<String> ids, [
    CancelToken? cancelToken,
  ]) => service.deleteDocuments(name, ids, cancelToken);

  /// Lists engine documents with pagination.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/documents/list`.
  Future<ElasticDocumentsListResponse> listDocuments({
    int current = 1,
    int size = 100,
    CancelToken? cancelToken,
  }) => service.listDocuments(
    name,
    page: ElasticPageRequest(current: current, size: size),
    cancelToken: cancelToken,
  );
}
