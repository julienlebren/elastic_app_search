// ignore_for_file: unused_element

part of elastic_app_search;

@freezed
class _ElasticAnalytics with _$_ElasticAnalytics {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticAnalytics({
    /// Array of strings representing the tags you’d like to apply to the query.
    /// You may submit up to 16 tags, and each may be up to 64 characters in length.
    required List<String> tags,
  }) = __ElasticAnalytics;

  factory _ElasticAnalytics.fromJson(Map<String, dynamic> json) =>
      _$_ElasticAnalyticsFromJson(json);
}
