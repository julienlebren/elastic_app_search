part of '../elastic_app_search.dart';

/// Supported adaptive relevance suggestion types.
enum ElasticAdaptiveRelevanceSuggestionType { curation }

extension _ElasticAdaptiveRelevanceSuggestionTypeX
    on ElasticAdaptiveRelevanceSuggestionType {
  String get apiValue {
    switch (this) {
      case ElasticAdaptiveRelevanceSuggestionType.curation:
        return 'curation';
    }
  }
}

ElasticAdaptiveRelevanceSuggestionType
_adaptiveRelevanceSuggestionTypeFromApiValue(String value) {
  switch (value) {
    case 'curation':
      return ElasticAdaptiveRelevanceSuggestionType.curation;
  }

  throw FormatException(
    'Invalid adaptive relevance suggestion type "$value". Expected: curation.',
  );
}

/// Supported adaptive relevance suggestion statuses.
enum ElasticAdaptiveRelevanceSuggestionStatus {
  pending,
  applied,
  automated,
  rejected,
  disabled,
}

extension _ElasticAdaptiveRelevanceSuggestionStatusX
    on ElasticAdaptiveRelevanceSuggestionStatus {
  String get apiValue {
    switch (this) {
      case ElasticAdaptiveRelevanceSuggestionStatus.pending:
        return 'pending';
      case ElasticAdaptiveRelevanceSuggestionStatus.applied:
        return 'applied';
      case ElasticAdaptiveRelevanceSuggestionStatus.automated:
        return 'automated';
      case ElasticAdaptiveRelevanceSuggestionStatus.rejected:
        return 'rejected';
      case ElasticAdaptiveRelevanceSuggestionStatus.disabled:
        return 'disabled';
    }
  }
}

ElasticAdaptiveRelevanceSuggestionStatus
_adaptiveRelevanceSuggestionStatusFromApiValue(String value) {
  switch (value) {
    case 'pending':
      return ElasticAdaptiveRelevanceSuggestionStatus.pending;
    case 'applied':
      return ElasticAdaptiveRelevanceSuggestionStatus.applied;
    case 'automated':
      return ElasticAdaptiveRelevanceSuggestionStatus.automated;
    case 'rejected':
      return ElasticAdaptiveRelevanceSuggestionStatus.rejected;
    case 'disabled':
      return ElasticAdaptiveRelevanceSuggestionStatus.disabled;
  }

  throw FormatException(
    'Invalid adaptive relevance suggestion status "$value". '
    'Expected one of: pending, applied, automated, rejected, disabled.',
  );
}

/// Supported adaptive relevance curation operations.
enum ElasticAdaptiveRelevanceSuggestionOperation { create, update, delete }

extension _ElasticAdaptiveRelevanceSuggestionOperationX
    on ElasticAdaptiveRelevanceSuggestionOperation {
  String get apiValue {
    switch (this) {
      case ElasticAdaptiveRelevanceSuggestionOperation.create:
        return 'create';
      case ElasticAdaptiveRelevanceSuggestionOperation.update:
        return 'update';
      case ElasticAdaptiveRelevanceSuggestionOperation.delete:
        return 'delete';
    }
  }
}

ElasticAdaptiveRelevanceSuggestionOperation
_adaptiveRelevanceSuggestionOperationFromApiValue(String value) {
  switch (value) {
    case 'create':
      return ElasticAdaptiveRelevanceSuggestionOperation.create;
    case 'update':
      return ElasticAdaptiveRelevanceSuggestionOperation.update;
    case 'delete':
      return ElasticAdaptiveRelevanceSuggestionOperation.delete;
  }

  throw FormatException(
    'Invalid adaptive relevance suggestion operation "$value". '
    'Expected one of: create, update, delete.',
  );
}

/// Supported adaptive relevance curation modes.
enum ElasticAdaptiveRelevanceMode { manual, automatic }

extension _ElasticAdaptiveRelevanceModeX on ElasticAdaptiveRelevanceMode {
  String get apiValue {
    switch (this) {
      case ElasticAdaptiveRelevanceMode.manual:
        return 'manual';
      case ElasticAdaptiveRelevanceMode.automatic:
        return 'automatic';
    }
  }
}

ElasticAdaptiveRelevanceMode _adaptiveRelevanceModeFromApiValue(String value) {
  switch (value) {
    case 'manual':
      return ElasticAdaptiveRelevanceMode.manual;
    case 'automatic':
      return ElasticAdaptiveRelevanceMode.automatic;
  }

  throw FormatException(
    'Invalid adaptive relevance mode "$value". Expected: manual or automatic.',
  );
}

/// Supported schedule units for adaptive relevance.
enum ElasticAdaptiveRelevanceScheduleUnit {
  second,
  minute,
  hour,
  day,
  week,
  month,
}

extension _ElasticAdaptiveRelevanceScheduleUnitX
    on ElasticAdaptiveRelevanceScheduleUnit {
  String get apiValue {
    switch (this) {
      case ElasticAdaptiveRelevanceScheduleUnit.second:
        return 'second';
      case ElasticAdaptiveRelevanceScheduleUnit.minute:
        return 'minute';
      case ElasticAdaptiveRelevanceScheduleUnit.hour:
        return 'hour';
      case ElasticAdaptiveRelevanceScheduleUnit.day:
        return 'day';
      case ElasticAdaptiveRelevanceScheduleUnit.week:
        return 'week';
      case ElasticAdaptiveRelevanceScheduleUnit.month:
        return 'month';
    }
  }
}

ElasticAdaptiveRelevanceScheduleUnit _adaptiveRelevanceScheduleUnitFromApiValue(
  String value,
) {
  switch (value) {
    case 'second':
      return ElasticAdaptiveRelevanceScheduleUnit.second;
    case 'minute':
      return ElasticAdaptiveRelevanceScheduleUnit.minute;
    case 'hour':
      return ElasticAdaptiveRelevanceScheduleUnit.hour;
    case 'day':
      return ElasticAdaptiveRelevanceScheduleUnit.day;
    case 'week':
      return ElasticAdaptiveRelevanceScheduleUnit.week;
    case 'month':
      return ElasticAdaptiveRelevanceScheduleUnit.month;
  }

  throw FormatException(
    'Invalid adaptive relevance schedule unit "$value". '
    'Expected one of: second, minute, hour, day, week, month.',
  );
}

/// Filter payload used by adaptive relevance suggestions endpoints.
class ElasticAdaptiveRelevanceSuggestionsFilter {
  const ElasticAdaptiveRelevanceSuggestionsFilter({this.type, this.status});

  /// Optional suggestion type filter.
  final ElasticAdaptiveRelevanceSuggestionType? type;

  /// Optional suggestion statuses filter.
  final List<ElasticAdaptiveRelevanceSuggestionStatus>? status;

  factory ElasticAdaptiveRelevanceSuggestionsFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    final rawType = json['type']?.toString();
    ElasticAdaptiveRelevanceSuggestionType? type;
    if (rawType != null && rawType.isNotEmpty) {
      try {
        type = _adaptiveRelevanceSuggestionTypeFromApiValue(rawType);
      } on FormatException {
        type = null;
      }
    }

    final rawStatus = json['status'];
    List<ElasticAdaptiveRelevanceSuggestionStatus>? status;
    if (rawStatus is List) {
      final values = <ElasticAdaptiveRelevanceSuggestionStatus>[];
      for (final entry in rawStatus) {
        final value = entry?.toString();
        if (value == null || value.isEmpty) continue;
        try {
          values.add(_adaptiveRelevanceSuggestionStatusFromApiValue(value));
        } on FormatException {
          continue;
        }
      }
      if (values.isNotEmpty) {
        status = List.unmodifiable(values);
      }
    }

    return ElasticAdaptiveRelevanceSuggestionsFilter(
      type: type,
      status: status,
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type?.apiValue,
      'status': status?.map((item) => item.apiValue).toList(),
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Query body for adaptive relevance suggestions list endpoints.
class ElasticAdaptiveRelevanceSuggestionsRequest {
  const ElasticAdaptiveRelevanceSuggestionsRequest({this.filters});

  /// Optional filters for type/status.
  final ElasticAdaptiveRelevanceSuggestionsFilter? filters;

  factory ElasticAdaptiveRelevanceSuggestionsRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    final filtersJson = _asStringDynamicMap(json['filters']);
    return ElasticAdaptiveRelevanceSuggestionsRequest(
      filters: filtersJson == null
          ? null
          : ElasticAdaptiveRelevanceSuggestionsFilter.fromJson(filtersJson),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'filters': filters?.toJson()};
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// One adaptive relevance suggestion.
class ElasticAdaptiveRelevanceSuggestion {
  const ElasticAdaptiveRelevanceSuggestion({
    required this.query,
    this.type,
    this.typeRaw,
    this.status,
    this.statusRaw,
    this.operation,
    this.operationRaw,
    this.promoted = const <String>[],
    this.curationId,
    this.overrideManualCuration,
    this.createdAt,
    this.updatedAt,
    this.errors = const <String>[],
  });

  /// Query string associated to this suggestion.
  final String query;

  /// Parsed suggestion type when known.
  final ElasticAdaptiveRelevanceSuggestionType? type;

  /// Raw suggestion type value.
  final String? typeRaw;

  /// Parsed suggestion status when known.
  final ElasticAdaptiveRelevanceSuggestionStatus? status;

  /// Raw suggestion status value.
  final String? statusRaw;

  /// Parsed curation operation when known.
  final ElasticAdaptiveRelevanceSuggestionOperation? operation;

  /// Raw curation operation value.
  final String? operationRaw;

  /// Suggested promoted documents list.
  final List<String> promoted;

  /// Existing curation id when available.
  final String? curationId;

  /// Whether manual curation override is enabled.
  final bool? overrideManualCuration;

  /// Creation timestamp.
  final String? createdAt;

  /// Update timestamp.
  final String? updatedAt;

  /// Per-entry update errors.
  final List<String> errors;

  factory ElasticAdaptiveRelevanceSuggestion.fromJson(
    Map<String, dynamic> json,
  ) {
    final rawType = json['type']?.toString();
    ElasticAdaptiveRelevanceSuggestionType? parsedType;
    if (rawType != null && rawType.isNotEmpty) {
      try {
        parsedType = _adaptiveRelevanceSuggestionTypeFromApiValue(rawType);
      } on FormatException {
        parsedType = null;
      }
    }

    final rawStatus = json['status']?.toString();
    ElasticAdaptiveRelevanceSuggestionStatus? parsedStatus;
    if (rawStatus != null && rawStatus.isNotEmpty) {
      try {
        parsedStatus = _adaptiveRelevanceSuggestionStatusFromApiValue(
          rawStatus,
        );
      } on FormatException {
        parsedStatus = null;
      }
    }

    final rawOperation = json['operation']?.toString();
    ElasticAdaptiveRelevanceSuggestionOperation? parsedOperation;
    if (rawOperation != null && rawOperation.isNotEmpty) {
      try {
        parsedOperation = _adaptiveRelevanceSuggestionOperationFromApiValue(
          rawOperation,
        );
      } on FormatException {
        parsedOperation = null;
      }
    }

    return ElasticAdaptiveRelevanceSuggestion(
      query: _toStringOrEmpty(json['query']),
      type: parsedType,
      typeRaw: rawType,
      status: parsedStatus,
      statusRaw: rawStatus,
      operation: parsedOperation,
      operationRaw: rawOperation,
      promoted: List.unmodifiable(_toStringList(json['promoted'])),
      curationId: json['curation_id']?.toString(),
      overrideManualCuration: _toNullableBool(json['override_manual_curation']),
      createdAt: json['created_at']?.toString(),
      updatedAt: json['updated_at']?.toString(),
      errors: List.unmodifiable(_toStringList(json['errors'])),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'query': query,
      'type': type?.apiValue ?? typeRaw,
      'status': status?.apiValue ?? statusRaw,
      'operation': operation?.apiValue ?? operationRaw,
      'promoted': promoted,
      'curation_id': curationId,
      'override_manual_curation': overrideManualCuration,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'errors': errors,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Paginated response returned by adaptive relevance suggestions endpoints.
class ElasticAdaptiveRelevanceSuggestionsResponse {
  const ElasticAdaptiveRelevanceSuggestionsResponse({
    required this.meta,
    required this.results,
  });

  /// Pagination metadata.
  final ElasticDocumentsListMeta meta;

  /// Suggestions in the current page.
  final List<ElasticAdaptiveRelevanceSuggestion> results;

  factory ElasticAdaptiveRelevanceSuggestionsResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    final metaJson = _asJsonObjectStrict(json['meta'], context: 'meta');
    final resultItems = _asJsonObjectListStrict(
      json['results'],
      context: 'results',
    );

    return ElasticAdaptiveRelevanceSuggestionsResponse(
      meta: ElasticDocumentsListMeta.fromJson(metaJson),
      results: List.unmodifiable(
        resultItems.map(ElasticAdaptiveRelevanceSuggestion.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'meta': meta.toJson(),
    'results': results.map((item) => item.toJson()).toList(),
  };
}

/// Update payload entry sent to adaptive relevance suggestions API.
class ElasticAdaptiveRelevanceSuggestionUpdate {
  const ElasticAdaptiveRelevanceSuggestionUpdate({
    required this.query,
    required this.type,
    required this.status,
  });

  /// Query to update.
  final String query;

  /// Suggestion type.
  final ElasticAdaptiveRelevanceSuggestionType type;

  /// New suggestion status.
  final ElasticAdaptiveRelevanceSuggestionStatus status;

  factory ElasticAdaptiveRelevanceSuggestionUpdate.fromJson(
    Map<String, dynamic> json,
  ) {
    final query = _toStringOrEmpty(json['query']);
    final rawType = _toStringOrEmpty(json['type']);
    final rawStatus = _toStringOrEmpty(json['status']);

    return ElasticAdaptiveRelevanceSuggestionUpdate(
      query: query,
      type: _adaptiveRelevanceSuggestionTypeFromApiValue(rawType),
      status: _adaptiveRelevanceSuggestionStatusFromApiValue(rawStatus),
    );
  }

  Map<String, dynamic> toJson() => {
    'query': query,
    'type': type.apiValue,
    'status': status.apiValue,
  };
}

/// Response payload returned by adaptive relevance suggestions update endpoint.
class ElasticAdaptiveRelevanceSuggestionsUpdateResponse {
  const ElasticAdaptiveRelevanceSuggestionsUpdateResponse({
    required this.results,
  });

  /// Update result per submitted suggestion.
  final List<ElasticAdaptiveRelevanceSuggestion> results;

  factory ElasticAdaptiveRelevanceSuggestionsUpdateResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    final resultItems = _asJsonObjectListStrict(
      json['results'],
      context: 'results',
    );
    return ElasticAdaptiveRelevanceSuggestionsUpdateResponse(
      results: List.unmodifiable(
        resultItems.map(ElasticAdaptiveRelevanceSuggestion.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'results': results.map((item) => item.toJson()).toList(),
  };
}

/// Curation settings block used by adaptive relevance settings endpoint.
class ElasticAdaptiveRelevanceCurationSettings {
  const ElasticAdaptiveRelevanceCurationSettings({
    this.enabled,
    this.mode,
    this.timeframe,
    this.maxSize,
    this.minClicks,
    this.scheduleFrequency,
    this.scheduleUnit,
  });

  /// Whether adaptive curation suggestions are enabled.
  final bool? enabled;

  /// Curation mode.
  final ElasticAdaptiveRelevanceMode? mode;

  /// Time window in days used by the suggestion process.
  final int? timeframe;

  /// Maximum number of suggestions to process per run.
  final int? maxSize;

  /// Minimum clicks required before generating suggestions.
  final int? minClicks;

  /// Schedule frequency value.
  final int? scheduleFrequency;

  /// Schedule frequency unit.
  final ElasticAdaptiveRelevanceScheduleUnit? scheduleUnit;

  factory ElasticAdaptiveRelevanceCurationSettings.fromJson(
    Map<String, dynamic> json,
  ) {
    final rawMode = json['mode']?.toString();
    ElasticAdaptiveRelevanceMode? mode;
    if (rawMode != null && rawMode.isNotEmpty) {
      try {
        mode = _adaptiveRelevanceModeFromApiValue(rawMode);
      } on FormatException {
        mode = null;
      }
    }

    final rawScheduleUnit = json['schedule_unit']?.toString();
    ElasticAdaptiveRelevanceScheduleUnit? scheduleUnit;
    if (rawScheduleUnit != null && rawScheduleUnit.isNotEmpty) {
      try {
        scheduleUnit = _adaptiveRelevanceScheduleUnitFromApiValue(
          rawScheduleUnit,
        );
      } on FormatException {
        scheduleUnit = null;
      }
    }

    return ElasticAdaptiveRelevanceCurationSettings(
      enabled: _toNullableBool(json['enabled']),
      mode: mode,
      timeframe: _toNullableInt(json['timeframe']),
      maxSize: _toNullableInt(json['max_size']),
      minClicks: _toNullableInt(json['min_clicks']),
      scheduleFrequency: _toNullableInt(json['schedule_frequency']),
      scheduleUnit: scheduleUnit,
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'enabled': enabled,
      'mode': mode?.apiValue,
      'timeframe': timeframe,
      'max_size': maxSize,
      'min_clicks': minClicks,
      'schedule_frequency': scheduleFrequency,
      'schedule_unit': scheduleUnit?.apiValue,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Adaptive relevance settings payload.
class ElasticAdaptiveRelevanceSettings {
  const ElasticAdaptiveRelevanceSettings({required this.curation});

  /// Curation settings.
  final ElasticAdaptiveRelevanceCurationSettings curation;

  factory ElasticAdaptiveRelevanceSettings.fromJson(Map<String, dynamic> json) {
    final curationJson = _asJsonObjectStrict(
      json['curation'],
      context: 'curation',
    );
    return ElasticAdaptiveRelevanceSettings(
      curation: ElasticAdaptiveRelevanceCurationSettings.fromJson(curationJson),
    );
  }

  Map<String, dynamic> toJson() => {'curation': curation.toJson()};
}
