// ignore_for_file: unused_element

part of elastic_app_search;

@freezed
class _ElasticQueryFacet with _$_ElasticQueryFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticQueryFacet({
    required String type,
    String? name,
    List<_ElasticRangeFacet>? ranges,
  }) = __ElasticQueryFacet;

  factory _ElasticQueryFacet.fromJson(Map<String, dynamic> json) =>
      _$_ElasticQueryFacetFromJson(json);
}

@freezed
class _ElasticRangeFacet with _$_ElasticRangeFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticRangeFacet({
    String? name,
    String? from,
    String? to,
    int? count,
  }) = __ElasticRangeFacet;

  factory _ElasticRangeFacet.fromJson(Map<String, dynamic> json) =>
      _$_ElasticRangeFacetFromJson(json);
}

// DEV
@freezed
class ElasticFacet with _$ElasticFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticFacet({
    required ElasticFacetType type,
    String? name,
    List<ElasticFacetData>? data,
  }) = _ElasticFacet;

  factory ElasticFacet.fromJson(Map<String, dynamic> json) =>
      _$ElasticFacetFromJson(json);
}

extension ElasticFacetHelpers on ElasticFacet {
  int? get count {
    if (data != null && data!.length == 1) return data!.first.count;
    return null;
  }

  int countForValue(String value) {
    final _data = data?.where((element) => element.value == value);
    if (_data != null && _data.isNotEmpty) {
      return _data.first.count;
    }
    return 0;
  }

  int countForRange({
    double? from,
    double? to,
  }) {
    final _data = data?.where((element) =>
        element.from == from?.toString() && element.to == to?.toString());
    if (_data != null && _data.isNotEmpty) {
      return _data.first.count;
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
