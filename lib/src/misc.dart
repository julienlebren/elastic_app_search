// ignore_for_file: unused_element

part of elastic_app_search;

@freezed
class _ElasticRange with _$_ElasticRange {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticRange({
    String? name,
    String? from,
    String? to,
    int? count,
  }) = __ElasticRange;

  factory _ElasticRange.fromJson(Map<String, dynamic> json) =>
      _$_ElasticRangeFromJson(json);
}

extension DateTimeX on DateTime {
  String toUTCString() {
    return DateTime.utc(
      year,
      month,
      day,
      hour,
      minute,
      second,
    ).toString().replaceAll(' ', 'T');
  }
}
