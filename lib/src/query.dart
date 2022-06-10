// ignore_for_file: unused_element

part of elastic_app_search;

/// An object contaning all the settings to execute a query
///
/// See https://www.elastic.co/guide/en/app-search/current/search.html
/// to get more information abouit all the parameters.
///
/// Note: All the paramaters of Elastic App Search are not currently
/// available in this package.
@freezed
class ElasticQuery with _$ElasticQuery {
  const ElasticQuery._();

  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  @Assert('engine != null', 'An engine is required to build a query.')
  const factory ElasticQuery({
    /// An object representing an Elastic engine
    @JsonKey(ignore: true) ElasticEngine? engine,

    /// String or number to match.
    required String query,

    /// Use the precision parameter of the search API to tune precision
    /// and recall for a query. Learn more in Precision tuning (beta).
    /// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
    ///
    /// The value of the precision parameter must be an integer between 1 and 11, inclusive.
    /// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
    /// Lower values favor recall, while higher values favor precision.
    @protected @JsonKey(name: "precision") int? precisionTuning,

    /// Object to delimit the pagination parameters.
    @JsonKey(name: "page") _ElasticSearchPage? searchPage,

    /// Object to filter documents that contain a specific field value.
    /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
    @_ElasticSearchFiltersConverter() List<_ElasticSearchFilter>? filters,

    /// Object which restricts a query to search only specific fields.
    @_ElasticSearchFieldsConverter()
    @JsonKey(name: "search_fields")
        List<_ElasticSearchField>? searchFields,

    /// Object to define the fields which appear in search results and how their values are rendered.
    @_ElasticResultFieldsConverter()
    @JsonKey(name: "result_fields")
        List<_ElasticResultField>? resultFields,

    /// Dev in progress - no doc
    @protected Map<String, _ElasticFacet>? facets,

    /// Grouped results based on shared fields
    @protected @JsonKey(name: "group") _ElasticGroup? groupBy,

    /// Object to sort your results in an order other than document score.
    @_ElasticSortConverter() @JsonKey(name: "sort") List<_ElasticSort>? sortBy,
  }) = _ElasticQuery;

  factory ElasticQuery.fromJson(Map<String, dynamic> json) =>
      _$ElasticQueryFromJson(json);

  /// Creates and returns a new [ElasticQuery] with additional [ElasticSearchFilter],
  /// an object to filter documents that contain a specific field value.
  /// Available on text, number, and date fields.
  ///
  /// Note: As for now, this object only handles "all" filters, which means that all
  /// the filters added to the query will be handled as a "AND" query.
  /// The other filters available, "or" and "not", will be added in a future release
  /// of the package.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @Assert('isEqualTo != null || whereIn != null',
      'You must provide at least one condition (isEqualTo, isNotEqualTo, whereIn, whereNotIn, isMaybeEqualTo, whereMaybeIn)')
  @Assert('isEqualTo != null && from == null && to == null',
      'You cannot use isEqualTo and from/to at the same time.')
  ElasticQuery filter(
    String field, {
    Object? isEqualTo,
    List<Object?>? whereIn,
    Object? from,
    Object? to,
    /*Object? isNotEqualTo,
    List<Object?>? whereNotIn,
    Object? isMaybeEqualTo,
    List<Object?>? whereMaybeIn,*/
  }) {
    dynamic value;
    if (whereIn != null) {
      value = whereIn;
    } else if (isEqualTo != null) {
      value = isEqualTo.toString();
    } else if (from != null || to != null) {
      if (from is DateTime || to is DateTime) {
        value = _ElasticDateRangeFilter(
          from: from as DateTime,
          to: to as DateTime,
        );
      } else if (from is double || to is double) {
        value = _ElasticNumberRangeFilter(
          from: from as double,
          to: to as double,
        );
      }
    }
    return copyWith(
      filters: [
        ...?filters,
        _ElasticSearchFilter(
          name: field,
          value: value,
        ),
      ],
    );
  }

  /// Takes a precision [int], creates and returns a new [ElasticQuery]
  /// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
  //
  /// The value of the precision parameter must be an integer between 1 and 11, inclusive.
  /// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
  /// Lower values favor recall, while higher values favor precision.
  @Assert('value >= 1 && value <= 11',
      'The value of the precision parameter must be an integer between 1 and 11, inclusive.')
  ElasticQuery precision(int value) => copyWith(precisionTuning: value);

  /// Takes a field with an optionnal `weight`, creates and returns a new [ElasticQuery]
  ///
  /// It will restrict a query to search only specific fields.
  ///
  /// Weight is given between 10 (most relevant) to 1 (least relevant).
  ///
  /// Restricting fields will result in faster queries, especially for schemas with many text fields
  /// Only available within text fields.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-fields-weights.html]
  @Assert('weight != null && (weight < 1 || weight > 10)',
      'The value of the weight parameter must be an integer between 1 and 10.')
  ElasticQuery searchField(
    String field, {
    int? weight,
  }) {
    return copyWith(
      searchFields: [
        ...?searchFields,
        _ElasticSearchField(
          name: field,
          weight: weight,
        ),
      ],
    );
  }

  /// Creates and returns a new [ElasticQuery] with additional [ElasticResultField], an object
  /// which defines the fields which appear in search results and how their values are rendered.
  ///
  /// Raw: An exact representation of the value within a field.
  /// Snippet: A snippet is a representation of the value within a field, where query matches are returned
  /// in a specific field and other parts are splitted, in order to user [RichText] to display
  /// the results and highlight the query matches.
  /// The example of the package presents a use case of this feature.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/result-fields-highlights.html]
  @Assert('rawSize == null || (rawSize != null && rawSize >= 20)',
      'Raw size must be at least 20.')
  @Assert('snippetSize == null || (snippetSize != null && snippetSize >= 20)',
      'Raw size must be at least 20.')
  ElasticQuery resultField(
    String field, {
    int? rawSize,
    int? snippetSize,
    bool fallback = true,
  }) {
    return copyWith(
      resultFields: [
        ...?resultFields,
        _ElasticResultField(
          name: field,
          rawSize: rawSize,
          snippetSize: snippetSize,
          fallback: fallback,
        ),
      ],
    );
  }

  /// Dev in progress - no doc
  /// .rangeFacet(
  ///   "location",
  /// )
  @Assert('from != null || to != null',
      'You must provide at least `from` or `to` to create an date range facet.')
  @Assert('to != null && (to is double || to is Date)',
      '`from` must be a double or a Date')
  ElasticQuery dateRangeFacet(
    String field, {
    String? name,
    DateTime? from,
    DateTime? to,
  }) {
    var _facets = facets ?? {};
    _facets[field] = _ElasticFacet(
      type: "range",
      name: name,
      ranges: [
        _ElasticRange(
          from: from,
          to: to,
        ),
      ],
    );
    return copyWith(facets: _facets);
  }

  /// Takes a field with an optionnal `size`, creates and returns a new [ElasticQuery]
  /// which will return grouped results based on shared fields.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/grouping.html]
  @Assert('field != null', 'Field name to group results on must not be null')
  @Assert('size == null || (size != null && size >= 1 && size <= 10',
      'size must be between 1 and 10')
  ElasticQuery group(
    String field, {
    int? size,
  }) {
    return copyWith(
      groupBy: _ElasticGroup(
        field: field,
        size: size,
      ),
    );
  }

  /// Takes a field with an optionnal `descending`, creates and returns a new [ElasticQuery]
  /// which will sort your results in an order other than document score.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/sort.html]
  @Assert('field != null', 'Field name to sort results must not be null')
  ElasticQuery sort(
    String field, {
    bool descending = false,
  }) {
    final newSortBy = _ElasticSort(
      field: field,
      descending: descending,
    );
    return copyWith(sortBy: sortBy ?? <_ElasticSort>[] + [newSortBy]);
  }

  /// Creates and returns a new [ElasticQuery] with new pagination parameters.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
  ElasticQuery page(
    int current, {
    int size = 10,
  }) {
    return copyWith(
      searchPage: _ElasticSearchPage(
        current: current,
        size: size,
      ),
    );
  }

  /// Fetch the documents for this query.
  Future<ElasticResponse> get([CancelToken? cancelToken]) {
    return engine!.get(this, cancelToken);
  }
}

/// Object to delimit the pagination parameters.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
@freezed
class _ElasticSearchPage with _$_ElasticSearchPage {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  @Assert('size == null || (size != null && size >= 1 && size <= 1000)',
      'The number of results per page must be greater than or equal to 1 and less than or equal to 1000.')
  @Assert(
      'current == null || (current != null && current >= 1 && current <= 100)',
      'The current must be greater than or equal to 1 and less than or equal to 100.')
  const factory _ElasticSearchPage({
    /// Number of results per page.
    /// Must be greater than or equal to 1 and less than or equal to 1000.
    /// Defaults to 10.
    @Default(10) int? size,

    /// Page number of results to return.
    /// Must be greater than or equal to 1 and less than or equal to 100.
    /// Defaults to 1.
    @Default(1) int? current,
  }) = __ElasticSearchPage;

  factory _ElasticSearchPage.fromJson(Map<String, dynamic> json) =>
      _$_ElasticSearchPageFromJson(json);
}

/// Object to filter documents that contain a specific field value.
/// Available on text, number, and date fields.
///
/// Note: As for now, this object only handles "all" filters, which means that all
/// the filters added to the query will be handled as a "AND" query.
/// The other filters available, "or" and "not", will be added in a future release
/// of the package.
///
/// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
@freezed
class _ElasticSearchFilter with _$_ElasticSearchFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticSearchFilter({
    /// The field from your schema upon which to apply your filter.
    required String name,

    /// The value upon which to filter. The value must be an exact match,
    /// and can be a String, a boolean, a number, or an array of these types.
    required dynamic value,
  }) = __ElasticSearchFilter;

  factory _ElasticSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$_ElasticSearchFilterFromJson(json);
}

class _ElasticSearchFiltersConverter
    implements JsonConverter<List<_ElasticSearchFilter>?, Map?> {
  const _ElasticSearchFiltersConverter();

  @override
  List<_ElasticSearchFilter>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<_ElasticSearchFilter>? searchFilters) {
    if (searchFilters == null) return null;
    if (searchFilters.length == 1) {
      return {searchFilters.first.name: searchFilters.first.value};
    }

    var values = [];
    for (final searchFilter in searchFilters) {
      var encodedValue = searchFilter.value;
      if (searchFilter.value is _ElasticDateRangeFilter) {
        print("is _ElasticDateRangeFilter");
        encodedValue = (searchFilter.value as _ElasticDateRangeFilter).toJson();
      } else if (searchFilter.value is _ElasticNumberRangeFilter) {
        encodedValue =
            (searchFilter.value as _ElasticNumberRangeFilter).toJson();
      }
      values.add({searchFilter.name: encodedValue});
    }
    return {"all": values};
  }
}

@freezed
class _ElasticDateRangeFilter with _$_ElasticDateRangeFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticDateRangeFilter({
    DateTime? from,
    DateTime? to,
  }) = __ElasticDateRangeFilter;

  factory _ElasticDateRangeFilter.fromJson(Map<String, dynamic> json) =>
      _$_ElasticDateRangeFilterFromJson(json);
}

@freezed
class _ElasticNumberRangeFilter with _$_ElasticNumberRangeFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticNumberRangeFilter({
    double? from,
    double? to,
  }) = __ElasticNumberRangeFilter;

  factory _ElasticNumberRangeFilter.fromJson(Map<String, dynamic> json) =>
      _$_ElasticNumberRangeFilterFromJson(json);
}

/// Object which restricts a query to search only specific fields.
///
/// Restricting fields will result in faster queries, especially for schemas with many text fields
/// Only available within text fields.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-fields-weights.html]
@freezed
class _ElasticSearchField with _$_ElasticSearchField {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticSearchField({
    /// The name of the field. It must exist within your Engine schema and be of type text.
    required String name,

    /// Optionnal. Apply Weights to each search field.
    /// Engine level Weight settings will be applied is none are provided.
    int? weight,
  }) = __ElasticSearchField;

  factory _ElasticSearchField.fromJson(Map<String, dynamic> json) =>
      _$_ElasticSearchFieldFromJson(json);
}

class _ElasticSearchFieldsConverter
    implements JsonConverter<List<_ElasticSearchField>?, Map?> {
  const _ElasticSearchFieldsConverter();

  @override
  List<_ElasticSearchField>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<_ElasticSearchField>? searchFields) {
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

/// Object to define the fields which appear in search results and how their values are rendered.
///
/// Raw: An exact representation of the value within a field.
/// Snippet: A snippet is a representation of the value within a field, where query matches are returned
/// in a specific field and other parts are splitted, in order to user [RichText] to display
/// the results and highlight the query matches.
/// The example of the package presents a use case of this feature.
///
/// More information on [https://www.elastic.co/guide/en/app-search/current/result-fields-highlights.html]
@freezed
class _ElasticResultField with _$_ElasticResultField {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticResultField({
    /// The name of the field. It must exist within your Engine schema and be of type text.
    required String name,

    /// Length of the return value.
    /// Must be at least 20; defaults to the entire text field.
    /// If given for a different field type other than text, it will be silently ignored.
    int? rawSize,

    /// Length of the snippet returned.
    /// Must be at least 20; defaults to 100.
    int? snippetSize,

    /// If true, return the raw text field if no snippet is found. If false, only use snippets.
    @Default(true) bool fallback,
  }) = __ElasticResultField;

  factory _ElasticResultField.fromJson(Map<String, dynamic> json) =>
      _$_ElasticResultFieldFromJson(json);
}

class _ElasticResultFieldsConverter
    implements JsonConverter<List<_ElasticResultField>?, Map?> {
  const _ElasticResultFieldsConverter();

  @override
  List<_ElasticResultField>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<_ElasticResultField>? resultFields) {
    if (resultFields == null || resultFields.isEmpty) return null;

    var value = <String, Map?>{};
    for (final resultField in resultFields) {
      value[resultField.name] = {
        "raw": resultField.rawSize != null ? {"size": resultField.rawSize} : {}
      };
      if (resultField.snippetSize != null) {
        value[resultField.name]!["snippet"] = {
          "size": resultField.snippetSize,
          "fallback": resultField.fallback,
        };
      }
    }
    return value;
  }
}

/// Object which generate grouped results based on shared fields.
///
/// The most relevant document will have a _group key.
/// The key includes all other documents that share an identical value within the grouped field.
/// Documents in the _group key will not appear anywhere else in the search response.
///
/// See [https://www.elastic.co/guide/en/app-search/current/grouping.html]
@freezed
class _ElasticGroup with _$_ElasticGroup {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticGroup({
    /// Field name to group results on.
    required String field,

    /// Number of results to be included in the _group key of the returned document.
    /// Can be between 1 and 10. Defaults to 10.
    int? size,
  }) = __ElasticGroup;

  factory _ElasticGroup.fromJson(Map<String, dynamic> json) =>
      _$_ElasticGroupFromJson(json);
}

/// Object which sorts results based on shared fields.
///
/// Sort your results in an order other than document score.
/// Using sort will override the default relevance scoring method.
///
/// See [https://www.elastic.co/guide/en/app-search/current/sort.html]
@freezed
class _ElasticSort with _$_ElasticSort {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticSort({
    /// Field name to sort results
    required String field,
    @Default(false) bool descending,
  }) = __ElasticSort;

  factory _ElasticSort.fromJson(Map<String, dynamic> json) =>
      _$_ElasticSortFromJson(json);
}

class _ElasticSortConverter
    implements JsonConverter<List<_ElasticSort>?, List<Map>?> {
  const _ElasticSortConverter();

  @override
  List<_ElasticSort>? fromJson(List<Map>? value) => null;

  @override
  List<Map>? toJson(List<_ElasticSort>? sortBys) {
    if (sortBys == null || sortBys.isEmpty) return null;
    var value = <Map<String, String>>[];
    for (final sortBy in sortBys) {
      value.add({sortBy.field: sortBy.descending ? "desc" : "asc"});
    }
    return value;
  }
}

/// DEV in progress - no doc
/*
class _ElasticFacetConverter
    implements JsonConverter<List<_ElasticFacet>?, Map?> {
  const _ElasticFacetConverter();

  @override
  List<_ElasticFacet>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<_ElasticFacet>? facets) {
    if (facets == null || facets.isEmpty) return null;

    var value = <String, List?>{};
    for (final facet in facets) {
      value[facet.field] = facet.facets.map((e) => e.toJson()).toList();
    }
    return value;
  }
}

@freezed
class _ElasticValueFacet with _$_ElasticValueFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  @Assert('size == null || (size != null && size >= 1 && size <= 250)',
      'The number of facets must be greater than or equal to 1 and less than or equal to 250.')
  const factory _ElasticValueFacet({
    @protected @Default("value") String type,
    String? name,
    double? size,
  }) = __ElasticValueFacet;

  factory _ElasticValueFacet.fromJson(Map<String, dynamic> json) =>
      _$_ElasticValueFacetFromJson(json);
}

@freezed
class _ElasticRangeFacet with _$_ElasticRangeFacet {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticRangeFacet({
    @protected @Default("range") String type,
    String? name,
    required List<_ElasticRange> ranges,
  }) = __ElasticRangeFacet;

  factory _ElasticRangeFacet.fromJson(Map<String, dynamic> json) =>
      _$_ElasticRangeFacetFromJson(json);
}
*/