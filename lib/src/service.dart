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

  static const String _accountScope = '<account>';
  static const String _errorMessage = "Unable to get response from API server";
  static const Set<String> _reservedSchemaFieldNames = {
    '_boost',
    '_explanation',
    '_id',
    '_index',
    '_score',
    '_type',
    '_version',
    'all',
    'and',
    'any',
    'engine_id',
    'external_id',
    'highlight',
    'none',
    'not',
    'or',
  };

  /// Returns an instance for the specified `endPoint` and `searchKey`.
  ElasticAppSearch get instance => ElasticAppSearch._(
    endPoint: _endPoint,
    searchKey: _searchKey,
    debug: _debug,
  );

  String get _normalizedEndPoint => _endPoint.endsWith('/')
      ? _endPoint.substring(0, _endPoint.length - 1)
      : _endPoint;

  String _engineApiPath(String engine, String path) =>
      '/api/as/v1/engines/$engine/$path';

  String _accountApiPath(String path) => '/api/as/v1/$path';

  String _engineApiUrl(String engine, String path) =>
      '$_normalizedEndPoint${_engineApiPath(engine, path)}';

  String _accountApiUrl(String path) =>
      '$_normalizedEndPoint${_accountApiPath(path)}';

  String _operationUrl(String engine, Operation operation) {
    if (engine == _accountScope) {
      return _accountApiUrl(operation.value);
    }
    return _engineApiUrl(engine, operation.value);
  }

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
    required String url,
    Response<dynamic>? response,
    Object? cause,
  }) {
    return ElasticAppSearchException(
      message: _errorMessageFromResponseData(response?.data),
      operation: operation,
      engine: engine,
      statusCode: response?.statusCode,
      responseData: response?.data,
      url: url,
      cause: cause,
    );
  }

  Future<Response<dynamic>> _request({
    required String method,
    required String url,
    dynamic body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) {
    return _dio.request<dynamic>(
      url,
      data: body,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: _requestOptions.copyWith(method: method),
    );
  }

  void _debugRequest({
    required String method,
    required String url,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) {
    if (!_debug) return;
    print("====== Query ======");
    print(body ?? queryParameters ?? '<empty>');
    print("====== Method ======");
    print(method);
    print("====== Url ======");
    print(url);
  }

  void _debugResponse(Response<dynamic> response) {
    if (!_debug) return;
    print("====== Response ======");
    print(response);
  }

  Future<T> _sendRequest<T>({
    required String method,
    required String url,
    required Operation operation,
    required String engine,
    required T Function(dynamic responseData) parse,
    dynamic body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool acceptEmptyResponse = false,
  }) async {
    _debugRequest(
      method: method,
      url: url,
      body: body,
      queryParameters: queryParameters,
    );

    try {
      final response = await _request(
        method: method,
        url: url,
        body: body,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );

      _debugResponse(response);

      if (response.statusCode == 200 &&
          (response.data != null || acceptEmptyResponse)) {
        return parse(response.data);
      }

      throw _buildException(
        operation: operation,
        engine: engine,
        url: url,
        response: response,
      );
    } on DioException catch (error, stackTrace) {
      if (error.type == DioExceptionType.cancel) rethrow;
      Error.throwWithStackTrace(
        _buildException(
          operation: operation,
          engine: engine,
          url: url,
          response: error.response,
          cause: error,
        ),
        stackTrace,
      );
    }
  }

  Map<String, dynamic> _asJsonObject(dynamic data) {
    final mapped = _asStringDynamicMap(data);
    if (mapped == null) {
      throw FormatException('Response body must be a JSON object.');
    }
    return mapped;
  }

  List<Map<String, dynamic>> _asJsonObjectList(dynamic data) {
    if (data is! List) {
      throw FormatException('Response body must be a JSON array.');
    }

    final objects = <Map<String, dynamic>>[];
    for (final item in data) {
      final mapped = _asStringDynamicMap(item);
      if (mapped == null) {
        throw FormatException('Response array items must be JSON objects.');
      }
      objects.add(mapped);
    }
    return objects;
  }

  List<Map<String, dynamic>?> _asNullableJsonObjectList(dynamic data) {
    if (data is! List) {
      throw FormatException('Response body must be a JSON array.');
    }

    final objects = <Map<String, dynamic>?>[];
    for (final item in data) {
      if (item == null) {
        objects.add(null);
        continue;
      }

      final mapped = _asStringDynamicMap(item);
      if (mapped == null) {
        throw FormatException(
          'Response array items must be JSON objects or null.',
        );
      }
      objects.add(mapped);
    }
    return objects;
  }

  Future<ElasticResponse> _postSearch(
    String engine,
    Map<String, dynamic> payload, [
    CancelToken? cancelToken,
  ]) {
    final url = _operationUrl(engine, Operation.search);
    return _sendRequest<ElasticResponse>(
      method: 'POST',
      url: url,
      operation: Operation.search,
      engine: engine,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  void _validatePageRequest({
    required ElasticPageRequest page,
    int? maxSize,
    String? context,
  }) {
    if (page.current < 1) {
      throw RangeError.range(
        page.current,
        1,
        null,
        'current',
        '${context ?? "page"} current value must be greater than or equal to 1.',
      );
    }
    if (page.size < 1) {
      throw RangeError.range(
        page.size,
        1,
        maxSize,
        'size',
        '${context ?? "page"} size must be greater than or equal to 1.',
      );
    }
    if (maxSize != null && page.size > maxSize) {
      throw RangeError.range(
        page.size,
        1,
        maxSize,
        'size',
        '${context ?? "page"} size must be between 1 and $maxSize.',
      );
    }
  }

  void _validateClickthroughRequest(ElasticClickthroughRequest request) {
    if (request.query.trim().isEmpty) {
      throw ArgumentError.value(
        request.query,
        'query',
        'Clickthrough query must be a non-empty string.',
      );
    }

    if (request.documentId.trim().isEmpty) {
      throw ArgumentError.value(
        request.documentId,
        'documentId',
        'Clickthrough documentId must be a non-empty string.',
      );
    }

    final requestId = request.requestId;
    if (requestId != null && requestId.trim().isEmpty) {
      throw ArgumentError.value(
        requestId,
        'requestId',
        'Clickthrough requestId must be a non-empty string when provided.',
      );
    }

    final tags = request.tags;
    if (tags != null) {
      _validateAnalyticsTags(tags);
    }
  }

  void _validateAnalyticsQueriesRequest(
    ElasticAnalyticsQueriesRequest request,
  ) {
    final page = request.page;
    if (page != null) {
      _validatePageRequest(page: page, context: 'analytics queries page');
    }
    _validateAnalyticsFilter(request.filters);
  }

  void _validateAnalyticsClicksRequest(ElasticAnalyticsClicksRequest request) {
    final query = request.query;
    if (query != null && query.trim().isEmpty) {
      throw ArgumentError.value(
        query,
        'query',
        'Analytics clicks query must be a non-empty string when provided.',
      );
    }

    final page = request.page;
    if (page != null) {
      _validatePageRequest(page: page, context: 'analytics clicks page');
    }
    _validateAnalyticsFilter(request.filters);
  }

  void _validateAnalyticsCountsRequest(ElasticAnalyticsCountsRequest request) {
    _validateAnalyticsFilter(request.filters);
  }

  void _validateDocumentIds(
    List<String> ids, {
    required String parameter,
    required String context,
  }) {
    if (ids.isEmpty) {
      throw ArgumentError.value(
        ids,
        parameter,
        '$context requires at least one document id.',
      );
    }
    if (ids.length > 100) {
      throw RangeError.range(
        ids.length,
        1,
        100,
        '$parameter.length',
        '$context supports between 1 and 100 document ids per request.',
      );
    }

    for (var i = 0; i < ids.length; i++) {
      final id = ids[i].trim();
      if (id.isEmpty) {
        throw ArgumentError.value(
          ids[i],
          '$parameter[$i]',
          'Document id must be a non-empty string.',
        );
      }
      if (id.length > 800) {
        throw RangeError.range(
          id.length,
          1,
          800,
          '$parameter[$i].length',
          'Document id must be 800 characters or less.',
        );
      }
    }
  }

  void _validateDocumentBatch(
    List<Map<String, dynamic>> documents, {
    required bool requireId,
    required String context,
  }) {
    if (documents.isEmpty) {
      throw ArgumentError.value(
        documents,
        'documents',
        '$context requires at least one document.',
      );
    }
    if (documents.length > 100) {
      throw RangeError.range(
        documents.length,
        1,
        100,
        'documents.length',
        '$context supports between 1 and 100 documents per request.',
      );
    }

    for (var i = 0; i < documents.length; i++) {
      final document = documents[i];
      if (document.isEmpty) {
        throw ArgumentError.value(
          document,
          'documents[$i]',
          'Document payload cannot be empty.',
        );
      }
      if (document.length > 64) {
        throw RangeError.range(
          document.length,
          1,
          64,
          'documents[$i].length',
          'Each document can contain at most 64 key-value pairs.',
        );
      }

      final hasId = document.containsKey('id');
      if (!requireId && !hasId) continue;

      final rawId = document['id'];
      if (rawId == null) {
        throw ArgumentError.value(
          rawId,
          'documents[$i].id',
          'Document id is required and must be a non-empty string.',
        );
      }

      final id = rawId.toString().trim();
      if (id.isEmpty) {
        throw ArgumentError.value(
          rawId,
          'documents[$i].id',
          'Document id must be a non-empty string.',
        );
      }
      if (id.length > 800) {
        throw RangeError.range(
          id.length,
          1,
          800,
          'documents[$i].id.length',
          'Document id must be 800 characters or less.',
        );
      }
    }
  }

  void _validateSchemaUpdateFields(Map<String, ElasticSchemaFieldType> fields) {
    if (fields.isEmpty) {
      throw ArgumentError.value(
        fields,
        'fields',
        'Schema update requires at least one field.',
      );
    }
    if (fields.length > 64) {
      throw RangeError.range(
        fields.length,
        1,
        64,
        'fields.length',
        'Schema update can include at most 64 fields.',
      );
    }

    final whitespace = RegExp(r'\s');
    final validCharacters = RegExp(r'^[a-z0-9_]+$');
    final hasLowercase = RegExp(r'[a-z]');

    for (final field in fields.keys) {
      if (field.isEmpty) {
        throw ArgumentError.value(
          field,
          'fields',
          'Schema field name must be a non-empty string.',
        );
      }
      if (whitespace.hasMatch(field)) {
        throw ArgumentError.value(
          field,
          'fields',
          'Schema field name cannot contain whitespace.',
        );
      }
      if (field.startsWith('_')) {
        throw ArgumentError.value(
          field,
          'fields',
          'Schema field name cannot have a leading underscore.',
        );
      }
      if (field.length > 64) {
        throw RangeError.range(
          field.length,
          1,
          64,
          'fields["$field"].length',
          'Schema field name cannot contain more than 64 characters.',
        );
      }
      if (_reservedSchemaFieldNames.contains(field)) {
        throw ArgumentError.value(
          field,
          'fields',
          'Schema field name "$field" is reserved.',
        );
      }
      if (!validCharacters.hasMatch(field)) {
        throw ArgumentError.value(
          field,
          'fields',
          'Schema field name can only contain lowercase letters, numbers, and underscores.',
        );
      }
      if (!hasLowercase.hasMatch(field)) {
        throw ArgumentError.value(
          field,
          'fields',
          'Schema field name must contain at least one lowercase letter.',
        );
      }
    }
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
    ElasticResponse finalResponse = await _postSearch(
      engine,
      validatedQuery.toJson(),
      cancelToken,
    );

    final disjunctiveQueries = validatedQuery._disjunctives;
    if (disjunctiveQueries == null) return finalResponse;

    for (final disjunctiveQuery in disjunctiveQueries) {
      if (_debug) {
        print("====== Disjunctive query ======");
        print(disjunctiveQuery.toJson());
      }

      final disjunctiveParsedResponse = await _postSearch(
        engine,
        disjunctiveQuery.toJson(),
        cancelToken,
      );

      Map<String, List<ElasticFacet>>? rawFacets =
          finalResponse.rawFacets != null ? {...finalResponse.rawFacets!} : {};

      for (String field in validatedQuery.disjunctiveFacets ?? []) {
        final filters = validatedQuery.filters
            ?.where((e) => e.name == field)
            .toList();
        if (filters != null && filters.isNotEmpty) {
          final replacedFacets = disjunctiveParsedResponse.rawFacets?[field];
          if (replacedFacets != null) {
            rawFacets[field] = replacedFacets;
          }
        }
      }
      finalResponse = finalResponse.copyWith(rawFacets: rawFacets);
    }

    if (_debug) {
      print("====== Final Response ======");
      print(finalResponse);
    }

    return finalResponse;
  }

  Future<List<ElasticResponse>> postMultiSearchOperation(
    String engine,
    List<ElasticQuery> queries, [
    CancelToken? cancelToken,
  ]) {
    if (queries.isEmpty) {
      throw ArgumentError.value(
        queries,
        'queries',
        'At least one query is required.',
      );
    }
    if (queries.length > 10) {
      throw RangeError.range(
        queries.length,
        1,
        10,
        'queries.length',
        'The number of queries in a multi_search request must be between 1 and 10.',
      );
    }

    for (final query in queries) {
      final queryEngine = query.engine?.name;
      if (queryEngine != null && queryEngine != engine) {
        throw ArgumentError(
          'All queries passed to multi search must target engine "$engine". '
          'Found "$queryEngine".',
        );
      }
    }

    final payload = <String, dynamic>{
      'queries': queries
          .map((query) => _validateElasticQuery(query).toJson())
          .toList(),
    };

    final url = _operationUrl(engine, Operation.multiSearch);
    return _sendRequest<List<ElasticResponse>>(
      method: 'POST',
      url: url,
      operation: Operation.multiSearch,
      engine: engine,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) => _asJsonObjectList(
        responseData,
      ).map(ElasticResponse.fromJson).toList(),
    );
  }

  Future<ElasticSearchExplainResponse> postSearchExplainOperation(
    ElasticQuery query, [
    CancelToken? cancelToken,
  ]) {
    final validatedQuery = _validateElasticQuery(query);
    final queryEngine = validatedQuery.engine;
    if (queryEngine == null) {
      throw StateError(
        'An engine is required to execute a search explain operation. '
        'Create the query from ElasticEngine.query(...) or set engine on the query.',
      );
    }

    final engine = queryEngine.name;
    final url = _operationUrl(engine, Operation.searchExplain);
    return _sendRequest<ElasticSearchExplainResponse>(
      method: 'POST',
      url: url,
      operation: Operation.searchExplain,
      engine: engine,
      body: validatedQuery.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSearchExplainResponse.fromJson(_asJsonObject(responseData)),
    );
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
    final url = _operationUrl(engine, Operation.querySuggestion);

    return _sendRequest<ElasticQuerySuggestionResponse>(
      method: 'POST',
      url: url,
      operation: Operation.querySuggestion,
      engine: engine,
      body: validatedQuery.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticQuerySuggestionResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Sends a clickthrough event.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/click`.
  Future<void> postClickOperation(
    String engine,
    ElasticClickthroughRequest request, [
    CancelToken? cancelToken,
  ]) async {
    _validateClickthroughRequest(request);

    final url = _operationUrl(engine, Operation.click);
    await _sendRequest<void>(
      method: 'POST',
      url: url,
      operation: Operation.click,
      engine: engine,
      body: request.toJson(),
      cancelToken: cancelToken,
      acceptEmptyResponse: true,
      parse: (_) {},
    );
  }

  /// Retrieves analytics queries for an engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/analytics/queries`.
  Future<ElasticAnalyticsQueriesResponse> postAnalyticsQueriesOperation(
    String engine,
    ElasticAnalyticsQueriesRequest request, [
    CancelToken? cancelToken,
  ]) {
    _validateAnalyticsQueriesRequest(request);

    final url = _operationUrl(engine, Operation.analyticsQueries);
    return _sendRequest<ElasticAnalyticsQueriesResponse>(
      method: 'POST',
      url: url,
      operation: Operation.analyticsQueries,
      engine: engine,
      body: request.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAnalyticsQueriesResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Retrieves analytics clicks for an engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/analytics/clicks`.
  Future<ElasticAnalyticsClicksResponse> postAnalyticsClicksOperation(
    String engine,
    ElasticAnalyticsClicksRequest request, [
    CancelToken? cancelToken,
  ]) {
    _validateAnalyticsClicksRequest(request);

    final url = _operationUrl(engine, Operation.analyticsClicks);
    return _sendRequest<ElasticAnalyticsClicksResponse>(
      method: 'POST',
      url: url,
      operation: Operation.analyticsClicks,
      engine: engine,
      body: request.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAnalyticsClicksResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Retrieves analytics counts for an engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/analytics/counts`.
  Future<ElasticAnalyticsCountsResponse> postAnalyticsCountsOperation(
    String engine,
    ElasticAnalyticsCountsRequest request, [
    CancelToken? cancelToken,
  ]) {
    _validateAnalyticsCountsRequest(request);

    final url = _operationUrl(engine, Operation.analyticsCounts);
    return _sendRequest<ElasticAnalyticsCountsResponse>(
      method: 'POST',
      url: url,
      operation: Operation.analyticsCounts,
      engine: engine,
      body: request.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAnalyticsCountsResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Retrieves the schema for an engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/schema`.
  Future<ElasticSchema> getSchema(String engine, [CancelToken? cancelToken]) {
    final url = _operationUrl(engine, Operation.schemaGet);
    return _sendRequest<ElasticSchema>(
      method: 'GET',
      url: url,
      operation: Operation.schemaGet,
      engine: engine,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSchema.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Updates schema fields for an engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/schema`.
  Future<ElasticSchema> updateSchema(
    String engine,
    Map<String, ElasticSchemaFieldType> fields, [
    CancelToken? cancelToken,
  ]) {
    _validateSchemaUpdateFields(fields);

    final payload = fields.map((key, value) => MapEntry(key, value.apiValue));
    final url = _operationUrl(engine, Operation.schemaUpdate);
    return _sendRequest<ElasticSchema>(
      method: 'POST',
      url: url,
      operation: Operation.schemaUpdate,
      engine: engine,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSchema.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Creates or updates documents in bulk.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/documents`.
  Future<List<ElasticDocumentIndexResult>> indexDocuments(
    String engine,
    List<Map<String, dynamic>> documents, [
    CancelToken? cancelToken,
  ]) {
    _validateDocumentBatch(
      documents,
      requireId: false,
      context: 'Index documents',
    );

    final url = _operationUrl(engine, Operation.documentsCreateOrUpdate);
    return _sendRequest<List<ElasticDocumentIndexResult>>(
      method: 'POST',
      url: url,
      operation: Operation.documentsCreateOrUpdate,
      engine: engine,
      body: documents,
      cancelToken: cancelToken,
      parse: (responseData) => _asJsonObjectList(
        responseData,
      ).map(ElasticDocumentIndexResult.fromJson).toList(),
    );
  }

  /// Applies partial updates to documents in bulk.
  ///
  /// Uses `PATCH /api/as/v1/engines/{engine}/documents`.
  Future<List<ElasticDocumentIndexResult>> updateDocuments(
    String engine,
    List<Map<String, dynamic>> documents, [
    CancelToken? cancelToken,
  ]) {
    _validateDocumentBatch(
      documents,
      requireId: true,
      context: 'Partial update documents',
    );

    final url = _operationUrl(engine, Operation.documentsPartialUpdate);
    return _sendRequest<List<ElasticDocumentIndexResult>>(
      method: 'PATCH',
      url: url,
      operation: Operation.documentsPartialUpdate,
      engine: engine,
      body: documents,
      cancelToken: cancelToken,
      parse: (responseData) => _asJsonObjectList(
        responseData,
      ).map(ElasticDocumentIndexResult.fromJson).toList(),
    );
  }

  /// Retrieves documents by id.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/documents`.
  Future<List<Map<String, dynamic>?>> getDocuments(
    String engine,
    List<String> ids, [
    CancelToken? cancelToken,
  ]) {
    _validateDocumentIds(ids, parameter: 'ids', context: 'Get documents');

    final url = _operationUrl(engine, Operation.documentsGet);
    return _sendRequest<List<Map<String, dynamic>?>>(
      method: 'GET',
      url: url,
      operation: Operation.documentsGet,
      engine: engine,
      body: ids,
      cancelToken: cancelToken,
      parse: _asNullableJsonObjectList,
    );
  }

  /// Deletes documents by id.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/documents`.
  Future<List<ElasticDocumentDeleteResult>> deleteDocuments(
    String engine,
    List<String> ids, [
    CancelToken? cancelToken,
  ]) {
    _validateDocumentIds(ids, parameter: 'ids', context: 'Delete documents');

    final url = _operationUrl(engine, Operation.documentsDelete);
    return _sendRequest<List<ElasticDocumentDeleteResult>>(
      method: 'DELETE',
      url: url,
      operation: Operation.documentsDelete,
      engine: engine,
      body: ids,
      cancelToken: cancelToken,
      parse: (responseData) => _asJsonObjectList(
        responseData,
      ).map(ElasticDocumentDeleteResult.fromJson).toList(),
    );
  }

  Future<ElasticDocumentsListResponse> listDocuments(
    String engine, {
    ElasticPageRequest page = const ElasticPageRequest(current: 1, size: 100),
    CancelToken? cancelToken,
  }) {
    _validatePageRequest(
      page: page,
      maxSize: 100,
      context: 'documents/list page',
    );

    final url = _operationUrl(engine, Operation.documentsList);
    return _sendRequest<ElasticDocumentsListResponse>(
      method: 'GET',
      url: url,
      operation: Operation.documentsList,
      engine: engine,
      body: <String, dynamic>{'page': page.toJson()},
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticDocumentsListResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  Future<ElasticEnginesResponse> listEngines({
    ElasticPageRequest page = const ElasticPageRequest(current: 1, size: 25),
    CancelToken? cancelToken,
  }) {
    _validatePageRequest(page: page, context: 'engines page');

    final url = _operationUrl(_accountScope, Operation.engines);
    return _sendRequest<ElasticEnginesResponse>(
      method: 'GET',
      url: url,
      operation: Operation.engines,
      engine: _accountScope,
      body: page.toBody(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticEnginesResponse.fromJson(_asJsonObject(responseData)),
    );
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
