part of elastic_app_search;

@freezed
class Response with _$Response {
  factory Response({
    required ResponseMeta meta,
    required List<Result> results,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class ResponseMeta with _$ResponseMeta {
  factory ResponseMeta({
    required ResponsePage page,
    required int precision,
    required List<dynamic> alerts,
    required List<dynamic> warnings,
    required String request_id,
  }) = _ResponseMeta;

  factory ResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$ResponseMetaFromJson(json);
}

@freezed
class ResponsePage with _$ResponsePage {
  factory ResponsePage({
    required int current,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "total_results") required int totalResults,
    required int size,
  }) = _ResponsePage;

  factory ResponsePage.fromJson(Map<String, dynamic> json) =>
      _$ResponsePageFromJson(json);
}

@freezed
class ResultMeta with _$ResultMeta {
  factory ResultMeta({
    required String id,
    required String engine,
    required double score,
  }) = _ResultMeta;

  factory ResultMeta.fromJson(Map<String, dynamic> json) =>
      _$ResultMetaFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    Map<String, dynamic>? data,
    @JsonKey(name: "_meta") required ResultMeta meta,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) =>
      Result.fromJsonWithData(json);

  factory Result.fromJsonWithData(Map<String, dynamic> json) {
    var _data = <String, dynamic>{};
    for (var key in json.keys) {
      if (!key.contains('_')) _data[key] = json[key]["raw"];
    }
    return _$ResultFromJson(json).copyWith(data: _data);
  }
}

extension ResultX on Result {
  String get id => meta.id;
}
