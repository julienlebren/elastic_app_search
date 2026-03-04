part of '../elastic_app_search.dart';

void _validateLatLongValues(double latitude, double longitude) {
  if (latitude < -90 || latitude > 90) {
    throw RangeError.range(
      latitude,
      -90,
      90,
      'latitude',
      'Latitude must be between -90 and 90 degrees.',
    );
  }

  if (longitude < -180 || longitude > 180) {
    throw RangeError.range(
      longitude,
      -180,
      180,
      'longitude',
      'Longitude must be between -180 and 180 degrees.',
    );
  }
}

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
    return toUtc().toIso8601String();
  }
}

@freezed
abstract class ElasticRange with _$ElasticRange {
  const factory ElasticRange({String? name, Object? from, Object? to}) =
      _ElasticRange;
}

@freezed
abstract class LatLong with _$LatLong {
  const factory LatLong(double latitude, double longitude) = _LatLong;
}

class _LatLongConverter implements JsonConverter<LatLong?, String?> {
  const _LatLongConverter();

  @override
  LatLong? fromJson(String? value) {
    if (value == null) return null;
    final values = value.split(',');
    if (values.length != 2) {
      throw FormatException(
        'LatLong must be formatted as "latitude,longitude".',
        value,
      );
    }

    final latitude = double.tryParse(values[0].trim());
    final longitude = double.tryParse(values[1].trim());
    if (latitude == null || longitude == null) {
      throw FormatException(
        'LatLong coordinates must be valid doubles.',
        value,
      );
    }

    _validateLatLongValues(latitude, longitude);
    return LatLong(latitude, longitude);
  }

  @override
  String? toJson(LatLong? value) {
    if (value == null) return null;
    return "${value.latitude}, ${value.longitude}";
  }
}

enum Operation {
  search("search"),
  querySuggestion("query_suggestion");

  const Operation(this.value);

  final String value;
}
