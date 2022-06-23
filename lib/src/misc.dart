// ignore_for_file: unused_element

part of elastic_app_search;

enum _ElasticFilterType {
  @JsonValue("all")
  all,
  @JsonValue("none")
  none,
  @JsonValue("any")
  any,
}

enum ElasticFacetType {
  @JsonValue("value")
  value,
  @JsonValue("range")
  range,
}

enum GeoUnit {
  @JsonValue("mm")
  millimeters,
  @JsonValue("cm")
  centimeters,
  @JsonValue("m")
  meters,
  @JsonValue("km")
  kilometers,
  @JsonValue("in")
  inches,
  @JsonValue("ft")
  feet,
  @JsonValue("yd")
  yard,
  @JsonValue("mi")
  miles,
}

extension _DateTimeX on DateTime {
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

@freezed
class ElasticRange with _$ElasticRange {
  @Assert(
      'from != null || to != null', 'You must provide at least `from` or `to`.')
  @Assert(
      'from == null || (from != null && (from is int || from is double || from is DateTime))',
      '`from` must be an int, a double or a DateTime')
  @Assert(
      'to == null || (to != null && (to is int || to is double || to is DateTime))',
      '`to` must be an int, a double or a DateTime')
  const factory ElasticRange({
    String? name,
    Object? from,
    Object? to,
  }) = _ElasticRange;
}

@freezed
class LatLong with _$LatLong {
  @Assert('latitude >= -90 && latitude <= 90',
      'Latitude must be between -90 and 90 degrees.')
  @Assert('longitude >= -180 && latitude <= 180',
      'Longitude must be between -90 and 90 degrees.')
  const factory LatLong(
    double latitude,
    double longitude,
  ) = _LatLong;
}

class _LatLongConverter implements JsonConverter<LatLong?, String?> {
  const _LatLongConverter();

  @override
  LatLong? fromJson(String? value) {
    if (value == null) return null;
    final values = value.split(',');
    return LatLong(
      double.parse(values[0]),
      double.parse(values[1]),
    );
  }

  @override
  String? toJson(LatLong? value) {
    if (value == null) return null;
    return "${value.latitude}, ${value.longitude}";
  }
}
