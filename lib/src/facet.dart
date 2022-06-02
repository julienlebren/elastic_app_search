// ignore_for_file: unused_element

part of elastic_app_search;

@freezed
class _ElasticFacet with _$_ElasticFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticFacet({
    required String type,
    String? name,
    List<_ElasticRange>? ranges,
    List<_ElasticRange>? data,
  }) = __ElasticFacet;

  factory _ElasticFacet.fromJson(Map<String, dynamic> json) =>
      _$_ElasticFacetFromJson(json);
}

@freezed
class _ElasticRange with _$_ElasticRange {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticRange({
    String? name,
    String? from,
    String? to,
    int? count,
  }) = __ElasticRange;

  factory _ElasticRange.fromJson(Map<String, dynamic> json) =>
      _$_ElasticRangeFromJson(json);
}
