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

  /// Retrieves the schema of this engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/schema`.
  Future<ElasticSchema> getSchema([CancelToken? cancelToken]) =>
      service.getSchema(name, cancelToken);

  /// Updates one or more schema fields for this engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/schema`.
  Future<ElasticSchema> updateSchema(
    Map<String, ElasticSchemaFieldType> fields, [
    CancelToken? cancelToken,
  ]) => service.updateSchema(name, fields, cancelToken);

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

  /// Lists synonym sets for this engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/synonyms`.
  Future<ElasticSynonymsListResponse> listSynonyms({
    int current = 1,
    int size = 25,
    CancelToken? cancelToken,
  }) => service.listSynonyms(
    name,
    page: ElasticPageRequest(current: current, size: size),
    cancelToken: cancelToken,
  );

  /// Retrieves a synonym set by identifier.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/synonyms/{synonymSetId}`.
  Future<ElasticSynonymSet> getSynonymSet(
    String synonymSetId, [
    CancelToken? cancelToken,
  ]) => service.getSynonymSet(name, synonymSetId, cancelToken);

  /// Creates a synonym set.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/synonyms`.
  Future<ElasticSynonymSet> createSynonymSet(
    List<String> synonyms, [
    CancelToken? cancelToken,
  ]) => service.createSynonymSet(name, synonyms, cancelToken);

  /// Updates a synonym set.
  ///
  /// Uses `PUT /api/as/v1/engines/{engine}/synonyms/{synonymSetId}`.
  Future<ElasticSynonymSet> updateSynonymSet(
    String synonymSetId,
    List<String> synonyms, [
    CancelToken? cancelToken,
  ]) => service.updateSynonymSet(name, synonymSetId, synonyms, cancelToken);

  /// Deletes a synonym set.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/synonyms/{synonymSetId}`.
  Future<bool> deleteSynonymSet(
    String synonymSetId, [
    CancelToken? cancelToken,
  ]) => service.deleteSynonymSet(name, synonymSetId, cancelToken);

  /// Lists curations for this engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/curations`.
  Future<ElasticCurationsListResponse> listCurations({
    int current = 1,
    int size = 25,
    CancelToken? cancelToken,
  }) => service.listCurations(
    name,
    page: ElasticPageRequest(current: current, size: size),
    cancelToken: cancelToken,
  );

  /// Retrieves one curation by identifier.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/curations/{curationId}`.
  Future<ElasticCuration> getCuration(
    String curationId, [
    CancelToken? cancelToken,
  ]) => service.getCuration(name, curationId, cancelToken);

  /// Creates a curation for one or more queries.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/curations`.
  Future<ElasticCurationWriteResult> createCuration({
    required List<String> queries,
    List<String> promoted = const <String>[],
    List<String> hidden = const <String>[],
    CancelToken? cancelToken,
  }) => service.createCuration(
    name,
    queries: queries,
    promoted: promoted,
    hidden: hidden,
    cancelToken: cancelToken,
  );

  /// Updates an existing curation.
  ///
  /// Uses `PUT /api/as/v1/engines/{engine}/curations/{curationId}`.
  Future<ElasticCurationWriteResult> updateCuration(
    String curationId, {
    List<String>? queries,
    List<String>? promoted,
    List<String>? hidden,
    CancelToken? cancelToken,
  }) => service.updateCuration(
    name,
    curationId,
    queries: queries,
    promoted: promoted,
    hidden: hidden,
    cancelToken: cancelToken,
  );

  /// Deletes a curation.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/curations/{curationId}`.
  Future<bool> deleteCuration(String curationId, [CancelToken? cancelToken]) =>
      service.deleteCuration(name, curationId, cancelToken);

  /// Retrieves metadata for this engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}`.
  Future<ElasticEngineInfo> info([CancelToken? cancelToken]) =>
      service.getEngineInfo(name, cancelToken);

  /// Deletes this engine.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}`.
  Future<bool> delete([CancelToken? cancelToken]) =>
      service.deleteEngine(name, cancelToken);

  /// Adds source engines to this meta engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/source_engines`.
  Future<ElasticEngineInfo> addSourceEngines(
    List<String> sourceEngines, [
    CancelToken? cancelToken,
  ]) => service.addMetaEngineSourceEngines(name, sourceEngines, cancelToken);

  /// Removes source engines from this meta engine.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/source_engines`.
  Future<ElasticEngineInfo> removeSourceEngines(
    List<String> sourceEngines, [
    CancelToken? cancelToken,
  ]) => service.removeMetaEngineSourceEngines(name, sourceEngines, cancelToken);
}
