// ignore_for_file: unused_element

part of elastic_app_search;

@protected
enum _ElasticFilterType { all, none, any }

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

enum GeoUnit {
  millimeters,
  centimeters,
  meters,
  kilometers,
  inches,
  feet,
  yard,
  miles,
}

extension GeoUnitX on GeoUnit {
  String toJson() {
    switch (this) {
      case GeoUnit.millimeters:
        return 'mm';
      case GeoUnit.centimeters:
        return 'cm';
      case GeoUnit.meters:
        return 'm';
      case GeoUnit.kilometers:
        return 'km';
      case GeoUnit.inches:
        return 'in';
      case GeoUnit.feet:
        return 'ft';
      case GeoUnit.yard:
        return 'yd';
      case GeoUnit.miles:
        return 'mi';
    }
  }
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
