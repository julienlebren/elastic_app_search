part of '../elastic_app_search.dart';

class ElasticAppSearchException implements Exception {
  const ElasticAppSearchException({
    required this.message,
    required this.operation,
    required this.engine,
    this.statusCode,
    this.responseData,
    this.url,
    this.cause,
  });

  final String message;
  final Operation operation;
  final String engine;
  final int? statusCode;
  final dynamic responseData;
  final String? url;
  final Object? cause;

  @override
  String toString() {
    final details = <String>[
      'message: $message',
      'operation: ${operation.name}',
      'engine: $engine',
    ];

    if (statusCode != null) {
      details.add('statusCode: $statusCode');
    }
    if (url != null) {
      details.add('url: $url');
    }
    if (cause != null) {
      details.add('cause: $cause');
    }

    return 'ElasticAppSearchException(${details.join(', ')})';
  }
}

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
    bool debug = false,
  }) : _endPoint = endPoint,
       _searchKey = searchKey,
       _debug = debug;

  ElasticAppSearch._({
    required String endPoint,
    required String searchKey,
    bool debug = false,
  }) : _endPoint = endPoint,
       _searchKey = searchKey,
       _debug = debug;

  final String _endPoint;
  final String _searchKey;
  final bool _debug;
  final _dio = Dio();

  static const String _errorMessage = "Unable to get response from API server";

  /// Returns an instance for the specified `endPoint` and `searchKey`.
  ElasticAppSearch get instance => ElasticAppSearch._(
    endPoint: _endPoint,
    searchKey: _searchKey,
    debug: _debug,
  );

  String _apiUrl(String engine, Operation operation) =>
      '$_endPoint/api/as/v1/engines/$engine/${operation.value}';

  Options get _requestOptions => Options(
    headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $_searchKey",
    },
  );

  String _errorMessageFromResponseData(dynamic data) {
    if (data is Map) {
      final errors = data['errors'];
      if (errors is List && errors.isNotEmpty) {
        return errors.first.toString();
      }
      final message = data['message'] ?? data['error'];
      if (message != null) {
        return message.toString();
      }
    }
    return _errorMessage;
  }

  ElasticAppSearchException _buildException({
    required Operation operation,
    required String engine,
    Response<dynamic>? response,
    Object? cause,
  }) {
    return ElasticAppSearchException(
      message: _errorMessageFromResponseData(response?.data),
      operation: operation,
      engine: engine,
      statusCode: response?.statusCode,
      responseData: response?.data,
      url: _apiUrl(engine, operation),
      cause: cause,
    );
  }

  /// Executes a request on Elastic App Search and returns a [ElasticResponse] object
  /// An [ElasticQuery] must be provided with the parameters of the query.
  ///
  /// The [CancelToken] is optionnal and can be provided to cancel requests if needed.
  /// A use case is available in the example.
  Future<ElasticResponse> postSearchOperation(
    ElasticQuery query, [
    CancelToken? cancelToken,
  ]) async {
    final validatedQuery = _validateElasticQuery(query);
    final queryEngine = validatedQuery.engine;
    if (queryEngine == null) {
      throw StateError(
        'An engine is required to execute a search operation. '
        'Create the query from ElasticEngine.query(...) or set engine on the query.',
      );
    }

    final engine = queryEngine.name;
    final url = _apiUrl(engine, Operation.search);
    if (_debug) {
      print("====== Query ======");
      print(validatedQuery.toJson());
      print("====== Url ======");
      print(url);
    }

    try {
      final response = await _dio.post<Map>(
        url,
        options: _requestOptions,
        data: validatedQuery.toJson(),
        cancelToken: cancelToken,
      );

      if (_debug) {
        print("====== Response ======");
        print(response);
      }

      if (response.statusCode == 200 && response.data != null) {
        ElasticResponse finalResponse = ElasticResponse.fromJson(
          response.data as Map<String, dynamic>,
        );

        final disjunctiveQueries = validatedQuery._disjunctives;
        if (disjunctiveQueries == null) return finalResponse;

        for (final disjunctiveQuery in disjunctiveQueries) {
          if (_debug) {
            print("====== Disjunctive query ======");
            print(disjunctiveQuery.toJson());
          }

          final disjunctiveResponse = await _dio.post<Map>(
            url,
            options: _requestOptions,
            data: disjunctiveQuery.toJson(),
            cancelToken: cancelToken,
          );

          if (_debug) {
            print("====== Disjunctive Response ======");
            print(disjunctiveResponse);
          }

          if (disjunctiveResponse.statusCode == 200 &&
              disjunctiveResponse.data != null) {
            final disjunctiveParsedResponse = ElasticResponse.fromJson(
              disjunctiveResponse.data as Map<String, dynamic>,
            );

            Map<String, List<ElasticFacet>>? rawFacets =
                finalResponse.rawFacets != null
                ? {...finalResponse.rawFacets!}
                : {};

            for (String field in validatedQuery.disjunctiveFacets ?? []) {
              final filters = validatedQuery.filters
                  ?.where((e) => e.name == field)
                  .toList();
              if (filters != null && filters.isNotEmpty) {
                final replacedFacets =
                    disjunctiveParsedResponse.rawFacets?[field];
                if (replacedFacets != null) {
                  rawFacets[field] = replacedFacets;
                }
              }
            }
            finalResponse = finalResponse.copyWith(rawFacets: rawFacets);
          } else {
            throw _buildException(
              operation: Operation.search,
              engine: engine,
              response: disjunctiveResponse,
            );
          }
        }

        if (_debug) {
          print("====== Final Response ======");
          print(finalResponse);
        }

        return finalResponse;
      } else {
        throw _buildException(
          operation: Operation.search,
          engine: engine,
          response: response,
        );
      }
    } on DioException catch (error, stackTrace) {
      if (error.type == DioExceptionType.cancel) rethrow;
      Error.throwWithStackTrace(
        _buildException(
          operation: Operation.search,
          engine: engine,
          response: error.response,
          cause: error,
        ),
        stackTrace,
      );
    }
  }

  Future<ElasticQuerySuggestionResponse> postSuggestionOperation(
    ElasticSuggestionsQuery query, [
    CancelToken? cancelToken,
  ]) async {
    final validatedQuery = _validateElasticSuggestionsQuery(query);
    final queryEngine = validatedQuery.engine;
    if (queryEngine == null) {
      throw StateError(
        'An engine is required to execute a query suggestion operation. '
        'Create the query from ElasticEngine.suggestionQuery(...) or set engine on the query.',
      );
    }

    final engine = queryEngine.name;
    final url = _apiUrl(engine, Operation.querySuggestion);
    if (_debug) {
      print("====== Query ======");
      print(validatedQuery.toJson());
      print("====== Url ======");
      print(url);
    }

    try {
      final response = await _dio.post<Map>(
        url,
        options: _requestOptions,
        data: validatedQuery.toJson(),
        cancelToken: cancelToken,
      );

      if (_debug) {
        print("====== Response ======");
        print(response);
      }

      if (response.statusCode == 200 && response.data != null) {
        ElasticQuerySuggestionResponse finalResponse =
            ElasticQuerySuggestionResponse.fromJson(
              response.data as Map<String, dynamic>,
            );
        return finalResponse;
      } else {
        throw _buildException(
          operation: Operation.querySuggestion,
          engine: engine,
          response: response,
        );
      }
    } on DioException catch (error, stackTrace) {
      if (error.type == DioExceptionType.cancel) rethrow;
      Error.throwWithStackTrace(
        _buildException(
          operation: Operation.querySuggestion,
          engine: engine,
          response: error.response,
          cause: error,
        ),
        stackTrace,
      );
    }
  }

  /// Creates and returns a new [ElasticObject] linked to this instance of service.
  ElasticEngine engine(String name) {
    if (name.trim().isEmpty) {
      throw ArgumentError.value(
        name,
        'name',
        'An engine name must be a non-empty string.',
      );
    }
    return ElasticEngine(service: this, name: name);
  }
}
