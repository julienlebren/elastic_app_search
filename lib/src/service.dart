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
  static const Set<String> _reservedEngineNames = {
    'new',
    'collection',
    'create_engine',
    'engine_limit',
  };
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

  String _engineApiPathWithVersion(String version, String engine, String path) {
    if (path.isEmpty) return '/api/as/$version/engines/$engine';
    return '/api/as/$version/engines/$engine/$path';
  }

  String _engineApiPath(String engine, String path) {
    return _engineApiPathWithVersion('v1', engine, path);
  }

  String _accountApiPath(String path) => '/api/as/v1/$path';

  String _engineApiUrlWithVersion(String version, String engine, String path) =>
      '$_normalizedEndPoint${_engineApiPathWithVersion(version, engine, path)}';

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

  void _validateApiLogsRequest(ElasticApiLogsRequest request) {
    final date = request.filters.date;
    if (date.from.trim().isEmpty) {
      throw ArgumentError.value(
        date.from,
        'filters.date.from',
        'API logs date.from must be a non-empty RFC3339 value.',
      );
    }
    if (date.to.trim().isEmpty) {
      throw ArgumentError.value(
        date.to,
        'filters.date.to',
        'API logs date.to must be a non-empty RFC3339 value.',
      );
    }

    final status = request.filters.status;
    if (status != null && status < 100) {
      throw RangeError.range(
        status,
        100,
        null,
        'filters.status',
        'API logs status filter must be a valid HTTP status code.',
      );
    }

    final query = request.query;
    if (query != null && query.trim().isEmpty) {
      throw ArgumentError.value(
        query,
        'query',
        'API logs query must be a non-empty string when provided.',
      );
    }

    final page = request.page;
    if (page != null) {
      _validatePageRequest(page: page, context: 'api logs page');
    }
  }

  Map<String, dynamic> _validateLogSettingsPayload({
    bool? apiEnabled,
    bool? analyticsEnabled,
    required String operation,
  }) {
    final payload = <String, dynamic>{};
    if (apiEnabled != null) {
      payload['api'] = {'enabled': apiEnabled};
    }
    if (analyticsEnabled != null) {
      payload['analytics'] = {'enabled': analyticsEnabled};
    }
    if (payload.isEmpty) {
      throw ArgumentError(
        '$operation requires at least one setting (apiEnabled or analyticsEnabled).',
      );
    }
    return payload;
  }

  void _validateAdaptiveRelevanceSuggestionsRequest(
    ElasticAdaptiveRelevanceSuggestionsRequest request,
  ) {
    final filter = request.filters;
    if (filter == null) return;

    final statuses = filter.status;
    if (statuses != null && statuses.isEmpty) {
      throw ArgumentError.value(
        statuses,
        'filters.status',
        'Adaptive relevance filters.status cannot be empty when provided.',
      );
    }
  }

  String _validateAdaptiveRelevanceQuery(
    String query, {
    String parameter = 'query',
  }) {
    final trimmed = query.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError.value(
        query,
        parameter,
        'Adaptive relevance query must be a non-empty string.',
      );
    }
    return trimmed;
  }

  void _validateAdaptiveRelevanceSuggestionUpdates(
    List<ElasticAdaptiveRelevanceSuggestionUpdate> suggestions,
  ) {
    if (suggestions.isEmpty) {
      throw ArgumentError.value(
        suggestions,
        'suggestions',
        'At least one adaptive relevance suggestion update is required.',
      );
    }

    for (var i = 0; i < suggestions.length; i++) {
      _validateAdaptiveRelevanceQuery(
        suggestions[i].query,
        parameter: 'suggestions[$i].query',
      );
    }
  }

  void _validateAdaptiveRelevanceSettingsUpdate(
    ElasticAdaptiveRelevanceSettings settings,
  ) {
    final curation = settings.curation;
    final hasField =
        curation.enabled != null ||
        curation.mode != null ||
        curation.timeframe != null ||
        curation.maxSize != null ||
        curation.minClicks != null ||
        curation.scheduleFrequency != null ||
        curation.scheduleUnit != null;
    if (!hasField) {
      throw ArgumentError(
        'Adaptive relevance settings update requires at least one curation field.',
      );
    }

    final timeframe = curation.timeframe;
    if (timeframe != null && timeframe < 1) {
      throw RangeError.range(
        timeframe,
        1,
        null,
        'settings.curation.timeframe',
        'Adaptive relevance curation timeframe must be greater than or equal to 1.',
      );
    }

    final maxSize = curation.maxSize;
    if (maxSize != null && maxSize < 1) {
      throw RangeError.range(
        maxSize,
        1,
        null,
        'settings.curation.maxSize',
        'Adaptive relevance curation maxSize must be greater than or equal to 1.',
      );
    }

    final minClicks = curation.minClicks;
    if (minClicks != null && minClicks < 1) {
      throw RangeError.range(
        minClicks,
        1,
        null,
        'settings.curation.minClicks',
        'Adaptive relevance curation minClicks must be greater than or equal to 1.',
      );
    }

    final scheduleFrequency = curation.scheduleFrequency;
    if (scheduleFrequency != null && scheduleFrequency < 1) {
      throw RangeError.range(
        scheduleFrequency,
        1,
        null,
        'settings.curation.scheduleFrequency',
        'Adaptive relevance curation scheduleFrequency must be greater than or equal to 1.',
      );
    }
  }

  String _adaptiveRelevanceSuggestionsUrl(String engine) =>
      _engineApiUrlWithVersion(
        'v0',
        engine,
        Operation.adaptiveRelevanceSuggestionsList.value,
      );

  String _adaptiveRelevanceSuggestionsByQueryUrl(String engine, String query) {
    final encodedQuery = Uri.encodeComponent(query);
    return _engineApiUrlWithVersion(
      'v0',
      engine,
      '${Operation.adaptiveRelevanceSuggestionsList.value}/$encodedQuery',
    );
  }

  String _adaptiveRelevanceSettingsUrl(String engine) =>
      _engineApiUrlWithVersion(
        'v0',
        engine,
        Operation.adaptiveRelevanceSettingsGet.value,
      );

  String _adaptiveRelevanceRefreshUrl(String engine) =>
      _engineApiUrlWithVersion(
        'v0',
        engine,
        Operation.adaptiveRelevanceRefresh.value,
      );

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

  String _validateEngineName(
    String name, {
    String parameter = 'name',
    String context = 'Engine',
  }) {
    final trimmed = name.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError.value(
        name,
        parameter,
        '$context name must be a non-empty string.',
      );
    }

    if (!RegExp(r'^[a-z0-9-]+$').hasMatch(trimmed)) {
      throw ArgumentError.value(
        name,
        parameter,
        '$context name can only contain lowercase letters, numbers, and hyphens.',
      );
    }

    if (_reservedEngineNames.contains(trimmed)) {
      throw ArgumentError.value(
        name,
        parameter,
        '$context name "$trimmed" is reserved.',
      );
    }

    return trimmed;
  }

  List<String> _validateSourceEngines(
    List<String> sourceEngines, {
    String parameter = 'sourceEngines',
  }) {
    if (sourceEngines.isEmpty) {
      throw ArgumentError.value(
        sourceEngines,
        parameter,
        'You must provide at least one source engine.',
      );
    }

    final validated = <String>[];
    for (var i = 0; i < sourceEngines.length; i++) {
      validated.add(
        _validateEngineName(
          sourceEngines[i],
          parameter: '$parameter[$i]',
          context: 'Source engine',
        ),
      );
    }

    return validated;
  }

  String _validateResourceId(
    String value, {
    required String parameter,
    required String context,
  }) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError.value(
        value,
        parameter,
        '$context must be a non-empty string.',
      );
    }
    return trimmed;
  }

  List<String> _validateSynonymTerms(List<String> synonyms) {
    if (synonyms.length < 2) {
      throw RangeError.range(
        synonyms.length,
        2,
        32,
        'synonyms.length',
        'A synonym set must contain between 2 and 32 terms.',
      );
    }
    if (synonyms.length > 32) {
      throw RangeError.range(
        synonyms.length,
        2,
        32,
        'synonyms.length',
        'A synonym set must contain between 2 and 32 terms.',
      );
    }

    final normalized = <String>{};
    final validated = <String>[];

    for (var i = 0; i < synonyms.length; i++) {
      final term = synonyms[i].trim();
      if (term.isEmpty) {
        throw ArgumentError.value(
          synonyms[i],
          'synonyms[$i]',
          'Synonym terms must be non-empty strings.',
        );
      }

      final dedupKey = term.toLowerCase();
      if (!normalized.add(dedupKey)) {
        throw ArgumentError.value(
          synonyms[i],
          'synonyms[$i]',
          'Synonym terms must be unique.',
        );
      }

      validated.add(term);
    }

    return validated;
  }

  List<String> _validateCurationQueries(
    List<String> queries, {
    String parameter = 'queries',
  }) {
    if (queries.isEmpty) {
      throw ArgumentError.value(
        queries,
        parameter,
        'At least one query is required.',
      );
    }

    final normalized = <String>{};
    final validated = <String>[];

    for (var i = 0; i < queries.length; i++) {
      final query = queries[i].trim();
      if (query.isEmpty) {
        throw ArgumentError.value(
          queries[i],
          '$parameter[$i]',
          'Query must be a non-empty string.',
        );
      }
      final dedupKey = query.toLowerCase();
      if (!normalized.add(dedupKey)) {
        throw ArgumentError.value(
          queries[i],
          '$parameter[$i]',
          'Queries must be unique.',
        );
      }
      validated.add(query);
    }

    return validated;
  }

  List<String> _validateCurationDocumentIds(
    List<String> ids, {
    required String parameter,
  }) {
    final validated = <String>[];
    for (var i = 0; i < ids.length; i++) {
      final id = ids[i].trim();
      if (id.isEmpty) {
        throw ArgumentError.value(
          ids[i],
          '$parameter[$i]',
          'Document id must be a non-empty string.',
        );
      }
      validated.add(id);
    }
    return validated;
  }

  String _validateCredentialName(
    String name, {
    String parameter = 'name',
    String context = 'Credential',
  }) {
    final trimmed = name.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError.value(
        name,
        parameter,
        '$context name must be a non-empty string.',
      );
    }
    if (trimmed.length > 64) {
      throw RangeError.range(
        trimmed.length,
        1,
        64,
        '$parameter.length',
        '$context name must be 64 characters or less.',
      );
    }
    if (!RegExp(r'^[A-Za-z0-9-]+$').hasMatch(trimmed)) {
      throw ArgumentError.value(
        name,
        parameter,
        '$context name can only contain letters, numbers, and hyphens.',
      );
    }
    return trimmed;
  }

  List<String> _validateCredentialEngines(
    List<String> engines, {
    String parameter = 'engines',
  }) {
    if (engines.isEmpty) {
      throw ArgumentError.value(
        engines,
        parameter,
        'At least one engine is required when accessAllEngines is false.',
      );
    }

    final validated = <String>[];
    final deduplicated = <String>{};
    for (var i = 0; i < engines.length; i++) {
      final validatedEngine = _validateEngineName(
        engines[i],
        parameter: '$parameter[$i]',
        context: 'Credential engine',
      );
      if (!deduplicated.add(validatedEngine)) {
        throw ArgumentError.value(
          engines[i],
          '$parameter[$i]',
          'Credential engines must be unique.',
        );
      }
      validated.add(validatedEngine);
    }

    return validated;
  }

  Map<String, dynamic> _validateSearchSettingsFieldMap(
    Map<String, dynamic> fields, {
    required String parameter,
  }) {
    final normalized = <String, dynamic>{};
    for (final entry in fields.entries) {
      final field = entry.key.trim();
      if (field.isEmpty) {
        throw ArgumentError.value(
          entry.key,
          parameter,
          'Search settings field names must be non-empty strings.',
        );
      }

      if (normalized.containsKey(field)) {
        throw ArgumentError.value(
          entry.key,
          parameter,
          'Search settings field names must be unique.',
        );
      }

      normalized[field] = _mutableJsonValue(entry.value);
    }
    return normalized;
  }

  ElasticCredential _parseSingleCredentialResponse(
    dynamic responseData, {
    required String context,
  }) {
    final parsed = ElasticCredentialsResponse.fromJson(
      _asJsonObject(responseData),
    );
    if (parsed.results.isEmpty) {
      throw FormatException(
        '$context response must contain at least one credential in results.',
      );
    }
    return parsed.results.first;
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

  /// Retrieves API logs for an engine with a `GET` request.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/logs/api`.
  Future<ElasticApiLogsResponse> getApiLogs(
    String engine,
    ElasticApiLogsRequest request, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validateApiLogsRequest(request);

    final url = _operationUrl(engineName, Operation.apiLogsGet);
    return _sendRequest<ElasticApiLogsResponse>(
      method: 'GET',
      url: url,
      operation: Operation.apiLogsGet,
      engine: engineName,
      body: request.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticApiLogsResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Retrieves API logs for an engine with a `POST` request.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/logs/api`.
  Future<ElasticApiLogsResponse> queryApiLogs(
    String engine,
    ElasticApiLogsRequest request, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validateApiLogsRequest(request);

    final url = _operationUrl(engineName, Operation.apiLogsQuery);
    return _sendRequest<ElasticApiLogsResponse>(
      method: 'POST',
      url: url,
      operation: Operation.apiLogsQuery,
      engine: engineName,
      body: request.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticApiLogsResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Lists adaptive relevance suggestions for an engine.
  ///
  /// Uses `GET /api/as/v0/engines/{engine}/adaptive_relevance/suggestions`.
  Future<ElasticAdaptiveRelevanceSuggestionsResponse>
  listAdaptiveRelevanceSuggestions(
    String engine, [
    ElasticAdaptiveRelevanceSuggestionsRequest request =
        const ElasticAdaptiveRelevanceSuggestionsRequest(),
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validateAdaptiveRelevanceSuggestionsRequest(request);

    final payload = request.toJson();
    final url = _adaptiveRelevanceSuggestionsUrl(engineName);
    return _sendRequest<ElasticAdaptiveRelevanceSuggestionsResponse>(
      method: 'GET',
      url: url,
      operation: Operation.adaptiveRelevanceSuggestionsList,
      engine: engineName,
      body: payload.isEmpty ? null : payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAdaptiveRelevanceSuggestionsResponse.fromJson(
            _asJsonObject(responseData),
          ),
    );
  }

  /// Lists adaptive relevance suggestions for an engine with custom filters.
  ///
  /// Uses `POST /api/as/v0/engines/{engine}/adaptive_relevance/suggestions`.
  Future<ElasticAdaptiveRelevanceSuggestionsResponse>
  queryAdaptiveRelevanceSuggestions(
    String engine,
    ElasticAdaptiveRelevanceSuggestionsRequest request, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validateAdaptiveRelevanceSuggestionsRequest(request);

    final url = _adaptiveRelevanceSuggestionsUrl(engineName);
    return _sendRequest<ElasticAdaptiveRelevanceSuggestionsResponse>(
      method: 'POST',
      url: url,
      operation: Operation.adaptiveRelevanceSuggestionsQuery,
      engine: engineName,
      body: request.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAdaptiveRelevanceSuggestionsResponse.fromJson(
            _asJsonObject(responseData),
          ),
    );
  }

  /// Lists adaptive relevance suggestions for one query.
  ///
  /// Uses `GET /api/as/v0/engines/{engine}/adaptive_relevance/suggestions/{query}`.
  Future<ElasticAdaptiveRelevanceSuggestionsResponse>
  listAdaptiveRelevanceSuggestionsByQuery(
    String engine,
    String query, [
    ElasticAdaptiveRelevanceSuggestionsRequest request =
        const ElasticAdaptiveRelevanceSuggestionsRequest(),
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedQuery = _validateAdaptiveRelevanceQuery(query);
    _validateAdaptiveRelevanceSuggestionsRequest(request);

    final payload = request.toJson();
    final url = _adaptiveRelevanceSuggestionsByQueryUrl(
      engineName,
      validatedQuery,
    );
    return _sendRequest<ElasticAdaptiveRelevanceSuggestionsResponse>(
      method: 'GET',
      url: url,
      operation: Operation.adaptiveRelevanceSuggestionsByQueryList,
      engine: engineName,
      body: payload.isEmpty ? null : payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAdaptiveRelevanceSuggestionsResponse.fromJson(
            _asJsonObject(responseData),
          ),
    );
  }

  /// Lists adaptive relevance suggestions for one query with custom filters.
  ///
  /// Uses `POST /api/as/v0/engines/{engine}/adaptive_relevance/suggestions/{query}`.
  Future<ElasticAdaptiveRelevanceSuggestionsResponse>
  queryAdaptiveRelevanceSuggestionsByQuery(
    String engine,
    String query,
    ElasticAdaptiveRelevanceSuggestionsRequest request, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedQuery = _validateAdaptiveRelevanceQuery(query);
    _validateAdaptiveRelevanceSuggestionsRequest(request);

    final url = _adaptiveRelevanceSuggestionsByQueryUrl(
      engineName,
      validatedQuery,
    );
    return _sendRequest<ElasticAdaptiveRelevanceSuggestionsResponse>(
      method: 'POST',
      url: url,
      operation: Operation.adaptiveRelevanceSuggestionsByQueryQuery,
      engine: engineName,
      body: request.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAdaptiveRelevanceSuggestionsResponse.fromJson(
            _asJsonObject(responseData),
          ),
    );
  }

  /// Updates one or more adaptive relevance suggestions.
  ///
  /// Uses `PUT /api/as/v0/engines/{engine}/adaptive_relevance/suggestions`.
  Future<ElasticAdaptiveRelevanceSuggestionsUpdateResponse>
  updateAdaptiveRelevanceSuggestions(
    String engine,
    List<ElasticAdaptiveRelevanceSuggestionUpdate> suggestions, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validateAdaptiveRelevanceSuggestionUpdates(suggestions);

    final url = _adaptiveRelevanceSuggestionsUrl(engineName);
    final payload = {
      'suggestions': suggestions
          .map((suggestion) => suggestion.toJson())
          .toList(),
    };

    return _sendRequest<ElasticAdaptiveRelevanceSuggestionsUpdateResponse>(
      method: 'PUT',
      url: url,
      operation: Operation.adaptiveRelevanceSuggestionsUpdate,
      engine: engineName,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticAdaptiveRelevanceSuggestionsUpdateResponse.fromJson(
            _asJsonObject(responseData),
          ),
    );
  }

  /// Retrieves adaptive relevance settings for an engine.
  ///
  /// Uses `GET /api/as/v0/engines/{engine}/adaptive_relevance/settings`.
  Future<ElasticAdaptiveRelevanceSettings> getAdaptiveRelevanceSettings(
    String engine, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final url = _adaptiveRelevanceSettingsUrl(engineName);

    return _sendRequest<ElasticAdaptiveRelevanceSettings>(
      method: 'GET',
      url: url,
      operation: Operation.adaptiveRelevanceSettingsGet,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) => ElasticAdaptiveRelevanceSettings.fromJson(
        _asJsonObject(responseData),
      ),
    );
  }

  /// Updates adaptive relevance settings for an engine.
  ///
  /// Uses `PUT /api/as/v0/engines/{engine}/adaptive_relevance/settings`.
  Future<ElasticAdaptiveRelevanceSettings> updateAdaptiveRelevanceSettings(
    String engine,
    ElasticAdaptiveRelevanceSettings settings, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validateAdaptiveRelevanceSettingsUpdate(settings);

    final url = _adaptiveRelevanceSettingsUrl(engineName);
    return _sendRequest<ElasticAdaptiveRelevanceSettings>(
      method: 'PUT',
      url: url,
      operation: Operation.adaptiveRelevanceSettingsUpdate,
      engine: engineName,
      body: settings.toJson(),
      cancelToken: cancelToken,
      parse: (responseData) => ElasticAdaptiveRelevanceSettings.fromJson(
        _asJsonObject(responseData),
      ),
    );
  }

  /// Triggers adaptive relevance process refresh.
  ///
  /// Uses `POST /api/as/v0/engines/{engine}/adaptive_relevance/update_process`.
  Future<void> refreshAdaptiveRelevanceSuggestions(
    String engine, {
    ElasticAdaptiveRelevanceSuggestionType type =
        ElasticAdaptiveRelevanceSuggestionType.curation,
    CancelToken? cancelToken,
  }) async {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final url = _adaptiveRelevanceRefreshUrl(engineName);
    await _sendRequest<void>(
      method: 'POST',
      url: url,
      operation: Operation.adaptiveRelevanceRefresh,
      engine: engineName,
      body: {'suggestion_type': type.apiValue},
      cancelToken: cancelToken,
      acceptEmptyResponse: true,
      parse: (_) {},
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

  /// Retrieves search settings for an engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/search_settings`.
  Future<ElasticSearchSettings> getSearchSettings(
    String engine, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final url = _operationUrl(engineName, Operation.searchSettingsGet);
    return _sendRequest<ElasticSearchSettings>(
      method: 'GET',
      url: url,
      operation: Operation.searchSettingsGet,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSearchSettings.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Updates default search settings for an engine.
  ///
  /// Uses `PUT /api/as/v1/engines/{engine}/search_settings`.
  Future<ElasticSearchSettings> updateSearchSettings(
    String engine, {
    Map<String, dynamic>? searchFields,
    Map<String, dynamic>? resultFields,
    Map<String, dynamic>? boosts,
    int? precision,
    CancelToken? cancelToken,
  }) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validatePrecisionTuning(precision);

    final payload = <String, dynamic>{};
    if (searchFields != null) {
      payload['search_fields'] = _validateSearchSettingsFieldMap(
        searchFields,
        parameter: 'searchFields',
      );
    }
    if (resultFields != null) {
      payload['result_fields'] = _validateSearchSettingsFieldMap(
        resultFields,
        parameter: 'resultFields',
      );
    }
    if (boosts != null) {
      payload['boosts'] = _validateSearchSettingsFieldMap(
        boosts,
        parameter: 'boosts',
      );
    }
    if (precision != null) {
      payload['precision'] = precision;
    }

    if (payload.isEmpty) {
      throw ArgumentError(
        'At least one search settings field must be provided '
        '(searchFields, resultFields, boosts, precision).',
      );
    }

    final url = _operationUrl(engineName, Operation.searchSettingsUpdate);
    return _sendRequest<ElasticSearchSettings>(
      method: 'PUT',
      url: url,
      operation: Operation.searchSettingsUpdate,
      engine: engineName,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSearchSettings.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Resets search settings for an engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/search_settings/reset`.
  Future<ElasticSearchSettings> resetSearchSettings(
    String engine, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final url = _operationUrl(engineName, Operation.searchSettingsReset);
    return _sendRequest<ElasticSearchSettings>(
      method: 'POST',
      url: url,
      operation: Operation.searchSettingsReset,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSearchSettings.fromJson(_asJsonObject(responseData)),
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

  /// Lists synonym sets for an engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/synonyms`.
  Future<ElasticSynonymsListResponse> listSynonyms(
    String engine, {
    ElasticPageRequest page = const ElasticPageRequest(current: 1, size: 25),
    CancelToken? cancelToken,
  }) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validatePageRequest(page: page, maxSize: 25, context: 'synonyms page');

    final url = _operationUrl(engineName, Operation.synonymsList);
    return _sendRequest<ElasticSynonymsListResponse>(
      method: 'GET',
      url: url,
      operation: Operation.synonymsList,
      engine: engineName,
      body: page.toBody(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSynonymsListResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Retrieves a synonym set by identifier.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/synonyms/{synonymSetId}`.
  Future<ElasticSynonymSet> getSynonymSet(
    String engine,
    String synonymSetId, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedId = _validateResourceId(
      synonymSetId,
      parameter: 'synonymSetId',
      context: 'Synonym set id',
    );

    final url = _engineApiUrl(engineName, 'synonyms/$validatedId');
    return _sendRequest<ElasticSynonymSet>(
      method: 'GET',
      url: url,
      operation: Operation.synonymGet,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSynonymSet.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Creates a synonym set.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/synonyms`.
  Future<ElasticSynonymSet> createSynonymSet(
    String engine,
    List<String> synonyms, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedSynonyms = _validateSynonymTerms(synonyms);
    final url = _operationUrl(engineName, Operation.synonymCreate);

    return _sendRequest<ElasticSynonymSet>(
      method: 'POST',
      url: url,
      operation: Operation.synonymCreate,
      engine: engineName,
      body: {'synonyms': validatedSynonyms},
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSynonymSet.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Updates a synonym set.
  ///
  /// Uses `PUT /api/as/v1/engines/{engine}/synonyms/{synonymSetId}`.
  Future<ElasticSynonymSet> updateSynonymSet(
    String engine,
    String synonymSetId,
    List<String> synonyms, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedId = _validateResourceId(
      synonymSetId,
      parameter: 'synonymSetId',
      context: 'Synonym set id',
    );
    final validatedSynonyms = _validateSynonymTerms(synonyms);

    final url = _engineApiUrl(engineName, 'synonyms/$validatedId');
    return _sendRequest<ElasticSynonymSet>(
      method: 'PUT',
      url: url,
      operation: Operation.synonymUpdate,
      engine: engineName,
      body: {'synonyms': validatedSynonyms},
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticSynonymSet.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Deletes a synonym set by identifier.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/synonyms/{synonymSetId}`.
  Future<bool> deleteSynonymSet(
    String engine,
    String synonymSetId, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedId = _validateResourceId(
      synonymSetId,
      parameter: 'synonymSetId',
      context: 'Synonym set id',
    );

    final url = _engineApiUrl(engineName, 'synonyms/$validatedId');
    return _sendRequest<bool>(
      method: 'DELETE',
      url: url,
      operation: Operation.synonymDelete,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) {
        final data = _asJsonObject(responseData);
        return _toBool(data['deleted']);
      },
    );
  }

  /// Lists curations for an engine.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/curations`.
  Future<ElasticCurationsListResponse> listCurations(
    String engine, {
    ElasticPageRequest page = const ElasticPageRequest(current: 1, size: 25),
    CancelToken? cancelToken,
  }) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    _validatePageRequest(page: page, maxSize: 25, context: 'curations page');

    final url = _operationUrl(engineName, Operation.curationsList);
    return _sendRequest<ElasticCurationsListResponse>(
      method: 'GET',
      url: url,
      operation: Operation.curationsList,
      engine: engineName,
      body: page.toBody(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticCurationsListResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Retrieves a curation by identifier.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}/curations/{curationId}`.
  Future<ElasticCuration> getCuration(
    String engine,
    String curationId, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedId = _validateResourceId(
      curationId,
      parameter: 'curationId',
      context: 'Curation id',
    );

    final url = _engineApiUrl(engineName, 'curations/$validatedId');
    return _sendRequest<ElasticCuration>(
      method: 'GET',
      url: url,
      operation: Operation.curationGet,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticCuration.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Creates a curation.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/curations`.
  Future<ElasticCurationWriteResult> createCuration(
    String engine, {
    required List<String> queries,
    List<String> promoted = const <String>[],
    List<String> hidden = const <String>[],
    CancelToken? cancelToken,
  }) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedQueries = _validateCurationQueries(queries);
    final validatedPromoted = _validateCurationDocumentIds(
      promoted,
      parameter: 'promoted',
    );
    final validatedHidden = _validateCurationDocumentIds(
      hidden,
      parameter: 'hidden',
    );

    if (validatedPromoted.isEmpty && validatedHidden.isEmpty) {
      throw ArgumentError(
        'At least one document id must be provided in promoted or hidden.',
      );
    }

    final payload = <String, dynamic>{
      'queries': validatedQueries,
      'promoted': validatedPromoted,
      'hidden': validatedHidden,
    };

    final url = _operationUrl(engineName, Operation.curationCreate);
    return _sendRequest<ElasticCurationWriteResult>(
      method: 'POST',
      url: url,
      operation: Operation.curationCreate,
      engine: engineName,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticCurationWriteResult.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Updates a curation.
  ///
  /// Uses `PUT /api/as/v1/engines/{engine}/curations/{curationId}`.
  Future<ElasticCurationWriteResult> updateCuration(
    String engine,
    String curationId, {
    List<String>? queries,
    List<String>? promoted,
    List<String>? hidden,
    CancelToken? cancelToken,
  }) {
    if (queries == null && promoted == null && hidden == null) {
      throw ArgumentError(
        'At least one field must be provided to update a curation (queries, promoted, hidden).',
      );
    }

    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedId = _validateResourceId(
      curationId,
      parameter: 'curationId',
      context: 'Curation id',
    );

    final payload = <String, dynamic>{};
    if (queries != null) {
      payload['queries'] = _validateCurationQueries(queries);
    }
    if (promoted != null) {
      payload['promoted'] = _validateCurationDocumentIds(
        promoted,
        parameter: 'promoted',
      );
    }
    if (hidden != null) {
      payload['hidden'] = _validateCurationDocumentIds(
        hidden,
        parameter: 'hidden',
      );
    }

    final url = _engineApiUrl(engineName, 'curations/$validatedId');
    return _sendRequest<ElasticCurationWriteResult>(
      method: 'PUT',
      url: url,
      operation: Operation.curationUpdate,
      engine: engineName,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticCurationWriteResult.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Deletes a curation by identifier.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/curations/{curationId}`.
  Future<bool> deleteCuration(
    String engine,
    String curationId, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(
      engine,
      parameter: 'engine',
      context: 'Engine',
    );
    final validatedId = _validateResourceId(
      curationId,
      parameter: 'curationId',
      context: 'Curation id',
    );

    final url = _engineApiUrl(engineName, 'curations/$validatedId');
    return _sendRequest<bool>(
      method: 'DELETE',
      url: url,
      operation: Operation.curationDelete,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) {
        final data = _asJsonObject(responseData);
        return _toBool(data['deleted']);
      },
    );
  }

  /// Lists credentials for the account.
  ///
  /// Uses `GET /api/as/v1/credentials`.
  Future<ElasticCredentialsResponse> listCredentials({
    ElasticPageRequest page = const ElasticPageRequest(current: 1, size: 25),
    CancelToken? cancelToken,
  }) {
    _validatePageRequest(page: page, maxSize: 25, context: 'credentials page');

    final url = _operationUrl(_accountScope, Operation.credentialsList);
    return _sendRequest<ElasticCredentialsResponse>(
      method: 'GET',
      url: url,
      operation: Operation.credentialsList,
      engine: _accountScope,
      body: page.toBody(),
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticCredentialsResponse.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Retrieves one credential by name.
  ///
  /// Uses `GET /api/as/v1/credentials/{name}`.
  Future<ElasticCredential> getCredential(
    String name, [
    CancelToken? cancelToken,
  ]) {
    final credentialName = _validateCredentialName(name);
    final url = _accountApiUrl('credentials/$credentialName');

    return _sendRequest<ElasticCredential>(
      method: 'GET',
      url: url,
      operation: Operation.credentialGet,
      engine: _accountScope,
      cancelToken: cancelToken,
      parse: (responseData) => _parseSingleCredentialResponse(
        responseData,
        context: 'Get credential',
      ),
    );
  }

  /// Creates a new credential.
  ///
  /// Uses `POST /api/as/v1/credentials`.
  Future<ElasticCredential> createCredential({
    required String name,
    required ElasticCredentialType type,
    bool? read,
    bool? write,
    bool? accessAllEngines,
    List<String>? engines,
    CancelToken? cancelToken,
  }) {
    final credentialName = _validateCredentialName(name);
    if (type == ElasticCredentialType.privateKey) {
      if (read == null || write == null) {
        throw ArgumentError(
          'Private credentials require both read and write permissions.',
        );
      }
    } else if (read != null || write != null) {
      throw ArgumentError(
        'read/write permissions are only accepted for private credentials.',
      );
    }

    final validatedEngines = engines == null
        ? null
        : _validateCredentialEngines(engines);

    if (type == ElasticCredentialType.admin) {
      if (accessAllEngines != null || validatedEngines != null) {
        throw ArgumentError('Admin credentials cannot be scoped to engines.');
      }
    }

    if (accessAllEngines == true && validatedEngines != null) {
      throw ArgumentError(
        'engines cannot be provided when accessAllEngines is true.',
      );
    }

    if (accessAllEngines == false &&
        (validatedEngines == null || validatedEngines.isEmpty)) {
      throw ArgumentError(
        'engines must be provided when accessAllEngines is false.',
      );
    }

    final payload = <String, dynamic>{
      'name': credentialName,
      'type': type.apiValue,
    };
    if (read != null) payload['read'] = read;
    if (write != null) payload['write'] = write;
    if (validatedEngines != null) {
      payload['access_all_engines'] = accessAllEngines ?? false;
      payload['engines'] = validatedEngines;
    } else if (accessAllEngines != null) {
      payload['access_all_engines'] = accessAllEngines;
    }

    final url = _operationUrl(_accountScope, Operation.credentialCreate);
    return _sendRequest<ElasticCredential>(
      method: 'POST',
      url: url,
      operation: Operation.credentialCreate,
      engine: _accountScope,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) => _parseSingleCredentialResponse(
        responseData,
        context: 'Create credential',
      ),
    );
  }

  /// Updates an existing credential.
  ///
  /// Uses `PUT /api/as/v1/credentials/{name}`.
  Future<ElasticCredential> updateCredential(
    String name, {
    String? newName,
    ElasticCredentialType? type,
    bool? read,
    bool? write,
    bool? accessAllEngines,
    List<String>? engines,
    CancelToken? cancelToken,
  }) {
    final credentialName = _validateCredentialName(name);
    if (newName == null &&
        type == null &&
        read == null &&
        write == null &&
        accessAllEngines == null &&
        engines == null) {
      throw ArgumentError(
        'At least one field must be provided to update a credential '
        '(newName, type, read, write, accessAllEngines, engines).',
      );
    }

    if ((read == null) != (write == null)) {
      throw ArgumentError(
        'read and write must be provided together when updating credential permissions.',
      );
    }
    if (type != null &&
        type != ElasticCredentialType.privateKey &&
        (read != null || write != null)) {
      throw ArgumentError(
        'read/write permissions are only accepted for private credentials.',
      );
    }

    final validatedNewName = newName == null
        ? null
        : _validateCredentialName(
            newName,
            parameter: 'newName',
            context: 'Credential',
          );
    final validatedEngines = engines == null
        ? null
        : _validateCredentialEngines(engines);

    if (accessAllEngines == true && validatedEngines != null) {
      throw ArgumentError(
        'engines cannot be provided when accessAllEngines is true.',
      );
    }

    if (accessAllEngines == false &&
        (validatedEngines == null || validatedEngines.isEmpty)) {
      throw ArgumentError(
        'engines must be provided when accessAllEngines is false.',
      );
    }

    if (type == ElasticCredentialType.admin &&
        (accessAllEngines != null || validatedEngines != null)) {
      throw ArgumentError('Admin credentials cannot be scoped to engines.');
    }

    final payload = <String, dynamic>{};
    if (validatedNewName != null) payload['name'] = validatedNewName;
    if (type != null) payload['type'] = type.apiValue;
    if (read != null) payload['read'] = read;
    if (write != null) payload['write'] = write;
    if (validatedEngines != null) {
      payload['access_all_engines'] = accessAllEngines ?? false;
      payload['engines'] = validatedEngines;
    } else if (accessAllEngines != null) {
      payload['access_all_engines'] = accessAllEngines;
    }

    final url = _accountApiUrl('credentials/$credentialName');
    return _sendRequest<ElasticCredential>(
      method: 'PUT',
      url: url,
      operation: Operation.credentialUpdate,
      engine: _accountScope,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) => _parseSingleCredentialResponse(
        responseData,
        context: 'Update credential',
      ),
    );
  }

  /// Deletes a credential by name.
  ///
  /// Uses `DELETE /api/as/v1/credentials/{name}`.
  Future<bool> deleteCredential(String name, [CancelToken? cancelToken]) {
    final credentialName = _validateCredentialName(name);
    final url = _accountApiUrl('credentials/$credentialName');
    return _sendRequest<bool>(
      method: 'DELETE',
      url: url,
      operation: Operation.credentialDelete,
      engine: _accountScope,
      cancelToken: cancelToken,
      parse: (responseData) {
        final data = _asJsonObject(responseData);
        return _toBool(data['deleted']);
      },
    );
  }

  /// Retrieves account-level log settings.
  ///
  /// Uses `GET /api/as/v1/log_settings`.
  Future<ElasticLogSettings> getLogSettings([CancelToken? cancelToken]) {
    final url = _operationUrl(_accountScope, Operation.logSettingsGet);
    return _sendRequest<ElasticLogSettings>(
      method: 'GET',
      url: url,
      operation: Operation.logSettingsGet,
      engine: _accountScope,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticLogSettings.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Updates account-level log settings.
  ///
  /// Uses `PUT /api/as/v1/log_settings`.
  Future<ElasticLogSettings> updateLogSettings({
    bool? apiEnabled,
    bool? analyticsEnabled,
    CancelToken? cancelToken,
  }) {
    final payload = _validateLogSettingsPayload(
      apiEnabled: apiEnabled,
      analyticsEnabled: analyticsEnabled,
      operation: 'updateLogSettings',
    );

    final url = _operationUrl(_accountScope, Operation.logSettingsPut);
    return _sendRequest<ElasticLogSettings>(
      method: 'PUT',
      url: url,
      operation: Operation.logSettingsPut,
      engine: _accountScope,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticLogSettings.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Partially updates account-level log settings.
  ///
  /// Uses `PATCH /api/as/v1/log_settings`.
  Future<ElasticLogSettings> patchLogSettings({
    bool? apiEnabled,
    bool? analyticsEnabled,
    CancelToken? cancelToken,
  }) {
    final payload = _validateLogSettingsPayload(
      apiEnabled: apiEnabled,
      analyticsEnabled: analyticsEnabled,
      operation: 'patchLogSettings',
    );

    final url = _operationUrl(_accountScope, Operation.logSettingsPatch);
    return _sendRequest<ElasticLogSettings>(
      method: 'PATCH',
      url: url,
      operation: Operation.logSettingsPatch,
      engine: _accountScope,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticLogSettings.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Resets log settings to default values.
  ///
  /// Uses `DELETE /api/as/v1/log_settings`.
  Future<ElasticLogSettings> resetLogSettings([CancelToken? cancelToken]) {
    final url = _operationUrl(_accountScope, Operation.logSettingsDelete);
    return _sendRequest<ElasticLogSettings>(
      method: 'DELETE',
      url: url,
      operation: Operation.logSettingsDelete,
      engine: _accountScope,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticLogSettings.fromJson(_asJsonObject(responseData)),
    );
  }

  Future<ElasticEnginesResponse> listEngines({
    ElasticPageRequest page = const ElasticPageRequest(current: 1, size: 25),
    CancelToken? cancelToken,
  }) {
    _validatePageRequest(page: page, maxSize: 25, context: 'engines page');

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

  /// Retrieves one engine by name.
  ///
  /// Uses `GET /api/as/v1/engines/{engine}`.
  Future<ElasticEngineInfo> getEngineInfo(
    String name, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(name);
    final url = _operationUrl(engineName, Operation.engineGet);
    return _sendRequest<ElasticEngineInfo>(
      method: 'GET',
      url: url,
      operation: Operation.engineGet,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticEngineInfo.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Creates a new engine.
  ///
  /// Uses `POST /api/as/v1/engines`.
  Future<ElasticEngineInfo> createEngine({
    required String name,
    String? language,
    ElasticEngineType? type,
    List<String>? sourceEngines,
    int? numberOfShards,
    CancelToken? cancelToken,
  }) {
    final engineName = _validateEngineName(name);
    final trimmedLanguage = language?.trim();
    if (language != null &&
        (trimmedLanguage == null || trimmedLanguage.isEmpty)) {
      throw ArgumentError.value(
        language,
        'language',
        'language must be a non-empty string when provided.',
      );
    }
    if (numberOfShards != null && numberOfShards < 1) {
      throw RangeError.range(
        numberOfShards,
        1,
        null,
        'numberOfShards',
        'numberOfShards must be greater than or equal to 1.',
      );
    }

    final validatedSourceEngines = sourceEngines == null
        ? null
        : _validateSourceEngines(sourceEngines);
    final effectiveType =
        type ??
        (validatedSourceEngines != null ? ElasticEngineType.meta : null);

    if (effectiveType == ElasticEngineType.defaultEngine &&
        validatedSourceEngines != null) {
      throw ArgumentError(
        'sourceEngines can only be provided when type is ElasticEngineType.meta.',
      );
    }
    if (effectiveType == ElasticEngineType.meta) {
      if (trimmedLanguage != null) {
        throw ArgumentError(
          'language cannot be provided when type is ElasticEngineType.meta.',
        );
      }
      if (numberOfShards != null) {
        throw ArgumentError(
          'numberOfShards cannot be provided when type is ElasticEngineType.meta.',
        );
      }
    }

    final payload = <String, dynamic>{'name': engineName};
    if (trimmedLanguage != null) {
      payload['language'] = trimmedLanguage;
    }
    if (effectiveType != null) {
      payload['type'] = effectiveType.apiValue;
    }
    if (validatedSourceEngines != null) {
      payload['source_engines'] = validatedSourceEngines;
    }
    if (numberOfShards != null) {
      payload['index_create_settings_override'] = {
        'number_of_shards': numberOfShards,
      };
    }

    final url = _operationUrl(_accountScope, Operation.engineCreate);
    return _sendRequest<ElasticEngineInfo>(
      method: 'POST',
      url: url,
      operation: Operation.engineCreate,
      engine: _accountScope,
      body: payload,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticEngineInfo.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Deletes an engine by name.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}`.
  Future<bool> deleteEngine(String name, [CancelToken? cancelToken]) {
    final engineName = _validateEngineName(name);
    final url = _operationUrl(engineName, Operation.engineDelete);
    return _sendRequest<bool>(
      method: 'DELETE',
      url: url,
      operation: Operation.engineDelete,
      engine: engineName,
      cancelToken: cancelToken,
      parse: (responseData) {
        final data = _asJsonObject(responseData);
        return _toBool(data['deleted']);
      },
    );
  }

  /// Adds source engines to a meta engine.
  ///
  /// Uses `POST /api/as/v1/engines/{engine}/source_engines`.
  Future<ElasticEngineInfo> addMetaEngineSourceEngines(
    String name,
    List<String> sourceEngines, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(name);
    final validatedSourceEngines = _validateSourceEngines(sourceEngines);
    final url = _operationUrl(engineName, Operation.sourceEnginesAdd);
    return _sendRequest<ElasticEngineInfo>(
      method: 'POST',
      url: url,
      operation: Operation.sourceEnginesAdd,
      engine: engineName,
      body: validatedSourceEngines,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticEngineInfo.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Removes source engines from a meta engine.
  ///
  /// Uses `DELETE /api/as/v1/engines/{engine}/source_engines`.
  Future<ElasticEngineInfo> removeMetaEngineSourceEngines(
    String name,
    List<String> sourceEngines, [
    CancelToken? cancelToken,
  ]) {
    final engineName = _validateEngineName(name);
    final validatedSourceEngines = _validateSourceEngines(sourceEngines);
    final url = _operationUrl(engineName, Operation.sourceEnginesRemove);
    return _sendRequest<ElasticEngineInfo>(
      method: 'DELETE',
      url: url,
      operation: Operation.sourceEnginesRemove,
      engine: engineName,
      body: validatedSourceEngines,
      cancelToken: cancelToken,
      parse: (responseData) =>
          ElasticEngineInfo.fromJson(_asJsonObject(responseData)),
    );
  }

  /// Creates and returns a new [ElasticObject] linked to this instance of service.
  ElasticEngine engine(String name) {
    final engineName = _validateEngineName(name);
    return ElasticEngine(service: this, name: engineName);
  }
}
