// ignore_for_file: unused_element

part of elastic_app_search;

@freezed
class _ElasticQueryFacet with _$ElasticQueryFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticQueryFacet({
    required String type,
    String? name,
    List<_ElasticRangeFacet>? ranges,
    int? size,
    @_LatLongConverter() LatLong? center,
    GeoUnit? unit,
  }) = __ElasticQueryFacet;

  factory _ElasticQueryFacet.fromJson(Map<String, dynamic> json) =>
      _$ElasticQueryFacetFromJson(json);
}

@freezed
class _ElasticRangeFacet with _$ElasticRangeFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticRangeFacet({
    String? name,
    String? from,
    String? to,
    int? count,
  }) = __ElasticRangeFacet;

  factory _ElasticRangeFacet.fromJson(Map<String, dynamic> json) =>
      _$ElasticRangeFacetFromJson(json);
}

@freezed
class ElasticFacet with _$ElasticFacet {
  const ElasticFacet._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticFacet({
    required ElasticFacetType type,
    String? name,
    List<ElasticFacetData>? data,
  }) = _ElasticFacet;

  factory ElasticFacet.fromJson(Map<String, dynamic> json) =>
      _$ElasticFacetFromJson(json);

  int? get count {
    if (data != null && data!.length == 1) return data!.first.count;
    return null;
  }

  int countForValue(String value) {
    final valueData = data?.where((element) => element.value == value);
    if (valueData != null && valueData.isNotEmpty) {
      return valueData.first.count;
    }
    return 0;
  }

  int countForValues(List<String> values) {
    final valueData = data?.where((element) => values.contains(element.value));
    if (valueData != null && valueData.isNotEmpty) {
      return valueData.fold(0, (sum, item) => sum + item.count);
    }
    return 0;
  }

  int countForRange({
    double? from,
    double? to,
  }) {
    final rangeData = data?.where((element) =>
        element.from == from?.toString() && element.to == to?.toString());
    if (rangeData != null && rangeData.isNotEmpty) {
      return rangeData.first.count;
    }
    return 0;
  }
}

@freezed
class ElasticFacetData with _$ElasticFacetData {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticFacetData({
    String? name,
    Object? value,
    Object? from,
    Object? to,
    required int count,
  }) = _ElasticFacetData;

  factory ElasticFacetData.fromJson(Map<String, dynamic> json) =>
      _$ElasticFacetDataFromJson(json);
}
