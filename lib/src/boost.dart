// ignore_for_file: unused_element

part of elastic_app_search;

enum _ElasticBoostType { value, functional, proximity, recency }
enum _ElasticBoostOperation { add, multiply }

extension _ElasticBoostTypeX on _ElasticBoostType {
  String toJson() {
    switch (this) {
      case _ElasticBoostType.value:
        return "value";
      case _ElasticBoostType.functional:
        return "functional";
      case _ElasticBoostType.proximity:
        return "proximity";
      case _ElasticBoostType.recency:
        return "recency";
    }
  }
}

@freezed
class _ElasticBoost with _$_ElasticBoost {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticBoost({
    /// Type of boost
    required _ElasticBoostType type,

    /// The value to exact match on. Use an array to match on multiple values.
    List<String>? value,

    /// The arithmetic operation used to combine the original document score with your boost value.
    /// Can be add or multiply. Defaults to add.
    _ElasticBoostOperation? operation,

    /// Factor to alter the impact of a boost on the score of a document.
    /// Must be between 0 and 10. Defaults to 1.0.
    /// A negative factor or fractional factor will not deboost a result.
    double? factor,
  }) = __ElasticBoost;

  factory _ElasticBoost.fromJson(Map<String, dynamic> json) =>
      _$_ElasticBoostFromJson(json);
}
