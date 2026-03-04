// ignore_for_file: unused_element, unused_element_parameter, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers

part of '../elastic_app_search.dart';

void _validatePrecisionTuning(int? precisionTuning) {
  if (precisionTuning != null &&
      (precisionTuning < 1 || precisionTuning > 11)) {
    throw RangeError.range(
      precisionTuning,
      1,
      11,
      'precision',
      'The value of the precision parameter must be an integer between 1 and 11, inclusive.',
    );
  }
}

void _validateSearchPage({required int current, required int size}) {
  if (size < 0 || size > 1000) {
    throw RangeError.range(
      size,
      0,
      1000,
      'size',
      'The number of results per page must be greater than or equal to 0 and less than or equal to 1000.',
    );
  }
  if (current < 1 || current > 100) {
    throw RangeError.range(
      current,
      1,
      100,
      'current',
      'The current must be greater than or equal to 1 and less than or equal to 100.',
    );
  }
}

ElasticQuery _validateElasticQuery(ElasticQuery query) {
  _validatePrecisionTuning(query.precisionTuning);

  final page = query.searchPage;
  if (page != null) {
    _validateSearchPage(current: page.current ?? 1, size: page.size ?? 10);
  }

  final tags = query.analytics?.tags;
  if (tags != null) {
    _validateAnalyticsTags(tags);
  }

  return query;
}

/// An object containing all the settings to execute a query
///
/// See https://www.elastic.co/guide/en/app-search/current/search.html
/// to get more information about all the parameters.
///
/// Note: All the parameters of Elastic App Search are not currently
/// available in this package.
@freezed
abstract class ElasticQuery with _$ElasticQuery {
  const ElasticQuery._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticQuery({
    /// An object representing an Elastic engine
    @JsonKey(includeToJson: false, includeFromJson: false)
    ElasticEngine? engine,

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

    /// Facets are objects which provide the counts of each value or range of values for a field.
    /// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
    @protected Map<String, _ElasticQueryFacet>? facets,

    /// Disjunctive facets are useful when you have many filters in your form, and especially
    /// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
    /// it will return all the available facets as if that filter was not applied.
    /// This is not a native part of Elastic App Search, this is a workaround. In fact, multiple queries are
    /// passed to Elastic and the package concatenates all responses in one response.
    @JsonKey(includeToJson: false) List<String>? disjunctiveFacets,

    /// Tags can be used to enrich each query with unique information.
    /// See [https://www.elastic.co/guide/en/app-search/current/tags.html]
    _ElasticAnalytics? analytics,

    /// Grouped results based on shared fields
    @protected @JsonKey(name: "group") _ElasticGroup? groupBy,

    /// Object to sort your results in an order other than document score.
    @_ElasticSortConverter() @JsonKey(name: "sort") List<_ElasticSort>? sortBy,
  }) = _ElasticQuery;

  factory ElasticQuery.fromJson(Map<String, dynamic> json) =>
      _validateElasticQuery(_$ElasticQueryFromJson(json));

  void _validateFieldName(String field, String method) {
    if (field.trim().isEmpty) {
      throw ArgumentError.value(
        field,
        'field',
        'Field name passed to $method must be a non-empty string.',
      );
    }
  }

  void _validateWeight(int? weight) {
    if (weight != null && (weight < 1 || weight > 10)) {
      throw RangeError.range(
        weight,
        1,
        10,
        'weight',
        'The value of the weight parameter must be an integer between 1 and 10.',
      );
    }
  }

  void _validateResultSizes({int? rawSize, int? snippetSize}) {
    if (rawSize != null && rawSize < 20) {
      throw RangeError.value(
        rawSize,
        'rawSize',
        'Raw size must be at least 20.',
      );
    }
    if (snippetSize != null && snippetSize < 20) {
      throw RangeError.value(
        snippetSize,
        'snippetSize',
        'Snippet size must be at least 20.',
      );
    }
  }

  void _validateFilterArguments({
    required String field,
    Object? isEqualTo,
    List<Object?>? whereIn,
    Object? isGreaterThanOrEqualTo,
    Object? isLessThan,
    double? isFurtherThanOrAt,
    double? isLessFarThan,
    LatLong? from,
  }) {
    _validateFieldName(field, 'filter');

    final hasValueFilter = isEqualTo != null || whereIn != null;
    final hasRangeFilter = isGreaterThanOrEqualTo != null || isLessThan != null;
    final hasGeoFilter = isFurtherThanOrAt != null || isLessFarThan != null;

    if (!hasValueFilter && !hasRangeFilter && !hasGeoFilter) {
      throw ArgumentError(
        'You must provide at least one condition '
        '(isEqualTo, whereIn, isGreaterThanOrEqualTo, isLessThan, '
        'isFurtherThanOrAt, isLessFarThan).',
      );
    }

    if (isEqualTo != null && whereIn != null) {
      throw ArgumentError(
        'You cannot use isEqualTo and whereIn at the same time.',
      );
    }

    if (isEqualTo != null && hasRangeFilter) {
      throw ArgumentError(
        'You cannot use isEqualTo and isGreaterThanOrEqualTo/isLessThan at the same time.',
      );
    }

    if (isEqualTo != null && hasGeoFilter) {
      throw ArgumentError(
        'You cannot use isEqualTo and isFurtherThanOrAt/isLessFarThan at the same time.',
      );
    }

    if (hasRangeFilter && hasGeoFilter) {
      throw ArgumentError(
        'You cannot use isFurtherThanOrAt/isLessFarThan and '
        'isGreaterThanOrEqualTo/isLessThan at the same time.',
      );
    }

    if (hasGeoFilter && from == null) {
      throw ArgumentError(
        'You must provide from (center point) when using isFurtherThanOrAt/isLessFarThan.',
      );
    }
    if (from != null) {
      _validateLatLongValues(from.latitude, from.longitude);
    }

    final validRangeType =
        (isGreaterThanOrEqualTo == null ||
            isGreaterThanOrEqualTo is num ||
            isGreaterThanOrEqualTo is DateTime) &&
        (isLessThan == null || isLessThan is num || isLessThan is DateTime);
    if (!validRangeType) {
      throw ArgumentError(
        'isGreaterThanOrEqualTo/isLessThan must be a number or a DateTime.',
      );
    }
  }

  void _validateFacetArguments({
    required String field,
    Object? isGreaterThanOrEqualTo,
    Object? isLessThan,
    Object? isFurtherThanOrAt,
    Object? isLessFarThan,
    LatLong? from,
  }) {
    _validateFieldName(field, 'facet');

    if (isGreaterThanOrEqualTo != null &&
        isGreaterThanOrEqualTo is! num &&
        isGreaterThanOrEqualTo is! DateTime) {
      throw ArgumentError.value(
        isGreaterThanOrEqualTo,
        'isGreaterThanOrEqualTo',
        '`isGreaterThanOrEqualTo` must be a number or a DateTime.',
      );
    }

    if (isLessThan != null && isLessThan is! num && isLessThan is! DateTime) {
      throw ArgumentError.value(
        isLessThan,
        'isLessThan',
        '`isLessThan` must be a number or a DateTime.',
      );
    }

    final hasRangeFilter = isGreaterThanOrEqualTo != null || isLessThan != null;
    final hasGeoFilter = isFurtherThanOrAt != null || isLessFarThan != null;
    if (hasRangeFilter && hasGeoFilter) {
      throw ArgumentError(
        'You cannot use isFurtherThanOrAt/isLessFarThan and '
        'isGreaterThanOrEqualTo/isLessThan at the same time.',
      );
    }

    if (hasGeoFilter && from == null) {
      throw ArgumentError(
        'You must provide from (center point) when using isFurtherThanOrAt/isLessFarThan.',
      );
    }
    if (from != null) {
      _validateLatLongValues(from.latitude, from.longitude);
    }
  }

  /// Creates and returns a new [ElasticQuery] with additional [ElasticSearchFilter],
  /// an object to filter documents that contain a specific field value.
  /// Available on text, number, and date fields.
  ///
  /// Elastic filters can be of three types:
  /// * Value filters:
  /// - isEqualTo which will make a filter based on a value
  /// - whereIn which will make a filter based on an array of values
  ///
  /// * Range filters (works with `DateTime` and `double` types):
  /// - isGreaterThanOrEqualTo which is the inclusive lower bound of the range
  /// - isLessThan which is the exclusive upper bound of the range
  ///
  /// * Geo filters:
  /// - isFurtherThanOrAt which is the inclusive lower bound of the range
  /// - isLessFarThan which is the exclusive upper bound of the range
  /// By specifying one of the two parameters above, you need to specify the center point
  /// from where the range will be applied (from parameter which is a [LatLong]).
  /// The distance unit can also be specified [GeoUnit]
  ///
  /// Filters created with this modifier will be handled as "all" filters, which means
  /// that all conditions must match.
  ///
  /// Note: Nested filters are not supported at the moment.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  ElasticQuery filter(
    String field, {
    Object? isEqualTo,
    List<Object?>? whereIn,
    Object? isGreaterThanOrEqualTo,
    Object? isLessThan,
    double? isFurtherThanOrAt,
    double? isLessFarThan,
    LatLong? from,
    GeoUnit unit = GeoUnit.meters,
  }) => _filter(
    field,
    isEqualTo: isEqualTo,
    whereIn: whereIn,
    isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
    isLessThan: isLessThan,
    isFurtherThanOrAt: isFurtherThanOrAt,
    isLessFarThan: isLessFarThan,
    from: from,
    unit: unit,
    type: _ElasticFilterType.all,
  );

  /// Creates and returns a new [ElasticQuery] with additional [ElasticSearchFilter],
  /// an object to filter documents that contain a specific field value.
  /// Available on text, number, and date fields.
  ///
  /// Elastic filters can be of three types:
  /// * Value filters:
  /// - isEqualTo which will make a filter based on a value
  /// - whereIn which will make a filter based on an array of values
  ///
  /// * Range filters (works with `DateTime` and `double` types):
  /// - isGreaterThanOrEqualTo which is the inclusive lower bound of the range
  /// - isLessThan which is the exclusive upper bound of the range
  ///
  /// * Geo filters:
  /// - isFurtherThanOrAt which is the inclusive lower bound of the range
  /// - isLessFarThan which is the exclusive upper bound of the range
  /// By specifying one of the two parameters above, you need to specify the center point
  /// from where the range will be applied (from parameter which is a [LatLong]).
  /// The distance unit can also be specified [GeoUnit]
  ///
  /// Filters created with this modifier will be handled as "any" filters, which means
  /// that only one condition must match.
  ///
  /// Note: Nested filters are not supported at the moment.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  ElasticQuery filterAny(
    String field, {
    Object? isEqualTo,
    List<Object?>? whereIn,
    Object? isGreaterThanOrEqualTo,
    Object? isLessThan,
    double? isFurtherThanOrAt,
    double? isLessFarThan,
    LatLong? from,
    GeoUnit unit = GeoUnit.meters,
  }) => _filter(
    field,
    isEqualTo: isEqualTo,
    whereIn: whereIn,
    isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
    isLessThan: isLessThan,
    isFurtherThanOrAt: isFurtherThanOrAt,
    isLessFarThan: isLessFarThan,
    from: from,
    unit: unit,
    type: _ElasticFilterType.any,
  );

  /// Creates and returns a new [ElasticQuery] with additional [ElasticSearchFilter],
  /// an object to filter documents that contain a specific field value.
  /// Available on text, number, and date fields.
  ///
  /// Elastic filters can be of three types:
  /// * Value filters:
  /// - isEqualTo which will make a filter based on a value
  /// - whereIn which will make a filter based on an array of values
  ///
  /// * Range filters (works with `DateTime` and `double` types):
  /// - isGreaterThanOrEqualTo which is the inclusive lower bound of the range
  /// - isLessThan which is the exclusive upper bound of the range
  ///
  /// * Geo filters:
  /// - isFurtherThanOrAt which is the inclusive lower bound of the range
  /// - isLessFarThan which is the exclusive upper bound of the range
  /// By specifying one of the two parameters above, you need to specify the center point
  /// from where the range will be applied (from parameter which is a [LatLong]).
  /// The distance unit can also be specified [GeoUnit]
  ///
  /// Filters created with this modifier will be handled as "none" filters, which means
  /// that documents matching these filters will be excluded from results.
  ///
  /// Note: Nested filters are not supported at the moment.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  ElasticQuery filterNone(
    String field, {
    Object? isEqualTo,
    List<Object?>? whereIn,
    Object? isGreaterThanOrEqualTo,
    Object? isLessThan,
    double? isFurtherThanOrAt,
    double? isLessFarThan,
    LatLong? from,
    GeoUnit unit = GeoUnit.meters,
  }) => _filter(
    field,
    isEqualTo: isEqualTo,
    whereIn: whereIn,
    isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
    isLessThan: isLessThan,
    isFurtherThanOrAt: isFurtherThanOrAt,
    isLessFarThan: isLessFarThan,
    from: from,
    unit: unit,
    type: _ElasticFilterType.none,
  );

  /// Private method which handles filters.
  ElasticQuery _filter(
    String field, {
    Object? isEqualTo,
    List<Object?>? whereIn,
    Object? isGreaterThanOrEqualTo,
    Object? isLessThan,
    double? isFurtherThanOrAt,
    double? isLessFarThan,
    LatLong? from,
    GeoUnit unit = GeoUnit.meters,
    required _ElasticFilterType type,
  }) {
    _validateFilterArguments(
      field: field,
      isEqualTo: isEqualTo,
      whereIn: whereIn,
      isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
      isLessThan: isLessThan,
      isFurtherThanOrAt: isFurtherThanOrAt,
      isLessFarThan: isLessFarThan,
      from: from,
    );

    dynamic value;

    if (whereIn != null) {
      value = whereIn;
    } else if (isEqualTo != null) {
      value = isEqualTo;
    } else if (from != null) {
      value = _ElasticGeoFilter(
        center: from,
        unit: unit,
        from: isFurtherThanOrAt,
        to: isLessFarThan,
      );
    } else if (isGreaterThanOrEqualTo != null || isLessThan != null) {
      if (isGreaterThanOrEqualTo is DateTime || isLessThan is DateTime) {
        value = _ElasticDateRangeFilter(
          from: (isGreaterThanOrEqualTo as DateTime?)?.toUTCString(),
          to: (isLessThan as DateTime?)?.toUTCString(),
        );
      } else if (isGreaterThanOrEqualTo is double ||
          isLessThan is double ||
          isGreaterThanOrEqualTo is int ||
          isLessThan is int) {
        value = _ElasticNumberRangeFilter(
          from: (isGreaterThanOrEqualTo as num?)?.toDouble(),
          to: (isLessThan as num?)?.toDouble(),
        );
      }
    }

    final List<_ElasticSearchFilter> newFilters = [
      ...?filters,
      _ElasticSearchFilter(type: type, name: field, value: value),
    ];

    // TO DO
    // Once all filters have been set, we must now check them
    // to ensure the query is valid.

    return copyWith(filters: newFilters);
  }

  /// Takes a precision [int], creates and returns a new [ElasticQuery]
  /// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
  //
  /// The value of the precision parameter must be an integer between 1 and 11, inclusive.
  /// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
  /// Lower values favor recall, while higher values favor precision.
  ElasticQuery precision(int value) {
    _validatePrecisionTuning(value);
    return copyWith(precisionTuning: value);
  }

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
  ElasticQuery searchField(String field, {int? weight}) {
    _validateFieldName(field, 'searchField');
    _validateWeight(weight);

    return copyWith(
      searchFields: [
        ...?searchFields,
        _ElasticSearchField(name: field, weight: weight),
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
    _validateFieldName(field, 'resultField');
    _validateResultSizes(rawSize: rawSize, snippetSize: snippetSize);

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

  /// Creates and returns a new [ElasticQuery] with additional [ElasticFacet], an object
  /// which rovides the counts of each value for a field, or counts of documents within the provided ranges
  /// if `isMoreThanOrEqualTo` or `isLessThan` is provided.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
  ElasticQuery facet(
    String field, {
    String? name,
    Object? isGreaterThanOrEqualTo,
    Object? isLessThan,
    Object? isFurtherThanOrAt,
    Object? isLessFarThan,
    LatLong? from,
    @Default(GeoUnit.meters) GeoUnit? unit,
    int? size,
    //List<ElasticRange>? ranges,
  }) {
    _validateFacetArguments(
      field: field,
      isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
      isLessThan: isLessThan,
      isFurtherThanOrAt: isFurtherThanOrAt,
      isLessFarThan: isLessFarThan,
      from: from,
    );

    Map<String, _ElasticQueryFacet> _facets = facets != null
        ? {...facets!}
        : {};
    _ElasticQueryFacet facet;

    /*if (ranges != null) {
      facet = _ElasticQueryFacet(
        type: "range",
        ranges: ranges
            .map(
              (range) => _ElasticRangeFacet(
                name: range.name,
                from: range.from is DateTime
                    ? (range.from as DateTime).toUTCString()
                    : range.from?.toString(),
                to: range.to is DateTime
                    ? (range.to as DateTime).toUTCString()
                    : range.to?.toString(),
              ),
            )
            .toList(),
        center: center,
        unit: unit,
      );
    }*/
    if (from != null) {
      final newRange = _ElasticRangeFacet(
        name: name,
        from: isFurtherThanOrAt?.toString(),
        to: isLessFarThan?.toString(),
      );
      facet = _ElasticQueryFacet(
        type: "range",
        ranges: [...?facets?[field]?.ranges, newRange],
        center: from,
        unit: unit,
      );
    } else if (isGreaterThanOrEqualTo != null || isLessThan != null) {
      final newRange = _ElasticRangeFacet(
        name: name,
        from: isGreaterThanOrEqualTo is DateTime
            ? isGreaterThanOrEqualTo.toUTCString()
            : isGreaterThanOrEqualTo?.toString(),
        to: isLessThan is DateTime
            ? isLessThan.toUTCString()
            : isLessThan?.toString(),
      );
      facet = _ElasticQueryFacet(
        type: "range",
        ranges: [...?facets?[field]?.ranges, newRange],
      );
    } else {
      facet = _ElasticQueryFacet(type: "value", size: size);
    }

    _facets[field] = facet;
    return copyWith(facets: _facets);
  }

  /// Creates and returns a new [ElasticQuery] with additional disjunctive facet.
  ///
  /// Disjunctive facets are useful when you have many filters in your form, and especially
  /// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
  /// it will return all the available facets as if that filter was not applied.
  ElasticQuery disjunctiveFacet(String field) {
    _validateFieldName(field, 'disjunctiveFacet');
    if (facets?[field] == null) {
      throw StateError(
        'No facet currently exists for "$field". '
        'Please create your facet before calling disjunctiveFacet.',
      );
    }

    return copyWith(disjunctiveFacets: [...?disjunctiveFacets, field]);
  }

  /// Creates and returns a new [ElasticQuery] with additional analytics tag.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/tags.html]
  ElasticQuery tag(String tag) {
    if (tag.isEmpty) {
      throw ArgumentError.value(
        tag,
        'tag',
        'A tag must be a non-empty string.',
      );
    }
    if (tag.length > 64) {
      throw ArgumentError.value(
        tag,
        'tag',
        'A tag is limited to 64 characters.',
      );
    }

    final newTags = [...?analytics?.tags, tag];
    _validateAnalyticsTags(newTags);

    return copyWith(analytics: _ElasticAnalytics(tags: newTags));
  }

  /// Takes a field with an optionnal `size`, creates and returns a new [ElasticQuery]
  /// which will return grouped results based on shared fields.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/grouping.html]
  ElasticQuery group(String field, {int? size}) {
    _validateFieldName(field, 'group');
    if (size != null && (size < 1 || size > 10)) {
      throw RangeError.range(
        size,
        1,
        10,
        'size',
        'size must be between 1 and 10.',
      );
    }

    return copyWith(
      groupBy: _ElasticGroup(field: field, size: size),
    );
  }

  /// Takes a field with an optionnal `descending`, creates and returns a new [ElasticQuery]
  /// which will sort your results in an order other than document score.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/sort.html]
  ElasticQuery sort(String field, {bool descending = false}) {
    _validateFieldName(field, 'sort');

    final newSortBy = _ElasticSort(field: field, descending: descending);
    return copyWith(sortBy: [...?sortBy, newSortBy]);
  }

  /// Creates and returns a new [ElasticQuery] with new pagination parameters.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
  ElasticQuery page(int current, {int size = 10}) {
    _validateSearchPage(current: current, size: size);
    return copyWith(
      searchPage: _ElasticSearchPage(current: current, size: size),
    );
  }

  /// Fetch the documents for this query.
  Future<ElasticResponse> get([CancelToken? cancelToken]) {
    final currentEngine = engine;
    if (currentEngine == null) {
      throw StateError(
        'An engine is required to execute this query. '
        'Create the query from ElasticEngine.query(...) or set engine before calling get().',
      );
    }
    return currentEngine.get(this, cancelToken);
  }

  /// Private method - not intended to be used
  /// Builds the list of the disjunctive queries that will be passed
  /// at the same time of the main query, when disjunctive facets are set.
  List<ElasticQuery>? get _disjunctives {
    if (disjunctiveFacets == null || disjunctiveFacets!.isEmpty) return null;
    List<ElasticQuery> _disjunctives = [];

    for (String field in disjunctiveFacets ?? []) {
      final _disjunctiveQuery = _disjunctive(field);
      if (_disjunctiveQuery != null) {
        _disjunctives.add(_disjunctiveQuery);
      }
    }
    return _disjunctives;
  }

  /// Private method - not intended to be used
  /// Build a disjunctive query when disjunctive facets are set.
  ElasticQuery? _disjunctive(String field) {
    final disjunctiveFilters = filters
        ?.where((filter) => filter.name != field)
        .toList();
    final disjunctiveFacets = facets?[field];

    if (filters?.length == disjunctiveFilters?.length) return null;

    return copyWith(
      filters: disjunctiveFilters,
      facets: disjunctiveFacets != null ? {field: disjunctiveFacets} : null,
    ).page(1, size: 0).resultField(field).tag("Facet-Only");
  }
}

/// Object to delimit the pagination parameters.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
@freezed
abstract class _ElasticSearchPage with _$ElasticSearchPage {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticSearchPage({
    /// Number of results per page.
    /// Must be greater than or equal to 1 and less than or equal to 1000.
    /// Defaults to 10.
    @Default(10) int? size,

    /// Page number of results to return.
    /// Must be greater than or equal to 1 and less than or equal to 100.
    /// Defaults to 1.
    @Default(1) int? current,
  }) = _ElasticSearchPageImpl;

  factory _ElasticSearchPage.fromJson(Map<String, dynamic> json) =>
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
abstract class _ElasticSearchFilter with _$ElasticSearchFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticSearchFilter({
    /// The type of the filter, which will determine if it's an 'OR', 'AND' or 'NOT' condition.
    @Default(_ElasticFilterType.all) _ElasticFilterType type,

    /// The field from your schema upon which to apply your filter.
    required String name,

    /// The value upon which to filter. The value must be an exact match,
    /// and can be a String, a boolean, a number, or an array of these types.
    required dynamic value,
  }) = _ElasticSearchFilterImpl;

  factory _ElasticSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchFilterFromJson(json);
}

class _ElasticSearchFiltersConverter
    implements JsonConverter<List<_ElasticSearchFilter>?, Map?> {
  const _ElasticSearchFiltersConverter();

  @override
  List<_ElasticSearchFilter>? fromJson(Map? value) {
    if (value == null) return null;

    final searchFilters = <_ElasticSearchFilter>[];

    for (final type in _ElasticFilterType.values) {
      final rawTypeFilters = value[type.name];
      if (rawTypeFilters == null) continue;

      final typedFilters = rawTypeFilters is List
          ? rawTypeFilters
          : [rawTypeFilters];
      for (final rawFilter in typedFilters) {
        if (rawFilter is! Map) continue;

        for (final entry in rawFilter.entries) {
          final name = entry.key.toString();
          if (name.isEmpty) continue;

          searchFilters.add(
            _ElasticSearchFilter(
              type: type,
              name: name,
              value: _decodeFilterValue(entry.value),
            ),
          );
        }
      }
    }

    return searchFilters.isEmpty ? null : searchFilters;
  }

  dynamic _decodeFilterValue(dynamic rawValue) {
    if (rawValue is! Map) return rawValue;

    final value = <String, dynamic>{};
    for (final entry in rawValue.entries) {
      value[entry.key.toString()] = entry.value;
    }

    final hasGeoHints =
        value.containsKey('center') || value.containsKey('unit');
    if (hasGeoHints) {
      final center = value['center'];
      if (center == null || center.toString().trim().isEmpty) {
        throw ArgumentError('center is required.');
      }

      final unit = value['unit'];
      if (unit == null || unit.toString().trim().isEmpty) {
        throw ArgumentError('unit is required.');
      }

      final geoFilter = _ElasticGeoFilter.fromJson(value);
      final parsedCenter = geoFilter.center;
      if (parsedCenter == null) {
        throw ArgumentError('center is required.');
      }
      _validateLatLongValues(parsedCenter.latitude, parsedCenter.longitude);
      return geoFilter;
    }

    if (value.containsKey('from') || value.containsKey('to')) {
      final from = _toDouble(value['from']);
      final to = _toDouble(value['to']);

      if (from != null || to != null) {
        return _ElasticNumberRangeFilter(from: from, to: to);
      }

      return _ElasticDateRangeFilter(
        from: value['from']?.toString(),
        to: value['to']?.toString(),
      );
    }

    return rawValue;
  }

  double? _toDouble(dynamic value) {
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value);
    return null;
  }

  @override
  Map? toJson(List<_ElasticSearchFilter>? searchFilters) {
    if (searchFilters == null) return null;
    Map<String, dynamic> filters = {};

    for (final type in _ElasticFilterType.values) {
      var values = [];
      for (final searchFilter in searchFilters.where(
        (filter) => filter.type == type,
      )) {
        if (searchFilter.value is _ElasticDateRangeFilter) {
          final encodedValue = (searchFilter.value as _ElasticDateRangeFilter)
              .toJson();
          values.add({searchFilter.name: encodedValue});
        } else if (searchFilter.value is _ElasticNumberRangeFilter) {
          final encodedValue = (searchFilter.value as _ElasticNumberRangeFilter)
              .toJson();
          values.add({searchFilter.name: encodedValue});
        } else if (searchFilter.value is _ElasticGeoFilter) {
          final encodedValue = (searchFilter.value as _ElasticGeoFilter)
              .toJson();
          values.add({searchFilter.name: encodedValue});
        } else {
          values.add({searchFilter.name: searchFilter.value});
        }
      }

      filters[type.name] = values.length == 1 ? values.first : values;
    }
    return filters;
  }
}

@freezed
abstract class _ElasticDateRangeFilter with _$ElasticDateRangeFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticDateRangeFilter({String? from, String? to}) =
      _ElasticDateRangeFilterImpl;

  factory _ElasticDateRangeFilter.fromJson(Map<String, dynamic> json) =>
      _$ElasticDateRangeFilterFromJson(json);
}

@freezed
abstract class _ElasticNumberRangeFilter with _$ElasticNumberRangeFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticNumberRangeFilter({double? from, double? to}) =
      _ElasticNumberRangeFilterImpl;

  factory _ElasticNumberRangeFilter.fromJson(Map<String, dynamic> json) =>
      _$ElasticNumberRangeFilterFromJson(json);
}

@freezed
abstract class _ElasticGeoFilter with _$ElasticGeoFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticGeoFilter({
    @_LatLongConverter() LatLong? center,
    double? distance,
    required GeoUnit unit,
    double? from,
    double? to,
  }) = _ElasticGeoFilterImpl;

  factory _ElasticGeoFilter.fromJson(Map<String, dynamic> json) =>
      _$ElasticGeoFilterFromJson(json);
}

/// Object which restricts a query to search only specific fields.
///
/// Restricting fields will result in faster queries, especially for schemas with many text fields
/// Only available within text fields.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-fields-weights.html]
@freezed
abstract class _ElasticSearchField with _$ElasticSearchField {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticSearchField({
    /// The name of the field. It must exist within your Engine schema and be of type text.
    required String name,

    /// Optionnal. Apply Weights to each search field.
    /// Engine level Weight settings will be applied is none are provided.
    int? weight,
  }) = _ElasticSearchFieldImpl;

  factory _ElasticSearchField.fromJson(Map<String, dynamic> json) =>
      _$ElasticSearchFieldFromJson(json);
}

class _ElasticSearchFieldsConverter
    implements JsonConverter<List<_ElasticSearchField>?, Map?> {
  const _ElasticSearchFieldsConverter();

  @override
  List<_ElasticSearchField>? fromJson(Map? value) {
    if (value == null) return null;

    final searchFields = <_ElasticSearchField>[];
    for (final entry in value.entries) {
      final name = entry.key.toString();
      if (name.isEmpty) continue;

      int? weight;
      if (entry.value is Map) {
        final rawWeight = (entry.value as Map)['weight'];
        if (rawWeight is num) {
          weight = rawWeight.toInt();
        } else if (rawWeight is String) {
          weight = int.tryParse(rawWeight);
        }
      }

      searchFields.add(_ElasticSearchField(name: name, weight: weight));
    }

    return searchFields.isEmpty ? null : searchFields;
  }

  @override
  Map? toJson(List<_ElasticSearchField>? searchFields) {
    if (searchFields == null) return null;

    var value = {};
    for (final searchField in searchFields) {
      if (searchField.weight != null) {
        value[searchField.name] = {"weight": searchField.weight};
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
abstract class _ElasticResultField with _$ElasticResultField {
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
  }) = _ElasticResultFieldImpl;

  factory _ElasticResultField.fromJson(Map<String, dynamic> json) =>
      _$ElasticResultFieldFromJson(json);
}

class _ElasticResultFieldsConverter
    implements JsonConverter<List<_ElasticResultField>?, Map?> {
  const _ElasticResultFieldsConverter();

  @override
  List<_ElasticResultField>? fromJson(Map? value) {
    if (value == null) return null;

    final resultFields = <_ElasticResultField>[];
    for (final entry in value.entries) {
      final name = entry.key.toString();
      if (name.isEmpty) continue;

      int? rawSize;
      int? snippetSize;
      bool fallback = true;

      if (entry.value is Map) {
        final fieldConfig = entry.value as Map;

        final rawConfig = fieldConfig['raw'];
        if (rawConfig is Map) {
          rawSize = _toInt(rawConfig['size']);
        }

        final snippetConfig = fieldConfig['snippet'];
        if (snippetConfig is Map) {
          snippetSize = _toInt(snippetConfig['size']);
          final rawFallback = snippetConfig['fallback'];
          if (rawFallback is bool) {
            fallback = rawFallback;
          }
        }
      }

      resultFields.add(
        _ElasticResultField(
          name: name,
          rawSize: rawSize,
          snippetSize: snippetSize,
          fallback: fallback,
        ),
      );
    }

    return resultFields.isEmpty ? null : resultFields;
  }

  int? _toInt(dynamic value) {
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value);
    return null;
  }

  @override
  Map? toJson(List<_ElasticResultField>? resultFields) {
    if (resultFields == null || resultFields.isEmpty) return null;

    var value = <String, Map?>{};
    for (final resultField in resultFields) {
      value[resultField.name] = {
        "raw": resultField.rawSize != null ? {"size": resultField.rawSize} : {},
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
abstract class _ElasticGroup with _$ElasticGroup {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticGroup({
    /// Field name to group results on.
    required String field,

    /// Number of results to be included in the _group key of the returned document.
    /// Can be between 1 and 10. Defaults to 10.
    int? size,
  }) = _ElasticGroupImpl;

  factory _ElasticGroup.fromJson(Map<String, dynamic> json) =>
      _$ElasticGroupFromJson(json);
}

/// Object which sorts results based on shared fields.
///
/// Sort your results in an order other than document score.
/// Using sort will override the default relevance scoring method.
///
/// See [https://www.elastic.co/guide/en/app-search/current/sort.html]
@freezed
abstract class _ElasticSort with _$ElasticSort {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory _ElasticSort({
    /// Field name to sort results
    required String field,
    @Default(false) bool descending,
  }) = _ElasticSortImpl;

  factory _ElasticSort.fromJson(Map<String, dynamic> json) =>
      _$ElasticSortFromJson(json);
}

class _ElasticSortConverter
    implements JsonConverter<List<_ElasticSort>?, List<Map>?> {
  const _ElasticSortConverter();

  @override
  List<_ElasticSort>? fromJson(List<Map>? value) {
    if (value == null) return null;

    final sortBys = <_ElasticSort>[];
    for (final sort in value) {
      for (final entry in sort.entries) {
        final field = entry.key.toString();
        if (field.isEmpty) continue;

        final direction = entry.value.toString().toLowerCase();
        sortBys.add(
          _ElasticSort(field: field, descending: direction == "desc"),
        );
      }
    }

    return sortBys.isEmpty ? null : sortBys;
  }

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

/// An object containing all the settings to execute a suggestion query
///
/// See https://www.elastic.co/guide/en/app-search/current/query-suggestions-guide.html
/// to get more information about all the parameters.
@freezed
abstract class ElasticSuggestionsQuery with _$ElasticSuggestionsQuery {
  const ElasticSuggestionsQuery._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory ElasticSuggestionsQuery({
    /// An object representing an Elastic engine
    @JsonKey(includeToJson: false, includeFromJson: false)
    ElasticEngine? engine,

    /// String or number to match.
    required String query,

    /// Number of query suggestions.
    /// Must be greater than or equal to 1 and less than or equal to 1000.
    /// Defaults to 10.
    @JsonKey(name: "size") @Default(10) int? sizeField,

    /// Object which restricts a query to search only specific fields.
    @_ElasticSearchFieldsConverter()
    @JsonKey(name: "search_fields")
    List<_ElasticSearchField>? searchFields,

    /// Object to sort your results in an order other than document score.
    @_ElasticSortConverter() @JsonKey(name: "sort") List<_ElasticSort>? sortBy,
  }) = _ElasticSuggestionsQuery;

  factory ElasticSuggestionsQuery.fromJson(Map<String, dynamic> json) =>
      _$ElasticSuggestionsQueryFromJson(json);

  /// Takes a field with an optional `weight`, creates and returns a new [ElasticSuggestionsQuery]
  ///
  /// It will restrict a query to search only specific fields.
  ///
  /// Weight is given between 10 (most relevant) to 1 (least relevant).
  ///
  /// Restricting fields will result in faster queries, especially for schemas with many text fields
  /// Only available within text fields.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-fields-weights.html]
  ElasticSuggestionsQuery searchField(String field, {int? weight}) {
    if (field.trim().isEmpty) {
      throw ArgumentError.value(
        field,
        'field',
        'Field name passed to searchField must be a non-empty string.',
      );
    }
    if (weight != null && (weight < 1 || weight > 10)) {
      throw RangeError.range(
        weight,
        1,
        10,
        'weight',
        'The value of the weight parameter must be an integer between 1 and 10.',
      );
    }

    return copyWith(
      searchFields: [
        ...?searchFields,
        _ElasticSearchField(name: field, weight: weight),
      ],
    );
  }

  /// Takes a field with an optionnal `descending`, creates and returns a new [ElasticSuggestionsQuery]
  /// which will sort your results in an order other than document score.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/sort.html]
  ElasticSuggestionsQuery sort(String field, {bool descending = false}) {
    if (field.trim().isEmpty) {
      throw ArgumentError.value(
        field,
        'field',
        'Field name passed to sort must be a non-empty string.',
      );
    }

    final newSortBy = _ElasticSort(field: field, descending: descending);
    return copyWith(sortBy: [...?sortBy, newSortBy]);
  }

  /// Creates and returns a new [ElasticSuggestionsQuery] with new size parameters.
  ElasticSuggestionsQuery size(int size) {
    if (size < 1 || size > 1000) {
      throw RangeError.range(
        size,
        1,
        1000,
        'size',
        'The size of suggestions must be between 1 and 1000.',
      );
    }

    return copyWith(sizeField: size);
  }

  /// Fetch the documents for this query.
  Future<ElasticQuerySuggestionResponse> get([CancelToken? cancelToken]) {
    final currentEngine = engine;
    if (currentEngine == null) {
      throw StateError(
        'An engine is required to execute this suggestion query. '
        'Create the query from ElasticEngine.suggestionQuery(...) or set engine before calling get().',
      );
    }
    return currentEngine.getQuerySuggestion(this, cancelToken);
  }
}
