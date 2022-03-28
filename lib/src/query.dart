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
  @Assert(
      'queryPrecision != null && (queryPrecision < 1 || queryPrecision > 11)',
      'The value of the precision parameter must be an integer between 1 and 11, inclusive.')
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
    @JsonKey(name: "precision") int? queryPrecision,

    /// Object to delimit the pagination parameters.
    @JsonKey(name: "page") ElasticSearchPage? searchPage,

    /// Object to filter documents that contain a specific field value.
    /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
    @_ElasticSearchFiltersConverter() List<ElasticSearchFilter>? filters,

    /// Object which restricts a query to search only specific fields.
    @_ElasticSearchFieldsConverter()
    @JsonKey(name: "search_fields")
        List<ElasticSearchField>? searchFields,

    /// Object to define the fields which appear in search results and how their values are rendered.
    @_ElasticResultFieldsConverter()
    @Default([])
    @JsonKey(name: "result_fields")
        List<ElasticResultField>? resultFields,
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
  ElasticQuery filter(
    String field, {
    Object? isEqualTo,
    List<Object?>? whereIn,
    /*Object? isNotEqualTo,
    List<Object?>? whereNotIn,
    Object? isMaybeEqualTo,
    List<Object?>? whereMaybeIn,*/
  }) {
    return copyWith(
      filters: [
        ...?filters,
        ElasticSearchFilter(
          name: field,
          value: whereIn ?? [isEqualTo],
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
  ElasticQuery precision(int value) => copyWith(queryPrecision: value);

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
        ElasticSearchField(
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
  ElasticQuery resultField(
    String field, {
    int? rawSize,
    int? snippetSize,
    bool fallback = true,
  }) {
    return copyWith(
      resultFields: [
        ...?resultFields,
        ElasticResultField(
          name: field,
          rawSize: rawSize,
          snippetSize: snippetSize,
          fallback: fallback,
        ),
      ],
    );
  }

  /// Creates and returns a new [ElasticQuery] with new pagination parameters.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
  ElasticQuery page(
    int current, {
    int size = 10,
  }) {
    return copyWith(
      searchPage: ElasticSearchPage(
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
class ElasticSearchPage with _$ElasticSearchPage {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  @Assert('size != null && (size < 1 || size > 1000)',
      'The number of results per page must be greater than or equal to 1 and less than or equal to 1000.')
  @Assert('current != null && (current < 1 || current > 100)',
      'The current must be greater than or equal to 1 and less than or equal to 100.')
  const factory ElasticSearchPage({
    /// Number of results per page.
    /// Must be greater than or equal to 1 and less than or equal to 1000.
    /// Defaults to 10.
    @Default(10) int? size,

    /// Page number of results to return.
    /// Must be greater than or equal to 1 and less than or equal to 100.
    /// Defaults to 1.
    @Default(1) int? current,
  }) = _ElasticSearchPage;

  factory ElasticSearchPage.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchPageFromJson(json);
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
class ElasticSearchFilter with _$ElasticSearchFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticSearchFilter({
    /// The field from your schema upon which to apply your filter.
    required String name,

    /// The value upon which to filter. The value must be an exact match,
    /// and can be a String, a boolean, a number, or an array of these types.
    required List<dynamic> value,
  }) = _ElasticSearchFilter;

  factory ElasticSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchFilterFromJson(json);
}

class _ElasticSearchFiltersConverter
    implements JsonConverter<List<ElasticSearchFilter>?, Map?> {
  const _ElasticSearchFiltersConverter();

  @override
  List<ElasticSearchFilter>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<ElasticSearchFilter>? searchFilters) {
    if (searchFilters == null) return null;
    if (searchFilters.length == 1) {
      return {"${searchFilters.first.name}": searchFilters.first.value};
    }

    var values = [];
    for (final searchFilter in searchFilters) {
      values.add({"${searchFilter.name}": searchFilter.value});
    }
    return {"all": values};
  }
}

/// Object which restricts a query to search only specific fields.
///
/// Restricting fields will result in faster queries, especially for schemas with many text fields
/// Only available within text fields.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-fields-weights.html]
@freezed
class ElasticSearchField with _$ElasticSearchField {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticSearchField({
    /// The name of the field. It must exist within your Engine schema and be of type text.
    required String name,

    /// Optionnal. Apply Weights to each search field.
    /// Engine level Weight settings will be applied is none are provided.
    int? weight,
  }) = _ElasticSearchField;

  factory ElasticSearchField.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchFieldFromJson(json);
}

class _ElasticSearchFieldsConverter
    implements JsonConverter<List<ElasticSearchField>?, Map?> {
  const _ElasticSearchFieldsConverter();

  @override
  List<ElasticSearchField>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<ElasticSearchField>? searchFields) {
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
class ElasticResultField with _$ElasticResultField {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  @Assert('rawSize != null && rawSize < 20', 'Raw size must be at least 20.')
  @Assert('snippetSize != null && snippetSize < 20',
      'Raw size must be at least 20.')
  const factory ElasticResultField({
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
  }) = _ElasticResultField;

  factory ElasticResultField.fromJson(Map<String, dynamic> json) =>
      _$ElasticResultFieldFromJson(json);
}

class _ElasticResultFieldsConverter
    implements JsonConverter<List<ElasticResultField>?, Map?> {
  const _ElasticResultFieldsConverter();

  @override
  List<ElasticResultField>? fromJson(Map? value) => null;

  @override
  Map? toJson(List<ElasticResultField>? resultFields) {
    if (resultFields == null) return null;

    var value = <String, Map?>{};
    for (final resultField in resultFields) {
      value[resultField.name] = {
        "raw": {"size": resultField.rawSize ?? 20}
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
