// ignore_for_file: unused_element

part of '../elastic_app_search.dart';

void _validateElasticRange(Object? from, Object? to) {
  if (from == null && to == null) {
    throw ArgumentError('You must provide at least `from` or `to`.');
  }

  final isValidFrom = from == null || from is num || from is DateTime;
  if (!isValidFrom) {
    throw ArgumentError.value(
      from,
      'from',
      '`from` must be an int, a double or a DateTime',
    );
  }

  final isValidTo = to == null || to is num || to is DateTime;
  if (!isValidTo) {
    throw ArgumentError.value(
      to,
      'to',
      '`to` must be an int, a double or a DateTime',
    );
  }
}

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
  @Assert(
    'from != null || to != null',
    'You must provide at least `from` or `to`.',
  )
  @Assert(
    'from == null || (from != null && (from is int || from is double || from is DateTime))',
    '`from` must be an int, a double or a DateTime',
  )
  @Assert(
    'to == null || (to != null && (to is int || to is double || to is DateTime))',
    '`to` must be an int, a double or a DateTime',
  )
  const factory ElasticRange({String? name, Object? from, Object? to}) =
      _ElasticRange;
}

@freezed
abstract class LatLong with _$LatLong {
  @Assert(
    'latitude >= -90 && latitude <= 90',
    'Latitude must be between -90 and 90 degrees.',
  )
  @Assert(
    'longitude >= -180 && longitude <= 180',
    'Longitude must be between -180 and 180 degrees.',
  )
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
