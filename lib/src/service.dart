part of elastic_app_search;

/// The main instance object for handling queries to Elastic App Search
///
/// You need to init the class with your own endPoint and searchKey
/// Both are available in your deployment, when going to `App Search`
/// then `Credentials`. For example:
/// https://your_deployment.kb.europe-west3.gcp.cloud.es.io:9243/app/enterprise_search/app_search/credentials
///
/// Warning: use the search-key, not the private-key!
class ElasticAppSearch {
  ElasticAppSearch({
    required String endPoint,
    required String searchKey,
  })  : _endPoint = endPoint,
        _searchKey = searchKey;

  ElasticAppSearch._({
    required String endPoint,
    required String searchKey,
  })  : _endPoint = endPoint,
        _searchKey = searchKey;

  final String _endPoint;
  final String _searchKey;
  final _dio = Dio();

  static const String _errorMessage = "Unable to get response from API server";

  /// Returns an instance for the specified `endPoint` and `searchKey`.
  ElasticAppSearch get instance => ElasticAppSearch._(
        endPoint: _endPoint,
        searchKey: _searchKey,
      );

  String _apiUrl(String engine) =>
      '$_endPoint/api/as/v1/engines/$engine/search';

  /// Executes a request on Elastic App Search and returns a [ElasticResponse] object
  /// An [ElasticQuery] must be provided with the parameters of the query.
  ///
  /// The [CancelToken] is optionnal and can be provided to cancel requests if needed.
  /// A use case is available in the example.
  Future<ElasticResponse> post(
    ElasticQuery query, [
    CancelToken? cancelToken,
  ]) async {
    print("====== Query ======");
    print(query.toJson());

    final response = await _dio.post<Map>(
      _apiUrl(query.engine!.name),
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $_searchKey",
        },
      ),
      data: query.toJson(),
      cancelToken: cancelToken,
    );

    print("====== Response ======");
    print(response);

    if (response.statusCode == 200 && response.data != null) {
      ElasticResponse _response =
          ElasticResponse.fromJson(response.data as Map<String, dynamic>);

      final disjunctiveQueries = query._disjunctives;
      if (disjunctiveQueries == null) return _response;

      for (final disjunctiveQuery in disjunctiveQueries) {
        print("====== Disjunctive query ======");
        print(disjunctiveQuery.toJson());

        final disjunctiveResponse = await _dio.post<Map>(
          _apiUrl(disjunctiveQuery.engine!.name),
          options: Options(
            headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $_searchKey",
            },
          ),
          data: disjunctiveQuery.toJson(),
          cancelToken: cancelToken,
        );
        print("====== Disjunctive Response ======");
        print(disjunctiveResponse);

        if (disjunctiveResponse.statusCode == 200 &&
            disjunctiveResponse.data != null) {
          final _disjunctiveResponse = ElasticResponse.fromJson(
              disjunctiveResponse.data as Map<String, dynamic>);

          Map<String, List<ElasticFacet>>? rawFacets = _response.rawFacets;
          for (String field in query.disjunctiveFacets ?? []) {
            final filters =
                query.filters?.where((e) => e.name == field).toList();
            if (filters != null && filters.isNotEmpty) {
              final replacedFacets = _disjunctiveResponse.rawFacets?[field];
              if (replacedFacets != null) {
                rawFacets?[field] = replacedFacets;
              }
            }
          }
          _response = _response.copyWith(rawFacets: rawFacets);
        } else {
          throw _errorMessage;
        }
      }
      return _response;
    } else {
      throw _errorMessage;
    }
  }

  /// Creates and retuens a new [ElasticObject] linked to this instance of service.
  ElasticEngine engine(String name) {
    assert(
      name.isNotEmpty,
      "An engine name must be a non-empty string",
    );
    return ElasticEngine(service: this, name: name);
  }
}
