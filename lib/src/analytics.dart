part of '../elastic_app_search.dart';

void _validateAnalyticsTags(List<String> tags) {
  if (tags.length > 16) {
    throw RangeError.range(
      tags.length,
      0,
      16,
      'tags.length',
      'You cannot submit more than 16 tags.',
    );
  }

  for (final tag in tags) {
    _validateAnalyticsTagValue(tag, parameter: 'tag');
  }
}

void _validateAnalyticsTagValue(String tag, {required String parameter}) {
  if (tag.isEmpty) {
    throw ArgumentError.value(
      tag,
      parameter,
      'A tag must be a non-empty string.',
    );
  }
  if (tag.length > 64) {
    throw ArgumentError.value(
      tag,
      parameter,
      'A tag is limited to 64 characters.',
    );
  }
}

void _validateAnalyticsFilter(ElasticAnalyticsFilter? filter) {
  if (filter == null) return;

  final query = filter.query;
  if (query != null && query.trim().isEmpty) {
    throw ArgumentError.value(
      query,
      'filters.query',
      'The query filter must be a non-empty string.',
    );
  }

  final tag = filter.tag;
  if (tag != null) {
    _validateAnalyticsTags(tag);
  }

  final date = filter.date;
  if (date != null) {
    final from = date.from;
    final to = date.to;
    if (from != null && from.trim().isEmpty) {
      throw ArgumentError.value(
        from,
        'filters.date.from',
        'Date filter "from" must be a non-empty RFC3339 value.',
      );
    }
    if (to != null && to.trim().isEmpty) {
      throw ArgumentError.value(
        to,
        'filters.date.to',
        'Date filter "to" must be a non-empty RFC3339 value.',
      );
    }
  }

  final all = filter.all;
  if (all != null) {
    if (all.isEmpty) {
      throw ArgumentError.value(
        all,
        'filters.all',
        'The "all" filter array cannot be empty.',
      );
    }
    for (final nested in all) {
      _validateAnalyticsFilter(nested);
    }
  }
}

@freezed
abstract class _ElasticAnalytics with _$ElasticAnalytics {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticAnalytics({
    /// Array of strings representing the tags you’d like to apply to the query.
    /// You may submit up to 16 tags, and each may be up to 64 characters in length.
    required List<String> tags,
  }) = _ElasticAnalyticsImpl;

  factory _ElasticAnalytics.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsFromJson(json);
}

@freezed
abstract class ElasticClickthroughRequest with _$ElasticClickthroughRequest {
  const ElasticClickthroughRequest._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticClickthroughRequest({
    required String query,
    @JsonKey(name: "document_id") required String documentId,
    @JsonKey(name: "request_id") String? requestId,
    List<String>? tags,
  }) = _ElasticClickthroughRequest;

  factory ElasticClickthroughRequest.fromJson(Map<String, dynamic> json) =>
      _$ElasticClickthroughRequestFromJson(json);
}

class _AnalyticsTagFilterConverter
    implements JsonConverter<List<String>?, Object?> {
  const _AnalyticsTagFilterConverter();

  @override
  List<String>? fromJson(Object? value) {
    if (value == null) return null;
    if (value is String) return [value];
    if (value is List) {
      final tags = <String>[];
      for (final rawTag in value) {
        if (rawTag == null) continue;
        tags.add(rawTag.toString());
      }
      return tags.isEmpty ? null : tags;
    }
    return [value.toString()];
  }

  @override
  Object? toJson(List<String>? value) {
    if (value == null || value.isEmpty) return null;
    return value.length == 1 ? value.first : value;
  }
}

@freezed
abstract class ElasticAnalyticsDateFilter with _$ElasticAnalyticsDateFilter {
  const ElasticAnalyticsDateFilter._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsDateFilter({String? from, String? to}) =
      _ElasticAnalyticsDateFilter;

  factory ElasticAnalyticsDateFilter.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsDateFilterFromJson(json);
}

@freezed
abstract class ElasticAnalyticsFilter with _$ElasticAnalyticsFilter {
  const ElasticAnalyticsFilter._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsFilter({
    String? query,
    bool? clicks,
    bool? results,
    @JsonKey(name: "document_id") Object? documentId,
    @_AnalyticsTagFilterConverter() List<String>? tag,
    ElasticAnalyticsDateFilter? date,
    List<ElasticAnalyticsFilter>? all,
  }) = _ElasticAnalyticsFilter;

  factory ElasticAnalyticsFilter.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsFilterFromJson(json);
}

enum ElasticAnalyticsInterval {
  @JsonValue("hour")
  hour,
  @JsonValue("day")
  day,
}

@freezed
abstract class ElasticAnalyticsQueriesRequest
    with _$ElasticAnalyticsQueriesRequest {
  const ElasticAnalyticsQueriesRequest._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsQueriesRequest({
    ElasticPageRequest? page,
    ElasticAnalyticsFilter? filters,
  }) = _ElasticAnalyticsQueriesRequest;

  factory ElasticAnalyticsQueriesRequest.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsQueriesRequestFromJson(json);
}

@freezed
abstract class ElasticAnalyticsClicksRequest
    with _$ElasticAnalyticsClicksRequest {
  const ElasticAnalyticsClicksRequest._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsClicksRequest({
    String? query,
    ElasticPageRequest? page,
    ElasticAnalyticsFilter? filters,
  }) = _ElasticAnalyticsClicksRequest;

  factory ElasticAnalyticsClicksRequest.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsClicksRequestFromJson(json);
}

@freezed
abstract class ElasticAnalyticsCountsRequest
    with _$ElasticAnalyticsCountsRequest {
  const ElasticAnalyticsCountsRequest._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsCountsRequest({
    ElasticAnalyticsFilter? filters,
    ElasticAnalyticsInterval? interval,
  }) = _ElasticAnalyticsCountsRequest;

  factory ElasticAnalyticsCountsRequest.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsCountsRequestFromJson(json);
}

@freezed
abstract class ElasticAnalyticsMeta with _$ElasticAnalyticsMeta {
  const ElasticAnalyticsMeta._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsMeta({required ElasticPageRequest page}) =
      _ElasticAnalyticsMeta;

  factory ElasticAnalyticsMeta.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsMetaFromJson(json);
}

@freezed
abstract class ElasticAnalyticsQueryResult with _$ElasticAnalyticsQueryResult {
  const ElasticAnalyticsQueryResult._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsQueryResult({
    required String term,
    required int clicks,
    required int queries,
  }) = _ElasticAnalyticsQueryResult;

  factory ElasticAnalyticsQueryResult.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsQueryResultFromJson(json);
}

@freezed
abstract class ElasticAnalyticsQueriesResponse
    with _$ElasticAnalyticsQueriesResponse {
  const ElasticAnalyticsQueriesResponse._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsQueriesResponse({
    required ElasticAnalyticsMeta meta,
    required List<ElasticAnalyticsQueryResult> results,
  }) = _ElasticAnalyticsQueriesResponse;

  factory ElasticAnalyticsQueriesResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsQueriesResponseFromJson(json);
}

@freezed
abstract class ElasticAnalyticsClickResult with _$ElasticAnalyticsClickResult {
  const ElasticAnalyticsClickResult._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsClickResult({
    @JsonKey(name: "document_id") required String documentId,
    required int clicks,
  }) = _ElasticAnalyticsClickResult;

  factory ElasticAnalyticsClickResult.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsClickResultFromJson(json);
}

@freezed
abstract class ElasticAnalyticsClicksResponse
    with _$ElasticAnalyticsClicksResponse {
  const ElasticAnalyticsClicksResponse._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsClicksResponse({
    required ElasticAnalyticsMeta meta,
    required List<ElasticAnalyticsClickResult> results,
  }) = _ElasticAnalyticsClicksResponse;

  factory ElasticAnalyticsClicksResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsClicksResponseFromJson(json);
}

@freezed
abstract class ElasticAnalyticsCountResult with _$ElasticAnalyticsCountResult {
  const ElasticAnalyticsCountResult._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsCountResult({
    required int clicks,
    required int queries,
    required String from,
    required String to,
  }) = _ElasticAnalyticsCountResult;

  factory ElasticAnalyticsCountResult.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsCountResultFromJson(json);
}

@freezed
abstract class ElasticAnalyticsCountsResponse
    with _$ElasticAnalyticsCountsResponse {
  const ElasticAnalyticsCountsResponse._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticAnalyticsCountsResponse({
    required List<ElasticAnalyticsCountResult> results,
  }) = _ElasticAnalyticsCountsResponse;

  factory ElasticAnalyticsCountsResponse.fromJson(Map<String, dynamic> json) =>
      _$ElasticAnalyticsCountsResponseFromJson(json);
}
