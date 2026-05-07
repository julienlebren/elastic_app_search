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
  engines("engines"),
  engineGet(""),
  engineCreate("engines"),
  engineDelete(""),
  sourceEnginesAdd("source_engines"),
  sourceEnginesRemove("source_engines"),
  synonymsList("synonyms"),
  synonymGet("synonyms"),
  synonymCreate("synonyms"),
  synonymUpdate("synonyms"),
  synonymDelete("synonyms"),
  curationsList("curations"),
  curationGet("curations"),
  curationCreate("curations"),
  curationUpdate("curations"),
  curationDelete("curations"),
  search("search"),
  multiSearch("multi_search"),
  searchExplain("search_explain"),
  querySuggestion("query_suggestion"),
  schemaGet("schema"),
  schemaUpdate("schema"),
  documentsCreateOrUpdate("documents"),
  documentsGet("documents"),
  documentsDelete("documents"),
  documentsPartialUpdate("documents"),
  documentsList("documents/list"),
  click("click"),
  analyticsQueries("analytics/queries"),
  analyticsClicks("analytics/clicks"),
  analyticsCounts("analytics/counts");

  const Operation(this.value);

  final String value;
}

/// Supported App Search engine types.
///
/// See https://www.elastic.co/guide/en/app-search/current/engines.html
enum ElasticEngineType { defaultEngine, meta }

extension _ElasticEngineTypeX on ElasticEngineType {
  String get apiValue {
    switch (this) {
      case ElasticEngineType.defaultEngine:
        return 'default';
      case ElasticEngineType.meta:
        return 'meta';
    }
  }
}

/// Allowed App Search field types for schema updates.
///
/// See https://www.elastic.co/guide/en/app-search/current/schema.html
enum ElasticSchemaFieldType { text, number, date, geolocation }

extension _ElasticSchemaFieldTypeX on ElasticSchemaFieldType {
  String get apiValue {
    switch (this) {
      case ElasticSchemaFieldType.text:
        return 'text';
      case ElasticSchemaFieldType.number:
        return 'number';
      case ElasticSchemaFieldType.date:
        return 'date';
      case ElasticSchemaFieldType.geolocation:
        return 'geolocation';
    }
  }
}

ElasticSchemaFieldType _schemaFieldTypeFromApiValue(String value) {
  switch (value) {
    case 'text':
      return ElasticSchemaFieldType.text;
    case 'number':
      return ElasticSchemaFieldType.number;
    case 'date':
      return ElasticSchemaFieldType.date;
    case 'geolocation':
      return ElasticSchemaFieldType.geolocation;
  }

  throw FormatException(
    'Invalid schema field type "$value". Expected one of: text, number, date, geolocation.',
  );
}

/// A typed representation of an engine schema.
///
/// The schema is a map of field names to App Search field types.
class ElasticSchema {
  /// Creates a schema object from field/type pairs.
  ElasticSchema(Map<String, ElasticSchemaFieldType> fields)
    : fields = Map.unmodifiable(fields);

  /// Immutable map of schema fields by name.
  final Map<String, ElasticSchemaFieldType> fields;

  /// Parses a schema payload returned by App Search.
  factory ElasticSchema.fromJson(Map<String, dynamic> json) {
    final fields = <String, ElasticSchemaFieldType>{};

    for (final entry in json.entries) {
      final name = entry.key.toString();
      final rawType = entry.value;
      if (rawType == null) {
        throw FormatException(
          'Invalid schema payload: type for "$name" cannot be null.',
        );
      }
      final type = _schemaFieldTypeFromApiValue(rawType.toString());
      fields[name] = type;
    }

    return ElasticSchema(fields);
  }

  Map<String, dynamic> toJson() =>
      fields.map((key, value) => MapEntry(key, value.apiValue));

  /// Returns the type of a specific field, or `null` when absent.
  ElasticSchemaFieldType? operator [](String field) => fields[field];
}

@freezed
abstract class ElasticPageRequest with _$ElasticPageRequest {
  const ElasticPageRequest._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticPageRequest({
    @Default(1) int current,
    @Default(10) int size,
  }) = _ElasticPageRequest;

  factory ElasticPageRequest.fromJson(Map<String, dynamic> json) =>
      _$ElasticPageRequestFromJson(json);

  Map<String, dynamic> toBody() => {'page': toJson()};

  Map<String, dynamic> toQueryParameters() => {
    'page[current]': current,
    'page[size]': size,
  };
}
