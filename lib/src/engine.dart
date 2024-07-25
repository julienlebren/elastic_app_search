part of elastic_app_search;

/// An object representing an Elastic engine
class ElasticEngine {
  const ElasticEngine({
    required this.name,
    required this.service,
  });

  /// The name must fit one of the engines created in your Elastic deployment
  final String name;

  /// An instance of [ElasticAppSearch] is required to handle queries through the object
  final ElasticAppSearch service;

  /// Creates a [ElasticQuery] object related to this engine
  ElasticQuery query(String query) => ElasticQuery(engine: this, query: query);

  /// Creates a [ElasticSuggestionsQuery] object related to this engine
  ElasticSuggestionsQuery suggestionQuery(String query) =>
      ElasticSuggestionsQuery(
        engine: this,
        query: query,
      );

  /// Executes the given query on this engine
  Future<ElasticResponse> get(
    ElasticQuery query, [
    CancelToken? cancelToken,
  ]) =>
      service.postSearchOperation(query, cancelToken);

  Future<ElasticQuerySuggestionResponse> getQuerySuggestion(
    ElasticSuggestionsQuery query, [
    CancelToken? cancelToken,
  ]) =>
      service.postSuggestionOperation(query, cancelToken);
}
