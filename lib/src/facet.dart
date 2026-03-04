// ignore_for_file: unused_element, unused_element_parameter

part of '../elastic_app_search.dart';

@freezed
abstract class _ElasticQueryFacet with _$ElasticQueryFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticQueryFacet({
    required String type,
    String? name,
    List<_ElasticRangeFacet>? ranges,
    int? size,
    @_LatLongConverter() LatLong? center,
    GeoUnit? unit,
  }) = _ElasticQueryFacetImpl;

  factory _ElasticQueryFacet.fromJson(Map<String, dynamic> json) =>
      _$ElasticQueryFacetFromJson(json);
}

@freezed
abstract class _ElasticRangeFacet with _$ElasticRangeFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticRangeFacet({
    String? name,
    String? from,
    String? to,
    int? count,
  }) = _ElasticRangeFacetImpl;

  factory _ElasticRangeFacet.fromJson(Map<String, dynamic> json) =>
      _$ElasticRangeFacetFromJson(json);
}

@freezed
abstract class ElasticFacet with _$ElasticFacet {
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

  int countForRange({double? from, double? to}) {
    final rangeData = data?.where(
      (element) =>
          element.from == from?.toString() && element.to == to?.toString(),
    );
    if (rangeData != null && rangeData.isNotEmpty) {
      return rangeData.first.count;
    }
    return 0;
  }
}

@freezed
abstract class ElasticFacetData with _$ElasticFacetData {
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
