// ignore_for_file: unused_element, unused_element_parameter

part of '../elastic_app_search.dart';

enum BoostType {
  @JsonValue("value")
  value,
  @JsonValue("functional")
  functional,
  @JsonValue("proximity")
  proximity,
  // Kept for backward compatibility with older payloads/usages.
  @JsonValue("recency")
  recency,
}

enum BoostOperation {
  @JsonValue("add")
  add,
  @JsonValue("multiply")
  multiply,
}

enum BoostFunction {
  @JsonValue("linear")
  linear,
  @JsonValue("exponential")
  exponential,
  @JsonValue("gaussian")
  gaussian,
  @JsonValue("logarithmic")
  logarithmic,
}

void _validateBoostFactor(double? factor) {
  if (factor != null && (factor < 0 || factor > 10)) {
    throw RangeError.range(
      factor,
      0,
      10,
      'factor',
      'Boost factor must be between 0 and 10.',
    );
  }
}

void _validateBoostCenter(Object? center) {
  if (center == null) {
    throw ArgumentError.value(center, 'center', 'Boost center is required.');
  }

  if (center is String && center.trim().isEmpty) {
    throw ArgumentError.value(
      center,
      'center',
      'Boost center must be a non-empty string.',
    );
  }
}

void _validateBoostFunctionForType({
  required BoostType type,
  required BoostFunction function,
}) {
  if (type == BoostType.functional && function == BoostFunction.gaussian) {
    throw ArgumentError.value(
      function,
      'function',
      'Functional boost only supports linear, exponential, or logarithmic.',
    );
  }

  final isProximityLike =
      type == BoostType.proximity || type == BoostType.recency;
  if (isProximityLike && function == BoostFunction.logarithmic) {
    throw ArgumentError.value(
      function,
      'function',
      'Proximity/recency boost only supports linear, exponential, or gaussian.',
    );
  }
}

@freezed
abstract class _ElasticBoost with _$ElasticBoost {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticBoost({
    /// Type of boost
    required BoostType type,

    /// The value to exact match on. Use an array to match on multiple values.
    Object? value,

    /// Function used to calculate the boost value for functional/proximity boosts.
    BoostFunction? function,

    /// Center value used for proximity/recency boosts.
    Object? center,

    /// The arithmetic operation used to combine the original document score with your boost value.
    /// Can be add or multiply. Defaults to add.
    BoostOperation? operation,

    /// Factor to alter the impact of a boost on the score of a document.
    /// Must be between 0 and 10. Defaults to 1.0.
    /// A negative factor or fractional factor will not deboost a result.
    double? factor,
  }) = _ElasticBoostImpl;

  factory _ElasticBoost.fromJson(Map<String, dynamic> json) =>
      _$ElasticBoostFromJson(json);
}

class _ElasticBoostsConverter
    implements JsonConverter<Map<String, List<_ElasticBoost>>?, Map?> {
  const _ElasticBoostsConverter();

  @override
  Map<String, List<_ElasticBoost>>? fromJson(Map? value) {
    if (value == null) return null;

    final boosts = <String, List<_ElasticBoost>>{};

    for (final rawEntry in value.entries) {
      final field = rawEntry.key.toString();
      if (field.trim().isEmpty) continue;

      final rawBoosts = rawEntry.value;
      final parsed = <_ElasticBoost>[];

      if (rawBoosts is Map) {
        final mapped = _asStringDynamicMap(rawBoosts);
        if (mapped != null) {
          parsed.add(_ElasticBoost.fromJson(mapped));
        }
      } else if (rawBoosts is List) {
        for (final rawBoost in rawBoosts) {
          final mapped = _asStringDynamicMap(rawBoost);
          if (mapped != null) {
            parsed.add(_ElasticBoost.fromJson(mapped));
          }
        }
      }

      if (parsed.isNotEmpty) {
        boosts[field] = parsed;
      }
    }

    if (boosts.isEmpty) return null;
    return boosts;
  }

  @override
  Map<String, dynamic>? toJson(Map<String, List<_ElasticBoost>>? value) {
    if (value == null || value.isEmpty) return null;

    final json = <String, dynamic>{};

    for (final entry in value.entries) {
      final field = entry.key.trim();
      if (field.isEmpty) continue;

      final boosts = entry.value;
      if (boosts.isEmpty) continue;

      final serialized = boosts.map((boost) => boost.toJson()).toList();
      json[field] = serialized.length == 1 ? serialized.first : serialized;
    }

    if (json.isEmpty) return null;
    return json;
  }
}
