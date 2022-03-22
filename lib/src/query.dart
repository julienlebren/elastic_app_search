part of elastic_app_search;

@freezed
class Query with _$Query {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  @Assert('engine != null', 'An engine is required to build a query')
  const factory Query({
    @JsonKey(ignore: true) Engine? engine,
    required String query,
    SearchPage? page,
    List<Map<String, String>>? sort,
    Map<String, String>? group,
    @SearchFiltersConverter() List<SearchFilter>? filters,
    @SearchFieldsConverter()
    @JsonKey(name: "search_fields")
        List<SearchField>? searchFields,
    @ResultFieldsConverter()
    @Default([])
    @JsonKey(name: "result_fields")
        List<ResultField>? resultFields,
  }) = _Query;

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);
}

extension QueryX on Query {
  @Assert('isEqualTo != null || arrayContains != null')
  Query filter(
    String field, {
    String? isEqualTo,
    List<String>? arrayContains,
  }) {
    return copyWith(
      filters: [
        ...?filters,
        SearchFilter(
          name: field,
          value: arrayContains ?? [isEqualTo],
        ),
      ],
    );
  }

  Query searchField(
    String field, {
    double? weight,
  }) {
    return copyWith(
      searchFields: [
        ...?searchFields,
        SearchField(name: field),
      ],
    );
  }

  Query resultField(
    String field, {
    int? size,
  }) {
    return copyWith(
      resultFields: [
        ...?resultFields,
        ResultField(
          name: field,
          size: size,
        ),
      ],
    );
  }

  Future<Response> get() {
    return engine!.get(this);
  }
}

@freezed
class SearchPage with _$SearchPage {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory SearchPage({
    @Default(10) int? size,
    @Default(1) int? current,
  }) = _SearchPage;

  factory SearchPage.fromJson(Map<String, dynamic> json) =>
      _$SearchPageFromJson(json);
}

@freezed
class SearchFilter with _$SearchFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory SearchFilter({
    required String name,
    required List<dynamic> value,
  }) = _SearchFilter;

  factory SearchFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchFilterFromJson(json);
}

class SearchFiltersConverter
    implements JsonConverter<List<SearchFilter>?, Map?> {
  const SearchFiltersConverter();

  @override
  List<SearchFilter>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<SearchFilter>? searchFilters) {
    if (searchFilters == null) return null;

    var value = {};
    for (final searchFilter in searchFilters) {
      value[searchFilter.name] = searchFilter.value;
    }
    return value;
  }
}

@freezed
class SearchField with _$SearchField {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory SearchField({
    required String name,
    double? weight,
  }) = _SearchField;

  factory SearchField.fromJson(Map<String, dynamic> json) =>
      _$SearchFieldFromJson(json);
}

class SearchFieldsConverter implements JsonConverter<List<SearchField>?, Map?> {
  const SearchFieldsConverter();

  @override
  List<SearchField>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<SearchField>? searchFields) {
    if (searchFields == null) return null;

    var value = {};
    for (final searchField in searchFields) {
      if (searchField.weight != null) {
        value[searchField.name] = {
          "weight": searchField.weight,
        };
      } else {
        value[searchField.name] = {};
      }
    }
    return value;
  }
}

@freezed
class ResultField with _$ResultField {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ResultField({
    required String name,
    int? size,
  }) = _ResultField;

  factory ResultField.fromJson(Map<String, dynamic> json) =>
      _$ResultFieldFromJson(json);
}

class ResultFieldsConverter implements JsonConverter<List<ResultField>?, Map?> {
  const ResultFieldsConverter();

  @override
  List<ResultField>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<ResultField>? resultFields) {
    if (resultFields == null) return null;

    var value = {};
    for (final resultField in resultFields) {
      value[resultField.name] = {
        "raw": resultField.size != null ? {"size": resultField.size} : {}
      };
    }
    return value;
  }
}
