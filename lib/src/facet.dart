// ignore_for_file: unused_element

part of elastic_app_search;

@freezed
class _ElasticFacet with _$_ElasticFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticFacet({
    required String type,
    String? name,
    List<_ElasticRangeFacet>? ranges,
    List<_ElasticRangeFacet>? data,
  }) = __ElasticFacet;

  factory _ElasticFacet.fromJson(Map<String, dynamic> json) =>
      _$_ElasticFacetFromJson(json);
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
