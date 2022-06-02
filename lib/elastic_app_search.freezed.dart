// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of elastic_app_search;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElasticQuery _$ElasticQueryFromJson(Map<String, dynamic> json) {
  return _ElasticQuery.fromJson(json);
}

/// @nodoc
class _$ElasticQueryTearOff {
  const _$ElasticQueryTearOff();

  _ElasticQuery call(
      {@JsonKey(ignore: true)
          ElasticEngine? engine,
      required String query,
      @protected
      @JsonKey(name: "precision")
          int? precisionTuning,
      @JsonKey(name: "page")
          _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<_ElasticResultField>? resultFields,
      @protected
      @JsonKey(name: "group")
          _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          List<_ElasticSort>? sortBy}) {
    return _ElasticQuery(
      engine: engine,
      query: query,
      precisionTuning: precisionTuning,
      searchPage: searchPage,
      filters: filters,
      searchFields: searchFields,
      resultFields: resultFields,
      groupBy: groupBy,
      sortBy: sortBy,
    );
  }

  ElasticQuery fromJson(Map<String, Object?> json) {
    return ElasticQuery.fromJson(json);
  }
}

/// @nodoc
const $ElasticQuery = _$ElasticQueryTearOff();

/// @nodoc
mixin _$ElasticQuery {
  /// An object representing an Elastic engine
  @JsonKey(ignore: true)
  ElasticEngine? get engine => throw _privateConstructorUsedError;

  /// String or number to match.
  String get query => throw _privateConstructorUsedError;

  /// Use the precision parameter of the search API to tune precision
  /// and recall for a query. Learn more in Precision tuning (beta).
  /// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
  ///
  /// The value of the precision parameter must be an integer between 1 and 11, inclusive.
  /// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
  /// Lower values favor recall, while higher values favor precision.
  @protected
  @JsonKey(name: "precision")
  int? get precisionTuning => throw _privateConstructorUsedError;

  /// Object to delimit the pagination parameters.
  @JsonKey(name: "page")
  _ElasticSearchPage? get searchPage => throw _privateConstructorUsedError;

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @_ElasticSearchFiltersConverter()
  List<_ElasticSearchFilter>? get filters => throw _privateConstructorUsedError;

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<_ElasticSearchField>? get searchFields =>
      throw _privateConstructorUsedError;

  /// Object to define the fields which appear in search results and how their values are rendered.
  @_ElasticResultFieldsConverter()
  @JsonKey(name: "result_fields")
  List<_ElasticResultField>? get resultFields =>
      throw _privateConstructorUsedError;

  /// Grouped results based on shared fields
  @protected
  @JsonKey(name: "group")
  _ElasticGroup? get groupBy => throw _privateConstructorUsedError;

  /// Object to sort your results in an order other than document score.
  @_ElasticSortConverter()
  @JsonKey(name: "sort")
  List<_ElasticSort>? get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticQueryCopyWith<ElasticQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticQueryCopyWith<$Res> {
  factory $ElasticQueryCopyWith(
          ElasticQuery value, $Res Function(ElasticQuery) then) =
      _$ElasticQueryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          ElasticEngine? engine,
      String query,
      @protected
      @JsonKey(name: "precision")
          int? precisionTuning,
      @JsonKey(name: "page")
          _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<_ElasticResultField>? resultFields,
      @protected
      @JsonKey(name: "group")
          _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          List<_ElasticSort>? sortBy});

  _$ElasticSearchPageCopyWith<$Res>? get searchPage;
  _$ElasticGroupCopyWith<$Res>? get groupBy;
}

/// @nodoc
class _$ElasticQueryCopyWithImpl<$Res> implements $ElasticQueryCopyWith<$Res> {
  _$ElasticQueryCopyWithImpl(this._value, this._then);

  final ElasticQuery _value;
  // ignore: unused_field
  final $Res Function(ElasticQuery) _then;

  @override
  $Res call({
    Object? engine = freezed,
    Object? query = freezed,
    Object? precisionTuning = freezed,
    Object? searchPage = freezed,
    Object? filters = freezed,
    Object? searchFields = freezed,
    Object? resultFields = freezed,
    Object? groupBy = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as ElasticEngine?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      precisionTuning: precisionTuning == freezed
          ? _value.precisionTuning
          : precisionTuning // ignore: cast_nullable_to_non_nullable
              as int?,
      searchPage: searchPage == freezed
          ? _value.searchPage
          : searchPage // ignore: cast_nullable_to_non_nullable
              as _ElasticSearchPage?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchFilter>?,
      searchFields: searchFields == freezed
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchField>?,
      resultFields: resultFields == freezed
          ? _value.resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticResultField>?,
      groupBy: groupBy == freezed
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as _ElasticGroup?,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSort>?,
    ));
  }

  @override
  _$ElasticSearchPageCopyWith<$Res>? get searchPage {
    if (_value.searchPage == null) {
      return null;
    }

    return _$ElasticSearchPageCopyWith<$Res>(_value.searchPage!, (value) {
      return _then(_value.copyWith(searchPage: value));
    });
  }

  @override
  _$ElasticGroupCopyWith<$Res>? get groupBy {
    if (_value.groupBy == null) {
      return null;
    }

    return _$ElasticGroupCopyWith<$Res>(_value.groupBy!, (value) {
      return _then(_value.copyWith(groupBy: value));
    });
  }
}

/// @nodoc
abstract class _$ElasticQueryCopyWith<$Res>
    implements $ElasticQueryCopyWith<$Res> {
  factory _$ElasticQueryCopyWith(
          _ElasticQuery value, $Res Function(_ElasticQuery) then) =
      __$ElasticQueryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          ElasticEngine? engine,
      String query,
      @protected
      @JsonKey(name: "precision")
          int? precisionTuning,
      @JsonKey(name: "page")
          _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<_ElasticResultField>? resultFields,
      @protected
      @JsonKey(name: "group")
          _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          List<_ElasticSort>? sortBy});

  @override
  _$ElasticSearchPageCopyWith<$Res>? get searchPage;
  @override
  _$ElasticGroupCopyWith<$Res>? get groupBy;
}

/// @nodoc
class __$ElasticQueryCopyWithImpl<$Res> extends _$ElasticQueryCopyWithImpl<$Res>
    implements _$ElasticQueryCopyWith<$Res> {
  __$ElasticQueryCopyWithImpl(
      _ElasticQuery _value, $Res Function(_ElasticQuery) _then)
      : super(_value, (v) => _then(v as _ElasticQuery));

  @override
  _ElasticQuery get _value => super._value as _ElasticQuery;

  @override
  $Res call({
    Object? engine = freezed,
    Object? query = freezed,
    Object? precisionTuning = freezed,
    Object? searchPage = freezed,
    Object? filters = freezed,
    Object? searchFields = freezed,
    Object? resultFields = freezed,
    Object? groupBy = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_ElasticQuery(
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as ElasticEngine?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      precisionTuning: precisionTuning == freezed
          ? _value.precisionTuning
          : precisionTuning // ignore: cast_nullable_to_non_nullable
              as int?,
      searchPage: searchPage == freezed
          ? _value.searchPage
          : searchPage // ignore: cast_nullable_to_non_nullable
              as _ElasticSearchPage?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchFilter>?,
      searchFields: searchFields == freezed
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchField>?,
      resultFields: resultFields == freezed
          ? _value.resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticResultField>?,
      groupBy: groupBy == freezed
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as _ElasticGroup?,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSort>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticQuery extends _ElasticQuery {
  const _$_ElasticQuery(
      {@JsonKey(ignore: true)
          this.engine,
      required this.query,
      @protected
      @JsonKey(name: "precision")
          this.precisionTuning,
      @JsonKey(name: "page")
          this.searchPage,
      @_ElasticSearchFiltersConverter()
          this.filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          this.searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          this.resultFields,
      @protected
      @JsonKey(name: "group")
          this.groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          this.sortBy})
      : assert(engine != null, 'An engine is required to build a query.'),
        super._();

  factory _$_ElasticQuery.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticQueryFromJson(json);

  @override

  /// An object representing an Elastic engine
  @JsonKey(ignore: true)
  final ElasticEngine? engine;
  @override

  /// String or number to match.
  final String query;
  @override

  /// Use the precision parameter of the search API to tune precision
  /// and recall for a query. Learn more in Precision tuning (beta).
  /// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
  ///
  /// The value of the precision parameter must be an integer between 1 and 11, inclusive.
  /// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
  /// Lower values favor recall, while higher values favor precision.
  @protected
  @JsonKey(name: "precision")
  final int? precisionTuning;
  @override

  /// Object to delimit the pagination parameters.
  @JsonKey(name: "page")
  final _ElasticSearchPage? searchPage;
  @override

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @_ElasticSearchFiltersConverter()
  final List<_ElasticSearchFilter>? filters;
  @override

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  final List<_ElasticSearchField>? searchFields;
  @override

  /// Object to define the fields which appear in search results and how their values are rendered.
  @_ElasticResultFieldsConverter()
  @JsonKey(name: "result_fields")
  final List<_ElasticResultField>? resultFields;
  @override

  /// Grouped results based on shared fields
  @protected
  @JsonKey(name: "group")
  final _ElasticGroup? groupBy;
  @override

  /// Object to sort your results in an order other than document score.
  @_ElasticSortConverter()
  @JsonKey(name: "sort")
  final List<_ElasticSort>? sortBy;

  @override
  String toString() {
    return 'ElasticQuery(engine: $engine, query: $query, precisionTuning: $precisionTuning, searchPage: $searchPage, filters: $filters, searchFields: $searchFields, resultFields: $resultFields, groupBy: $groupBy, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticQuery &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.precisionTuning, precisionTuning) &&
            const DeepCollectionEquality()
                .equals(other.searchPage, searchPage) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality()
                .equals(other.searchFields, searchFields) &&
            const DeepCollectionEquality()
                .equals(other.resultFields, resultFields) &&
            const DeepCollectionEquality().equals(other.groupBy, groupBy) &&
            const DeepCollectionEquality().equals(other.sortBy, sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(engine),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(precisionTuning),
      const DeepCollectionEquality().hash(searchPage),
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(searchFields),
      const DeepCollectionEquality().hash(resultFields),
      const DeepCollectionEquality().hash(groupBy),
      const DeepCollectionEquality().hash(sortBy));

  @JsonKey(ignore: true)
  @override
  _$ElasticQueryCopyWith<_ElasticQuery> get copyWith =>
      __$ElasticQueryCopyWithImpl<_ElasticQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticQueryToJson(this);
  }
}

abstract class _ElasticQuery extends ElasticQuery {
  const factory _ElasticQuery(
      {@JsonKey(ignore: true)
          ElasticEngine? engine,
      required String query,
      @protected
      @JsonKey(name: "precision")
          int? precisionTuning,
      @JsonKey(name: "page")
          _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<_ElasticResultField>? resultFields,
      @protected
      @JsonKey(name: "group")
          _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          List<_ElasticSort>? sortBy}) = _$_ElasticQuery;
  const _ElasticQuery._() : super._();

  factory _ElasticQuery.fromJson(Map<String, dynamic> json) =
      _$_ElasticQuery.fromJson;

  @override

  /// An object representing an Elastic engine
  @JsonKey(ignore: true)
  ElasticEngine? get engine;
  @override

  /// String or number to match.
  String get query;
  @override

  /// Use the precision parameter of the search API to tune precision
  /// and recall for a query. Learn more in Precision tuning (beta).
  /// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
  ///
  /// The value of the precision parameter must be an integer between 1 and 11, inclusive.
  /// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
  /// Lower values favor recall, while higher values favor precision.
  @protected
  @JsonKey(name: "precision")
  int? get precisionTuning;
  @override

  /// Object to delimit the pagination parameters.
  @JsonKey(name: "page")
  _ElasticSearchPage? get searchPage;
  @override

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @_ElasticSearchFiltersConverter()
  List<_ElasticSearchFilter>? get filters;
  @override

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<_ElasticSearchField>? get searchFields;
  @override

  /// Object to define the fields which appear in search results and how their values are rendered.
  @_ElasticResultFieldsConverter()
  @JsonKey(name: "result_fields")
  List<_ElasticResultField>? get resultFields;
  @override

  /// Grouped results based on shared fields
  @protected
  @JsonKey(name: "group")
  _ElasticGroup? get groupBy;
  @override

  /// Object to sort your results in an order other than document score.
  @_ElasticSortConverter()
  @JsonKey(name: "sort")
  List<_ElasticSort>? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$ElasticQueryCopyWith<_ElasticQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchPage _$_ElasticSearchPageFromJson(Map<String, dynamic> json) {
  return __ElasticSearchPage.fromJson(json);
}

/// @nodoc
class _$_ElasticSearchPageTearOff {
  const _$_ElasticSearchPageTearOff();

  __ElasticSearchPage call({int? size = 10, int? current = 1}) {
    return __ElasticSearchPage(
      size: size,
      current: current,
    );
  }

  _ElasticSearchPage fromJson(Map<String, Object?> json) {
    return _ElasticSearchPage.fromJson(json);
  }
}

/// @nodoc
const _$ElasticSearchPage = _$_ElasticSearchPageTearOff();

/// @nodoc
mixin _$_ElasticSearchPage {
  /// Number of results per page.
  /// Must be greater than or equal to 1 and less than or equal to 1000.
  /// Defaults to 10.
  int? get size => throw _privateConstructorUsedError;

  /// Page number of results to return.
  /// Must be greater than or equal to 1 and less than or equal to 100.
  /// Defaults to 1.
  int? get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticSearchPageCopyWith<_ElasticSearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticSearchPageCopyWith<$Res> {
  factory _$ElasticSearchPageCopyWith(
          _ElasticSearchPage value, $Res Function(_ElasticSearchPage) then) =
      __$ElasticSearchPageCopyWithImpl<$Res>;
  $Res call({int? size, int? current});
}

/// @nodoc
class __$ElasticSearchPageCopyWithImpl<$Res>
    implements _$ElasticSearchPageCopyWith<$Res> {
  __$ElasticSearchPageCopyWithImpl(this._value, this._then);

  final _ElasticSearchPage _value;
  // ignore: unused_field
  final $Res Function(_ElasticSearchPage) _then;

  @override
  $Res call({
    Object? size = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticSearchPageCopyWith<$Res>
    implements _$ElasticSearchPageCopyWith<$Res> {
  factory _$_ElasticSearchPageCopyWith(
          __ElasticSearchPage value, $Res Function(__ElasticSearchPage) then) =
      __$_ElasticSearchPageCopyWithImpl<$Res>;
  @override
  $Res call({int? size, int? current});
}

/// @nodoc
class __$_ElasticSearchPageCopyWithImpl<$Res>
    extends __$ElasticSearchPageCopyWithImpl<$Res>
    implements _$_ElasticSearchPageCopyWith<$Res> {
  __$_ElasticSearchPageCopyWithImpl(
      __ElasticSearchPage _value, $Res Function(__ElasticSearchPage) _then)
      : super(_value, (v) => _then(v as __ElasticSearchPage));

  @override
  __ElasticSearchPage get _value => super._value as __ElasticSearchPage;

  @override
  $Res call({
    Object? size = freezed,
    Object? current = freezed,
  }) {
    return _then(__ElasticSearchPage(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticSearchPage implements __ElasticSearchPage {
  const _$__ElasticSearchPage({this.size = 10, this.current = 1})
      : assert(size == null || (size != null && size >= 1 && size <= 1000),
            'The number of results per page must be greater than or equal to 1 and less than or equal to 1000.'),
        assert(
            current == null ||
                (current != null && current >= 1 && current <= 100),
            'The current must be greater than or equal to 1 and less than or equal to 100.');

  factory _$__ElasticSearchPage.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticSearchPageFromJson(json);

  @JsonKey()
  @override

  /// Number of results per page.
  /// Must be greater than or equal to 1 and less than or equal to 1000.
  /// Defaults to 10.
  final int? size;
  @JsonKey()
  @override

  /// Page number of results to return.
  /// Must be greater than or equal to 1 and less than or equal to 100.
  /// Defaults to 1.
  final int? current;

  @override
  String toString() {
    return '_ElasticSearchPage(size: $size, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticSearchPage &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$_ElasticSearchPageCopyWith<__ElasticSearchPage> get copyWith =>
      __$_ElasticSearchPageCopyWithImpl<__ElasticSearchPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSearchPageToJson(this);
  }
}

abstract class __ElasticSearchPage implements _ElasticSearchPage {
  const factory __ElasticSearchPage({int? size, int? current}) =
      _$__ElasticSearchPage;

  factory __ElasticSearchPage.fromJson(Map<String, dynamic> json) =
      _$__ElasticSearchPage.fromJson;

  @override

  /// Number of results per page.
  /// Must be greater than or equal to 1 and less than or equal to 1000.
  /// Defaults to 10.
  int? get size;
  @override

  /// Page number of results to return.
  /// Must be greater than or equal to 1 and less than or equal to 100.
  /// Defaults to 1.
  int? get current;
  @override
  @JsonKey(ignore: true)
  _$_ElasticSearchPageCopyWith<__ElasticSearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchFilter _$_ElasticSearchFilterFromJson(Map<String, dynamic> json) {
  return __ElasticSearchFilter.fromJson(json);
}

/// @nodoc
class _$_ElasticSearchFilterTearOff {
  const _$_ElasticSearchFilterTearOff();

  __ElasticSearchFilter call(
      {required String name, required List<dynamic> value}) {
    return __ElasticSearchFilter(
      name: name,
      value: value,
    );
  }

  _ElasticSearchFilter fromJson(Map<String, Object?> json) {
    return _ElasticSearchFilter.fromJson(json);
  }
}

/// @nodoc
const _$ElasticSearchFilter = _$_ElasticSearchFilterTearOff();

/// @nodoc
mixin _$_ElasticSearchFilter {
  /// The field from your schema upon which to apply your filter.
  String get name => throw _privateConstructorUsedError;

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  List<dynamic> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticSearchFilterCopyWith<_ElasticSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticSearchFilterCopyWith<$Res> {
  factory _$ElasticSearchFilterCopyWith(_ElasticSearchFilter value,
          $Res Function(_ElasticSearchFilter) then) =
      __$ElasticSearchFilterCopyWithImpl<$Res>;
  $Res call({String name, List<dynamic> value});
}

/// @nodoc
class __$ElasticSearchFilterCopyWithImpl<$Res>
    implements _$ElasticSearchFilterCopyWith<$Res> {
  __$ElasticSearchFilterCopyWithImpl(this._value, this._then);

  final _ElasticSearchFilter _value;
  // ignore: unused_field
  final $Res Function(_ElasticSearchFilter) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticSearchFilterCopyWith<$Res>
    implements _$ElasticSearchFilterCopyWith<$Res> {
  factory _$_ElasticSearchFilterCopyWith(__ElasticSearchFilter value,
          $Res Function(__ElasticSearchFilter) then) =
      __$_ElasticSearchFilterCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<dynamic> value});
}

/// @nodoc
class __$_ElasticSearchFilterCopyWithImpl<$Res>
    extends __$ElasticSearchFilterCopyWithImpl<$Res>
    implements _$_ElasticSearchFilterCopyWith<$Res> {
  __$_ElasticSearchFilterCopyWithImpl(
      __ElasticSearchFilter _value, $Res Function(__ElasticSearchFilter) _then)
      : super(_value, (v) => _then(v as __ElasticSearchFilter));

  @override
  __ElasticSearchFilter get _value => super._value as __ElasticSearchFilter;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(__ElasticSearchFilter(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticSearchFilter implements __ElasticSearchFilter {
  const _$__ElasticSearchFilter({required this.name, required this.value});

  factory _$__ElasticSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticSearchFilterFromJson(json);

  @override

  /// The field from your schema upon which to apply your filter.
  final String name;
  @override

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  final List<dynamic> value;

  @override
  String toString() {
    return '_ElasticSearchFilter(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticSearchFilter &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$_ElasticSearchFilterCopyWith<__ElasticSearchFilter> get copyWith =>
      __$_ElasticSearchFilterCopyWithImpl<__ElasticSearchFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSearchFilterToJson(this);
  }
}

abstract class __ElasticSearchFilter implements _ElasticSearchFilter {
  const factory __ElasticSearchFilter(
      {required String name,
      required List<dynamic> value}) = _$__ElasticSearchFilter;

  factory __ElasticSearchFilter.fromJson(Map<String, dynamic> json) =
      _$__ElasticSearchFilter.fromJson;

  @override

  /// The field from your schema upon which to apply your filter.
  String get name;
  @override

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  List<dynamic> get value;
  @override
  @JsonKey(ignore: true)
  _$_ElasticSearchFilterCopyWith<__ElasticSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchField _$_ElasticSearchFieldFromJson(Map<String, dynamic> json) {
  return __ElasticSearchField.fromJson(json);
}

/// @nodoc
class _$_ElasticSearchFieldTearOff {
  const _$_ElasticSearchFieldTearOff();

  __ElasticSearchField call({required String name, int? weight}) {
    return __ElasticSearchField(
      name: name,
      weight: weight,
    );
  }

  _ElasticSearchField fromJson(Map<String, Object?> json) {
    return _ElasticSearchField.fromJson(json);
  }
}

/// @nodoc
const _$ElasticSearchField = _$_ElasticSearchFieldTearOff();

/// @nodoc
mixin _$_ElasticSearchField {
  /// The name of the field. It must exist within your Engine schema and be of type text.
  String get name => throw _privateConstructorUsedError;

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticSearchFieldCopyWith<_ElasticSearchField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticSearchFieldCopyWith<$Res> {
  factory _$ElasticSearchFieldCopyWith(
          _ElasticSearchField value, $Res Function(_ElasticSearchField) then) =
      __$ElasticSearchFieldCopyWithImpl<$Res>;
  $Res call({String name, int? weight});
}

/// @nodoc
class __$ElasticSearchFieldCopyWithImpl<$Res>
    implements _$ElasticSearchFieldCopyWith<$Res> {
  __$ElasticSearchFieldCopyWithImpl(this._value, this._then);

  final _ElasticSearchField _value;
  // ignore: unused_field
  final $Res Function(_ElasticSearchField) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticSearchFieldCopyWith<$Res>
    implements _$ElasticSearchFieldCopyWith<$Res> {
  factory _$_ElasticSearchFieldCopyWith(__ElasticSearchField value,
          $Res Function(__ElasticSearchField) then) =
      __$_ElasticSearchFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? weight});
}

/// @nodoc
class __$_ElasticSearchFieldCopyWithImpl<$Res>
    extends __$ElasticSearchFieldCopyWithImpl<$Res>
    implements _$_ElasticSearchFieldCopyWith<$Res> {
  __$_ElasticSearchFieldCopyWithImpl(
      __ElasticSearchField _value, $Res Function(__ElasticSearchField) _then)
      : super(_value, (v) => _then(v as __ElasticSearchField));

  @override
  __ElasticSearchField get _value => super._value as __ElasticSearchField;

  @override
  $Res call({
    Object? name = freezed,
    Object? weight = freezed,
  }) {
    return _then(__ElasticSearchField(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticSearchField implements __ElasticSearchField {
  const _$__ElasticSearchField({required this.name, this.weight});

  factory _$__ElasticSearchField.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticSearchFieldFromJson(json);

  @override

  /// The name of the field. It must exist within your Engine schema and be of type text.
  final String name;
  @override

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  final int? weight;

  @override
  String toString() {
    return '_ElasticSearchField(name: $name, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticSearchField &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$_ElasticSearchFieldCopyWith<__ElasticSearchField> get copyWith =>
      __$_ElasticSearchFieldCopyWithImpl<__ElasticSearchField>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSearchFieldToJson(this);
  }
}

abstract class __ElasticSearchField implements _ElasticSearchField {
  const factory __ElasticSearchField({required String name, int? weight}) =
      _$__ElasticSearchField;

  factory __ElasticSearchField.fromJson(Map<String, dynamic> json) =
      _$__ElasticSearchField.fromJson;

  @override

  /// The name of the field. It must exist within your Engine schema and be of type text.
  String get name;
  @override

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  int? get weight;
  @override
  @JsonKey(ignore: true)
  _$_ElasticSearchFieldCopyWith<__ElasticSearchField> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticResultField _$_ElasticResultFieldFromJson(Map<String, dynamic> json) {
  return __ElasticResultField.fromJson(json);
}

/// @nodoc
class _$_ElasticResultFieldTearOff {
  const _$_ElasticResultFieldTearOff();

  __ElasticResultField call(
      {required String name,
      int? rawSize,
      int? snippetSize,
      bool fallback = true}) {
    return __ElasticResultField(
      name: name,
      rawSize: rawSize,
      snippetSize: snippetSize,
      fallback: fallback,
    );
  }

  _ElasticResultField fromJson(Map<String, Object?> json) {
    return _ElasticResultField.fromJson(json);
  }
}

/// @nodoc
const _$ElasticResultField = _$_ElasticResultFieldTearOff();

/// @nodoc
mixin _$_ElasticResultField {
  /// The name of the field. It must exist within your Engine schema and be of type text.
  String get name => throw _privateConstructorUsedError;

  /// Length of the return value.
  /// Must be at least 20; defaults to the entire text field.
  /// If given for a different field type other than text, it will be silently ignored.
  int? get rawSize => throw _privateConstructorUsedError;

  /// Length of the snippet returned.
  /// Must be at least 20; defaults to 100.
  int? get snippetSize => throw _privateConstructorUsedError;

  /// If true, return the raw text field if no snippet is found. If false, only use snippets.
  bool get fallback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticResultFieldCopyWith<_ElasticResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticResultFieldCopyWith<$Res> {
  factory _$ElasticResultFieldCopyWith(
          _ElasticResultField value, $Res Function(_ElasticResultField) then) =
      __$ElasticResultFieldCopyWithImpl<$Res>;
  $Res call({String name, int? rawSize, int? snippetSize, bool fallback});
}

/// @nodoc
class __$ElasticResultFieldCopyWithImpl<$Res>
    implements _$ElasticResultFieldCopyWith<$Res> {
  __$ElasticResultFieldCopyWithImpl(this._value, this._then);

  final _ElasticResultField _value;
  // ignore: unused_field
  final $Res Function(_ElasticResultField) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rawSize = freezed,
    Object? snippetSize = freezed,
    Object? fallback = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rawSize: rawSize == freezed
          ? _value.rawSize
          : rawSize // ignore: cast_nullable_to_non_nullable
              as int?,
      snippetSize: snippetSize == freezed
          ? _value.snippetSize
          : snippetSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fallback: fallback == freezed
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticResultFieldCopyWith<$Res>
    implements _$ElasticResultFieldCopyWith<$Res> {
  factory _$_ElasticResultFieldCopyWith(__ElasticResultField value,
          $Res Function(__ElasticResultField) then) =
      __$_ElasticResultFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? rawSize, int? snippetSize, bool fallback});
}

/// @nodoc
class __$_ElasticResultFieldCopyWithImpl<$Res>
    extends __$ElasticResultFieldCopyWithImpl<$Res>
    implements _$_ElasticResultFieldCopyWith<$Res> {
  __$_ElasticResultFieldCopyWithImpl(
      __ElasticResultField _value, $Res Function(__ElasticResultField) _then)
      : super(_value, (v) => _then(v as __ElasticResultField));

  @override
  __ElasticResultField get _value => super._value as __ElasticResultField;

  @override
  $Res call({
    Object? name = freezed,
    Object? rawSize = freezed,
    Object? snippetSize = freezed,
    Object? fallback = freezed,
  }) {
    return _then(__ElasticResultField(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rawSize: rawSize == freezed
          ? _value.rawSize
          : rawSize // ignore: cast_nullable_to_non_nullable
              as int?,
      snippetSize: snippetSize == freezed
          ? _value.snippetSize
          : snippetSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fallback: fallback == freezed
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticResultField implements __ElasticResultField {
  const _$__ElasticResultField(
      {required this.name,
      this.rawSize,
      this.snippetSize,
      this.fallback = true});

  factory _$__ElasticResultField.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticResultFieldFromJson(json);

  @override

  /// The name of the field. It must exist within your Engine schema and be of type text.
  final String name;
  @override

  /// Length of the return value.
  /// Must be at least 20; defaults to the entire text field.
  /// If given for a different field type other than text, it will be silently ignored.
  final int? rawSize;
  @override

  /// Length of the snippet returned.
  /// Must be at least 20; defaults to 100.
  final int? snippetSize;
  @JsonKey()
  @override

  /// If true, return the raw text field if no snippet is found. If false, only use snippets.
  final bool fallback;

  @override
  String toString() {
    return '_ElasticResultField(name: $name, rawSize: $rawSize, snippetSize: $snippetSize, fallback: $fallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticResultField &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rawSize, rawSize) &&
            const DeepCollectionEquality()
                .equals(other.snippetSize, snippetSize) &&
            const DeepCollectionEquality().equals(other.fallback, fallback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rawSize),
      const DeepCollectionEquality().hash(snippetSize),
      const DeepCollectionEquality().hash(fallback));

  @JsonKey(ignore: true)
  @override
  _$_ElasticResultFieldCopyWith<__ElasticResultField> get copyWith =>
      __$_ElasticResultFieldCopyWithImpl<__ElasticResultField>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticResultFieldToJson(this);
  }
}

abstract class __ElasticResultField implements _ElasticResultField {
  const factory __ElasticResultField(
      {required String name,
      int? rawSize,
      int? snippetSize,
      bool fallback}) = _$__ElasticResultField;

  factory __ElasticResultField.fromJson(Map<String, dynamic> json) =
      _$__ElasticResultField.fromJson;

  @override

  /// The name of the field. It must exist within your Engine schema and be of type text.
  String get name;
  @override

  /// Length of the return value.
  /// Must be at least 20; defaults to the entire text field.
  /// If given for a different field type other than text, it will be silently ignored.
  int? get rawSize;
  @override

  /// Length of the snippet returned.
  /// Must be at least 20; defaults to 100.
  int? get snippetSize;
  @override

  /// If true, return the raw text field if no snippet is found. If false, only use snippets.
  bool get fallback;
  @override
  @JsonKey(ignore: true)
  _$_ElasticResultFieldCopyWith<__ElasticResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticGroup _$_ElasticGroupFromJson(Map<String, dynamic> json) {
  return __ElasticGroup.fromJson(json);
}

/// @nodoc
class _$_ElasticGroupTearOff {
  const _$_ElasticGroupTearOff();

  __ElasticGroup call({required String field, int? size}) {
    return __ElasticGroup(
      field: field,
      size: size,
    );
  }

  _ElasticGroup fromJson(Map<String, Object?> json) {
    return _ElasticGroup.fromJson(json);
  }
}

/// @nodoc
const _$ElasticGroup = _$_ElasticGroupTearOff();

/// @nodoc
mixin _$_ElasticGroup {
  /// Field name to group results on.
  String get field => throw _privateConstructorUsedError;

  /// Number of results to be included in the _group key of the returned document.
  /// Can be between 1 and 10. Defaults to 10.
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticGroupCopyWith<_ElasticGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticGroupCopyWith<$Res> {
  factory _$ElasticGroupCopyWith(
          _ElasticGroup value, $Res Function(_ElasticGroup) then) =
      __$ElasticGroupCopyWithImpl<$Res>;
  $Res call({String field, int? size});
}

/// @nodoc
class __$ElasticGroupCopyWithImpl<$Res>
    implements _$ElasticGroupCopyWith<$Res> {
  __$ElasticGroupCopyWithImpl(this._value, this._then);

  final _ElasticGroup _value;
  // ignore: unused_field
  final $Res Function(_ElasticGroup) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticGroupCopyWith<$Res>
    implements _$ElasticGroupCopyWith<$Res> {
  factory _$_ElasticGroupCopyWith(
          __ElasticGroup value, $Res Function(__ElasticGroup) then) =
      __$_ElasticGroupCopyWithImpl<$Res>;
  @override
  $Res call({String field, int? size});
}

/// @nodoc
class __$_ElasticGroupCopyWithImpl<$Res>
    extends __$ElasticGroupCopyWithImpl<$Res>
    implements _$_ElasticGroupCopyWith<$Res> {
  __$_ElasticGroupCopyWithImpl(
      __ElasticGroup _value, $Res Function(__ElasticGroup) _then)
      : super(_value, (v) => _then(v as __ElasticGroup));

  @override
  __ElasticGroup get _value => super._value as __ElasticGroup;

  @override
  $Res call({
    Object? field = freezed,
    Object? size = freezed,
  }) {
    return _then(__ElasticGroup(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticGroup implements __ElasticGroup {
  const _$__ElasticGroup({required this.field, this.size});

  factory _$__ElasticGroup.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticGroupFromJson(json);

  @override

  /// Field name to group results on.
  final String field;
  @override

  /// Number of results to be included in the _group key of the returned document.
  /// Can be between 1 and 10. Defaults to 10.
  final int? size;

  @override
  String toString() {
    return '_ElasticGroup(field: $field, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticGroup &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$_ElasticGroupCopyWith<__ElasticGroup> get copyWith =>
      __$_ElasticGroupCopyWithImpl<__ElasticGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticGroupToJson(this);
  }
}

abstract class __ElasticGroup implements _ElasticGroup {
  const factory __ElasticGroup({required String field, int? size}) =
      _$__ElasticGroup;

  factory __ElasticGroup.fromJson(Map<String, dynamic> json) =
      _$__ElasticGroup.fromJson;

  @override

  /// Field name to group results on.
  String get field;
  @override

  /// Number of results to be included in the _group key of the returned document.
  /// Can be between 1 and 10. Defaults to 10.
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$_ElasticGroupCopyWith<__ElasticGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSort _$_ElasticSortFromJson(Map<String, dynamic> json) {
  return __ElasticSort.fromJson(json);
}

/// @nodoc
class _$_ElasticSortTearOff {
  const _$_ElasticSortTearOff();

  __ElasticSort call({required String field, bool descending = false}) {
    return __ElasticSort(
      field: field,
      descending: descending,
    );
  }

  _ElasticSort fromJson(Map<String, Object?> json) {
    return _ElasticSort.fromJson(json);
  }
}

/// @nodoc
const _$ElasticSort = _$_ElasticSortTearOff();

/// @nodoc
mixin _$_ElasticSort {
  /// Field name to sort results
  String get field => throw _privateConstructorUsedError;
  bool get descending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticSortCopyWith<_ElasticSort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticSortCopyWith<$Res> {
  factory _$ElasticSortCopyWith(
          _ElasticSort value, $Res Function(_ElasticSort) then) =
      __$ElasticSortCopyWithImpl<$Res>;
  $Res call({String field, bool descending});
}

/// @nodoc
class __$ElasticSortCopyWithImpl<$Res> implements _$ElasticSortCopyWith<$Res> {
  __$ElasticSortCopyWithImpl(this._value, this._then);

  final _ElasticSort _value;
  // ignore: unused_field
  final $Res Function(_ElasticSort) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? descending = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      descending: descending == freezed
          ? _value.descending
          : descending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticSortCopyWith<$Res>
    implements _$ElasticSortCopyWith<$Res> {
  factory _$_ElasticSortCopyWith(
          __ElasticSort value, $Res Function(__ElasticSort) then) =
      __$_ElasticSortCopyWithImpl<$Res>;
  @override
  $Res call({String field, bool descending});
}

/// @nodoc
class __$_ElasticSortCopyWithImpl<$Res> extends __$ElasticSortCopyWithImpl<$Res>
    implements _$_ElasticSortCopyWith<$Res> {
  __$_ElasticSortCopyWithImpl(
      __ElasticSort _value, $Res Function(__ElasticSort) _then)
      : super(_value, (v) => _then(v as __ElasticSort));

  @override
  __ElasticSort get _value => super._value as __ElasticSort;

  @override
  $Res call({
    Object? field = freezed,
    Object? descending = freezed,
  }) {
    return _then(__ElasticSort(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      descending: descending == freezed
          ? _value.descending
          : descending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticSort implements __ElasticSort {
  const _$__ElasticSort({required this.field, this.descending = false});

  factory _$__ElasticSort.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticSortFromJson(json);

  @override

  /// Field name to sort results
  final String field;
  @JsonKey()
  @override
  final bool descending;

  @override
  String toString() {
    return '_ElasticSort(field: $field, descending: $descending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticSort &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality()
                .equals(other.descending, descending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(descending));

  @JsonKey(ignore: true)
  @override
  _$_ElasticSortCopyWith<__ElasticSort> get copyWith =>
      __$_ElasticSortCopyWithImpl<__ElasticSort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSortToJson(this);
  }
}

abstract class __ElasticSort implements _ElasticSort {
  const factory __ElasticSort({required String field, bool descending}) =
      _$__ElasticSort;

  factory __ElasticSort.fromJson(Map<String, dynamic> json) =
      _$__ElasticSort.fromJson;

  @override

  /// Field name to sort results
  String get field;
  @override
  bool get descending;
  @override
  @JsonKey(ignore: true)
  _$_ElasticSortCopyWith<__ElasticSort> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticRange _$_ElasticRangeFromJson(Map<String, dynamic> json) {
  return __ElasticRange.fromJson(json);
}

/// @nodoc
class _$_ElasticRangeTearOff {
  const _$_ElasticRangeTearOff();

  __ElasticRange call({String? name, Object? from, Object? to}) {
    return __ElasticRange(
      name: name,
      from: from,
      to: to,
    );
  }

  _ElasticRange fromJson(Map<String, Object?> json) {
    return _ElasticRange.fromJson(json);
  }
}

/// @nodoc
const _$ElasticRange = _$_ElasticRangeTearOff();

/// @nodoc
mixin _$_ElasticRange {
  String? get name => throw _privateConstructorUsedError;
  Object? get from => throw _privateConstructorUsedError;
  Object? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticRangeCopyWith<_ElasticRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticRangeCopyWith<$Res> {
  factory _$ElasticRangeCopyWith(
          _ElasticRange value, $Res Function(_ElasticRange) then) =
      __$ElasticRangeCopyWithImpl<$Res>;
  $Res call({String? name, Object? from, Object? to});
}

/// @nodoc
class __$ElasticRangeCopyWithImpl<$Res>
    implements _$ElasticRangeCopyWith<$Res> {
  __$ElasticRangeCopyWithImpl(this._value, this._then);

  final _ElasticRange _value;
  // ignore: unused_field
  final $Res Function(_ElasticRange) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed ? _value.from : from,
      to: to == freezed ? _value.to : to,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticRangeCopyWith<$Res>
    implements _$ElasticRangeCopyWith<$Res> {
  factory _$_ElasticRangeCopyWith(
          __ElasticRange value, $Res Function(__ElasticRange) then) =
      __$_ElasticRangeCopyWithImpl<$Res>;
  @override
  $Res call({String? name, Object? from, Object? to});
}

/// @nodoc
class __$_ElasticRangeCopyWithImpl<$Res>
    extends __$ElasticRangeCopyWithImpl<$Res>
    implements _$_ElasticRangeCopyWith<$Res> {
  __$_ElasticRangeCopyWithImpl(
      __ElasticRange _value, $Res Function(__ElasticRange) _then)
      : super(_value, (v) => _then(v as __ElasticRange));

  @override
  __ElasticRange get _value => super._value as __ElasticRange;

  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(__ElasticRange(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed ? _value.from : from,
      to: to == freezed ? _value.to : to,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticRange implements __ElasticRange {
  const _$__ElasticRange({this.name, this.from, this.to})
      : assert(from != null || to != null,
            'You must provide at least `from` or `to` to create an _ElasticRange object.'),
        assert(from != null && (from is double || from is Date),
            '`from` must be a double or a Date'),
        assert(to != null && (to is double || to is Date),
            '`from` must be a double or a Date');

  factory _$__ElasticRange.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticRangeFromJson(json);

  @override
  final String? name;
  @override
  final Object? from;
  @override
  final Object? to;

  @override
  String toString() {
    return '_ElasticRange(name: $name, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticRange &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$_ElasticRangeCopyWith<__ElasticRange> get copyWith =>
      __$_ElasticRangeCopyWithImpl<__ElasticRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticRangeToJson(this);
  }
}

abstract class __ElasticRange implements _ElasticRange {
  const factory __ElasticRange({String? name, Object? from, Object? to}) =
      _$__ElasticRange;

  factory __ElasticRange.fromJson(Map<String, dynamic> json) =
      _$__ElasticRange.fromJson;

  @override
  String? get name;
  @override
  Object? get from;
  @override
  Object? get to;
  @override
  @JsonKey(ignore: true)
  _$_ElasticRangeCopyWith<__ElasticRange> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticValueFacet _$_ElasticValueFacetFromJson(Map<String, dynamic> json) {
  return __ElasticValueFacet.fromJson(json);
}

/// @nodoc
class _$_ElasticValueFacetTearOff {
  const _$_ElasticValueFacetTearOff();

  __ElasticValueFacet call(
      {@protected String type = "value", String? name, double? size}) {
    return __ElasticValueFacet(
      type: type,
      name: name,
      size: size,
    );
  }

  _ElasticValueFacet fromJson(Map<String, Object?> json) {
    return _ElasticValueFacet.fromJson(json);
  }
}

/// @nodoc
const _$ElasticValueFacet = _$_ElasticValueFacetTearOff();

/// @nodoc
mixin _$_ElasticValueFacet {
  @protected
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticValueFacetCopyWith<_ElasticValueFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticValueFacetCopyWith<$Res> {
  factory _$ElasticValueFacetCopyWith(
          _ElasticValueFacet value, $Res Function(_ElasticValueFacet) then) =
      __$ElasticValueFacetCopyWithImpl<$Res>;
  $Res call({@protected String type, String? name, double? size});
}

/// @nodoc
class __$ElasticValueFacetCopyWithImpl<$Res>
    implements _$ElasticValueFacetCopyWith<$Res> {
  __$ElasticValueFacetCopyWithImpl(this._value, this._then);

  final _ElasticValueFacet _value;
  // ignore: unused_field
  final $Res Function(_ElasticValueFacet) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticValueFacetCopyWith<$Res>
    implements _$ElasticValueFacetCopyWith<$Res> {
  factory _$_ElasticValueFacetCopyWith(
          __ElasticValueFacet value, $Res Function(__ElasticValueFacet) then) =
      __$_ElasticValueFacetCopyWithImpl<$Res>;
  @override
  $Res call({@protected String type, String? name, double? size});
}

/// @nodoc
class __$_ElasticValueFacetCopyWithImpl<$Res>
    extends __$ElasticValueFacetCopyWithImpl<$Res>
    implements _$_ElasticValueFacetCopyWith<$Res> {
  __$_ElasticValueFacetCopyWithImpl(
      __ElasticValueFacet _value, $Res Function(__ElasticValueFacet) _then)
      : super(_value, (v) => _then(v as __ElasticValueFacet));

  @override
  __ElasticValueFacet get _value => super._value as __ElasticValueFacet;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(__ElasticValueFacet(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticValueFacet implements __ElasticValueFacet {
  const _$__ElasticValueFacet(
      {@protected this.type = "value", this.name, this.size})
      : assert(size == null || (size != null && size >= 1 && size <= 250),
            'The number of facets must be greater than or equal to 1 and less than or equal to 250.');

  factory _$__ElasticValueFacet.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticValueFacetFromJson(json);

  @JsonKey()
  @override
  @protected
  final String type;
  @override
  final String? name;
  @override
  final double? size;

  @override
  String toString() {
    return '_ElasticValueFacet(type: $type, name: $name, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticValueFacet &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$_ElasticValueFacetCopyWith<__ElasticValueFacet> get copyWith =>
      __$_ElasticValueFacetCopyWithImpl<__ElasticValueFacet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticValueFacetToJson(this);
  }
}

abstract class __ElasticValueFacet implements _ElasticValueFacet {
  const factory __ElasticValueFacet(
      {@protected String type,
      String? name,
      double? size}) = _$__ElasticValueFacet;

  factory __ElasticValueFacet.fromJson(Map<String, dynamic> json) =
      _$__ElasticValueFacet.fromJson;

  @override
  @protected
  String get type;
  @override
  String? get name;
  @override
  double? get size;
  @override
  @JsonKey(ignore: true)
  _$_ElasticValueFacetCopyWith<__ElasticValueFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticRangeFacet _$_ElasticRangeFacetFromJson(Map<String, dynamic> json) {
  return __ElasticRangeFacet.fromJson(json);
}

/// @nodoc
class _$_ElasticRangeFacetTearOff {
  const _$_ElasticRangeFacetTearOff();

  __ElasticRangeFacet call(
      {@protected String type = "range",
      String? name,
      required List<_ElasticRange> ranges}) {
    return __ElasticRangeFacet(
      type: type,
      name: name,
      ranges: ranges,
    );
  }

  _ElasticRangeFacet fromJson(Map<String, Object?> json) {
    return _ElasticRangeFacet.fromJson(json);
  }
}

/// @nodoc
const _$ElasticRangeFacet = _$_ElasticRangeFacetTearOff();

/// @nodoc
mixin _$_ElasticRangeFacet {
  @protected
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<_ElasticRange> get ranges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticRangeFacetCopyWith<_ElasticRangeFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticRangeFacetCopyWith<$Res> {
  factory _$ElasticRangeFacetCopyWith(
          _ElasticRangeFacet value, $Res Function(_ElasticRangeFacet) then) =
      __$ElasticRangeFacetCopyWithImpl<$Res>;
  $Res call({@protected String type, String? name, List<_ElasticRange> ranges});
}

/// @nodoc
class __$ElasticRangeFacetCopyWithImpl<$Res>
    implements _$ElasticRangeFacetCopyWith<$Res> {
  __$ElasticRangeFacetCopyWithImpl(this._value, this._then);

  final _ElasticRangeFacet _value;
  // ignore: unused_field
  final $Res Function(_ElasticRangeFacet) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? ranges = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ranges: ranges == freezed
          ? _value.ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as List<_ElasticRange>,
    ));
  }
}

/// @nodoc
abstract class _$_ElasticRangeFacetCopyWith<$Res>
    implements _$ElasticRangeFacetCopyWith<$Res> {
  factory _$_ElasticRangeFacetCopyWith(
          __ElasticRangeFacet value, $Res Function(__ElasticRangeFacet) then) =
      __$_ElasticRangeFacetCopyWithImpl<$Res>;
  @override
  $Res call({@protected String type, String? name, List<_ElasticRange> ranges});
}

/// @nodoc
class __$_ElasticRangeFacetCopyWithImpl<$Res>
    extends __$ElasticRangeFacetCopyWithImpl<$Res>
    implements _$_ElasticRangeFacetCopyWith<$Res> {
  __$_ElasticRangeFacetCopyWithImpl(
      __ElasticRangeFacet _value, $Res Function(__ElasticRangeFacet) _then)
      : super(_value, (v) => _then(v as __ElasticRangeFacet));

  @override
  __ElasticRangeFacet get _value => super._value as __ElasticRangeFacet;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? ranges = freezed,
  }) {
    return _then(__ElasticRangeFacet(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ranges: ranges == freezed
          ? _value.ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as List<_ElasticRange>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticRangeFacet implements __ElasticRangeFacet {
  const _$__ElasticRangeFacet(
      {@protected this.type = "range", this.name, required this.ranges});

  factory _$__ElasticRangeFacet.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticRangeFacetFromJson(json);

  @JsonKey()
  @override
  @protected
  final String type;
  @override
  final String? name;
  @override
  final List<_ElasticRange> ranges;

  @override
  String toString() {
    return '_ElasticRangeFacet(type: $type, name: $name, ranges: $ranges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ElasticRangeFacet &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.ranges, ranges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ranges));

  @JsonKey(ignore: true)
  @override
  _$_ElasticRangeFacetCopyWith<__ElasticRangeFacet> get copyWith =>
      __$_ElasticRangeFacetCopyWithImpl<__ElasticRangeFacet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticRangeFacetToJson(this);
  }
}

abstract class __ElasticRangeFacet implements _ElasticRangeFacet {
  const factory __ElasticRangeFacet(
      {@protected String type,
      String? name,
      required List<_ElasticRange> ranges}) = _$__ElasticRangeFacet;

  factory __ElasticRangeFacet.fromJson(Map<String, dynamic> json) =
      _$__ElasticRangeFacet.fromJson;

  @override
  @protected
  String get type;
  @override
  String? get name;
  @override
  List<_ElasticRange> get ranges;
  @override
  @JsonKey(ignore: true)
  _$_ElasticRangeFacetCopyWith<__ElasticRangeFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResponse _$ElasticResponseFromJson(Map<String, dynamic> json) {
  return _ElasticResponse.fromJson(json);
}

/// @nodoc
class _$ElasticResponseTearOff {
  const _$ElasticResponseTearOff();

  _ElasticResponse call(
      {required ElasticResponseMeta meta,
      required List<ElasticResult> results}) {
    return _ElasticResponse(
      meta: meta,
      results: results,
    );
  }

  ElasticResponse fromJson(Map<String, Object?> json) {
    return ElasticResponse.fromJson(json);
  }
}

/// @nodoc
const $ElasticResponse = _$ElasticResponseTearOff();

/// @nodoc
mixin _$ElasticResponse {
  /// Object delimiting the results meta data.
  ElasticResponseMeta get meta => throw _privateConstructorUsedError;

  /// Array of results matching the search.
  List<ElasticResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticResponseCopyWith<ElasticResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticResponseCopyWith<$Res> {
  factory $ElasticResponseCopyWith(
          ElasticResponse value, $Res Function(ElasticResponse) then) =
      _$ElasticResponseCopyWithImpl<$Res>;
  $Res call({ElasticResponseMeta meta, List<ElasticResult> results});

  $ElasticResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ElasticResponseCopyWithImpl<$Res>
    implements $ElasticResponseCopyWith<$Res> {
  _$ElasticResponseCopyWithImpl(this._value, this._then);

  final ElasticResponse _value;
  // ignore: unused_field
  final $Res Function(ElasticResponse) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMeta,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>,
    ));
  }

  @override
  $ElasticResponseMetaCopyWith<$Res> get meta {
    return $ElasticResponseMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$ElasticResponseCopyWith<$Res>
    implements $ElasticResponseCopyWith<$Res> {
  factory _$ElasticResponseCopyWith(
          _ElasticResponse value, $Res Function(_ElasticResponse) then) =
      __$ElasticResponseCopyWithImpl<$Res>;
  @override
  $Res call({ElasticResponseMeta meta, List<ElasticResult> results});

  @override
  $ElasticResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$ElasticResponseCopyWithImpl<$Res>
    extends _$ElasticResponseCopyWithImpl<$Res>
    implements _$ElasticResponseCopyWith<$Res> {
  __$ElasticResponseCopyWithImpl(
      _ElasticResponse _value, $Res Function(_ElasticResponse) _then)
      : super(_value, (v) => _then(v as _ElasticResponse));

  @override
  _ElasticResponse get _value => super._value as _ElasticResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? results = freezed,
  }) {
    return _then(_ElasticResponse(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMeta,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResponse implements _ElasticResponse {
  _$_ElasticResponse({required this.meta, required this.results});

  factory _$_ElasticResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResponseFromJson(json);

  @override

  /// Object delimiting the results meta data.
  final ElasticResponseMeta meta;
  @override

  /// Array of results matching the search.
  final List<ElasticResult> results;

  @override
  String toString() {
    return 'ElasticResponse(meta: $meta, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResponse &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ElasticResponseCopyWith<_ElasticResponse> get copyWith =>
      __$ElasticResponseCopyWithImpl<_ElasticResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResponseToJson(this);
  }
}

abstract class _ElasticResponse implements ElasticResponse {
  factory _ElasticResponse(
      {required ElasticResponseMeta meta,
      required List<ElasticResult> results}) = _$_ElasticResponse;

  factory _ElasticResponse.fromJson(Map<String, dynamic> json) =
      _$_ElasticResponse.fromJson;

  @override

  /// Object delimiting the results meta data.
  ElasticResponseMeta get meta;
  @override

  /// Array of results matching the search.
  List<ElasticResult> get results;
  @override
  @JsonKey(ignore: true)
  _$ElasticResponseCopyWith<_ElasticResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResponseMeta _$ElasticResponseMetaFromJson(Map<String, dynamic> json) {
  return _ElasticResponseMeta.fromJson(json);
}

/// @nodoc
class _$ElasticResponseMetaTearOff {
  const _$ElasticResponseMetaTearOff();

  _ElasticResponseMeta call(
      {@JsonKey(name: "request_id") required String requestId,
      required List<dynamic> warnings,
      required List<dynamic> alerts,
      required ElasticResponseMetaPage page}) {
    return _ElasticResponseMeta(
      requestId: requestId,
      warnings: warnings,
      alerts: alerts,
      page: page,
    );
  }

  ElasticResponseMeta fromJson(Map<String, Object?> json) {
    return ElasticResponseMeta.fromJson(json);
  }
}

/// @nodoc
const $ElasticResponseMeta = _$ElasticResponseMetaTearOff();

/// @nodoc
mixin _$ElasticResponseMeta {
  /// String ID representing the request. Guaranteed to be unique.
  @JsonKey(name: "request_id")
  String get requestId => throw _privateConstructorUsedError;

  /// Array of warnings for the query.
  ///
  /// Included with error responses and success responses, so inspect all responses for warnings.
  List<dynamic> get warnings => throw _privateConstructorUsedError;

  /// Array of alerts for your deployment.
  ///
  /// Included with error responses and success responses, so inspect all responses for alerts.
  List<dynamic> get alerts => throw _privateConstructorUsedError;

  /// Object delimiting the pagination meta data.
  ElasticResponseMetaPage get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticResponseMetaCopyWith<ElasticResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticResponseMetaCopyWith<$Res> {
  factory $ElasticResponseMetaCopyWith(
          ElasticResponseMeta value, $Res Function(ElasticResponseMeta) then) =
      _$ElasticResponseMetaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "request_id") String requestId,
      List<dynamic> warnings,
      List<dynamic> alerts,
      ElasticResponseMetaPage page});

  $ElasticResponseMetaPageCopyWith<$Res> get page;
}

/// @nodoc
class _$ElasticResponseMetaCopyWithImpl<$Res>
    implements $ElasticResponseMetaCopyWith<$Res> {
  _$ElasticResponseMetaCopyWithImpl(this._value, this._then);

  final ElasticResponseMeta _value;
  // ignore: unused_field
  final $Res Function(ElasticResponseMeta) _then;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? warnings = freezed,
    Object? alerts = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      warnings: warnings == freezed
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      alerts: alerts == freezed
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMetaPage,
    ));
  }

  @override
  $ElasticResponseMetaPageCopyWith<$Res> get page {
    return $ElasticResponseMetaPageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
abstract class _$ElasticResponseMetaCopyWith<$Res>
    implements $ElasticResponseMetaCopyWith<$Res> {
  factory _$ElasticResponseMetaCopyWith(_ElasticResponseMeta value,
          $Res Function(_ElasticResponseMeta) then) =
      __$ElasticResponseMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "request_id") String requestId,
      List<dynamic> warnings,
      List<dynamic> alerts,
      ElasticResponseMetaPage page});

  @override
  $ElasticResponseMetaPageCopyWith<$Res> get page;
}

/// @nodoc
class __$ElasticResponseMetaCopyWithImpl<$Res>
    extends _$ElasticResponseMetaCopyWithImpl<$Res>
    implements _$ElasticResponseMetaCopyWith<$Res> {
  __$ElasticResponseMetaCopyWithImpl(
      _ElasticResponseMeta _value, $Res Function(_ElasticResponseMeta) _then)
      : super(_value, (v) => _then(v as _ElasticResponseMeta));

  @override
  _ElasticResponseMeta get _value => super._value as _ElasticResponseMeta;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? warnings = freezed,
    Object? alerts = freezed,
    Object? page = freezed,
  }) {
    return _then(_ElasticResponseMeta(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      warnings: warnings == freezed
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      alerts: alerts == freezed
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMetaPage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResponseMeta implements _ElasticResponseMeta {
  _$_ElasticResponseMeta(
      {@JsonKey(name: "request_id") required this.requestId,
      required this.warnings,
      required this.alerts,
      required this.page});

  factory _$_ElasticResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResponseMetaFromJson(json);

  @override

  /// String ID representing the request. Guaranteed to be unique.
  @JsonKey(name: "request_id")
  final String requestId;
  @override

  /// Array of warnings for the query.
  ///
  /// Included with error responses and success responses, so inspect all responses for warnings.
  final List<dynamic> warnings;
  @override

  /// Array of alerts for your deployment.
  ///
  /// Included with error responses and success responses, so inspect all responses for alerts.
  final List<dynamic> alerts;
  @override

  /// Object delimiting the pagination meta data.
  final ElasticResponseMetaPage page;

  @override
  String toString() {
    return 'ElasticResponseMeta(requestId: $requestId, warnings: $warnings, alerts: $alerts, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResponseMeta &&
            const DeepCollectionEquality().equals(other.requestId, requestId) &&
            const DeepCollectionEquality().equals(other.warnings, warnings) &&
            const DeepCollectionEquality().equals(other.alerts, alerts) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestId),
      const DeepCollectionEquality().hash(warnings),
      const DeepCollectionEquality().hash(alerts),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$ElasticResponseMetaCopyWith<_ElasticResponseMeta> get copyWith =>
      __$ElasticResponseMetaCopyWithImpl<_ElasticResponseMeta>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResponseMetaToJson(this);
  }
}

abstract class _ElasticResponseMeta implements ElasticResponseMeta {
  factory _ElasticResponseMeta(
      {@JsonKey(name: "request_id") required String requestId,
      required List<dynamic> warnings,
      required List<dynamic> alerts,
      required ElasticResponseMetaPage page}) = _$_ElasticResponseMeta;

  factory _ElasticResponseMeta.fromJson(Map<String, dynamic> json) =
      _$_ElasticResponseMeta.fromJson;

  @override

  /// String ID representing the request. Guaranteed to be unique.
  @JsonKey(name: "request_id")
  String get requestId;
  @override

  /// Array of warnings for the query.
  ///
  /// Included with error responses and success responses, so inspect all responses for warnings.
  List<dynamic> get warnings;
  @override

  /// Array of alerts for your deployment.
  ///
  /// Included with error responses and success responses, so inspect all responses for alerts.
  List<dynamic> get alerts;
  @override

  /// Object delimiting the pagination meta data.
  ElasticResponseMetaPage get page;
  @override
  @JsonKey(ignore: true)
  _$ElasticResponseMetaCopyWith<_ElasticResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResponseMetaPage _$ElasticResponseMetaPageFromJson(
    Map<String, dynamic> json) {
  return _ElasticResponseMetaPage.fromJson(json);
}

/// @nodoc
class _$ElasticResponseMetaPageTearOff {
  const _$ElasticResponseMetaPageTearOff();

  _ElasticResponseMetaPage call(
      {required int current,
      required int size,
      @JsonKey(name: "total_pages") required int totalPages,
      @JsonKey(name: "total_results") required int totalResults}) {
    return _ElasticResponseMetaPage(
      current: current,
      size: size,
      totalPages: totalPages,
      totalResults: totalResults,
    );
  }

  ElasticResponseMetaPage fromJson(Map<String, Object?> json) {
    return ElasticResponseMetaPage.fromJson(json);
  }
}

/// @nodoc
const $ElasticResponseMetaPage = _$ElasticResponseMetaPageTearOff();

/// @nodoc
mixin _$ElasticResponseMetaPage {
  /// Number representing the current page of results.
  int get current => throw _privateConstructorUsedError;

  /// Number representing the results per page.
  int get size => throw _privateConstructorUsedError;

  /// Number representing the total pages of results.
  /// Value is 0 when you paginate beyond 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;

  /// Number representing the total results across all pages.
  ///
  /// The values 0 through 9999 are exact counts.
  ///
  /// The value 10000 is a pseudo keyword representing greater than or equal to 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-display-total]
  /// and [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-count-documents]
  @JsonKey(name: "total_results")
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticResponseMetaPageCopyWith<ElasticResponseMetaPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticResponseMetaPageCopyWith<$Res> {
  factory $ElasticResponseMetaPageCopyWith(ElasticResponseMetaPage value,
          $Res Function(ElasticResponseMetaPage) then) =
      _$ElasticResponseMetaPageCopyWithImpl<$Res>;
  $Res call(
      {int current,
      int size,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class _$ElasticResponseMetaPageCopyWithImpl<$Res>
    implements $ElasticResponseMetaPageCopyWith<$Res> {
  _$ElasticResponseMetaPageCopyWithImpl(this._value, this._then);

  final ElasticResponseMetaPage _value;
  // ignore: unused_field
  final $Res Function(ElasticResponseMetaPage) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? size = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ElasticResponseMetaPageCopyWith<$Res>
    implements $ElasticResponseMetaPageCopyWith<$Res> {
  factory _$ElasticResponseMetaPageCopyWith(_ElasticResponseMetaPage value,
          $Res Function(_ElasticResponseMetaPage) then) =
      __$ElasticResponseMetaPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int current,
      int size,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class __$ElasticResponseMetaPageCopyWithImpl<$Res>
    extends _$ElasticResponseMetaPageCopyWithImpl<$Res>
    implements _$ElasticResponseMetaPageCopyWith<$Res> {
  __$ElasticResponseMetaPageCopyWithImpl(_ElasticResponseMetaPage _value,
      $Res Function(_ElasticResponseMetaPage) _then)
      : super(_value, (v) => _then(v as _ElasticResponseMetaPage));

  @override
  _ElasticResponseMetaPage get _value =>
      super._value as _ElasticResponseMetaPage;

  @override
  $Res call({
    Object? current = freezed,
    Object? size = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_ElasticResponseMetaPage(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResponseMetaPage implements _ElasticResponseMetaPage {
  _$_ElasticResponseMetaPage(
      {required this.current,
      required this.size,
      @JsonKey(name: "total_pages") required this.totalPages,
      @JsonKey(name: "total_results") required this.totalResults});

  factory _$_ElasticResponseMetaPage.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResponseMetaPageFromJson(json);

  @override

  /// Number representing the current page of results.
  final int current;
  @override

  /// Number representing the results per page.
  final int size;
  @override

  /// Number representing the total pages of results.
  /// Value is 0 when you paginate beyond 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
  @JsonKey(name: "total_pages")
  final int totalPages;
  @override

  /// Number representing the total results across all pages.
  ///
  /// The values 0 through 9999 are exact counts.
  ///
  /// The value 10000 is a pseudo keyword representing greater than or equal to 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-display-total]
  /// and [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-count-documents]
  @JsonKey(name: "total_results")
  final int totalResults;

  @override
  String toString() {
    return 'ElasticResponseMetaPage(current: $current, size: $size, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResponseMetaPage &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$ElasticResponseMetaPageCopyWith<_ElasticResponseMetaPage> get copyWith =>
      __$ElasticResponseMetaPageCopyWithImpl<_ElasticResponseMetaPage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResponseMetaPageToJson(this);
  }
}

abstract class _ElasticResponseMetaPage implements ElasticResponseMetaPage {
  factory _ElasticResponseMetaPage(
          {required int current,
          required int size,
          @JsonKey(name: "total_pages") required int totalPages,
          @JsonKey(name: "total_results") required int totalResults}) =
      _$_ElasticResponseMetaPage;

  factory _ElasticResponseMetaPage.fromJson(Map<String, dynamic> json) =
      _$_ElasticResponseMetaPage.fromJson;

  @override

  /// Number representing the current page of results.
  int get current;
  @override

  /// Number representing the results per page.
  int get size;
  @override

  /// Number representing the total pages of results.
  /// Value is 0 when you paginate beyond 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override

  /// Number representing the total results across all pages.
  ///
  /// The values 0 through 9999 are exact counts.
  ///
  /// The value 10000 is a pseudo keyword representing greater than or equal to 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-display-total]
  /// and [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-count-documents]
  @JsonKey(name: "total_results")
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$ElasticResponseMetaPageCopyWith<_ElasticResponseMetaPage> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResultMeta _$ElasticResultMetaFromJson(Map<String, dynamic> json) {
  return _ElasticResultMeta.fromJson(json);
}

/// @nodoc
class _$ElasticResultMetaTearOff {
  const _$ElasticResultMetaTearOff();

  _ElasticResultMeta call({double? score}) {
    return _ElasticResultMeta(
      score: score,
    );
  }

  ElasticResultMeta fromJson(Map<String, Object?> json) {
    return ElasticResultMeta.fromJson(json);
  }
}

/// @nodoc
const $ElasticResultMeta = _$ElasticResultMetaTearOff();

/// @nodoc
mixin _$ElasticResultMeta {
  /// The relevance of the result
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticResultMetaCopyWith<ElasticResultMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticResultMetaCopyWith<$Res> {
  factory $ElasticResultMetaCopyWith(
          ElasticResultMeta value, $Res Function(ElasticResultMeta) then) =
      _$ElasticResultMetaCopyWithImpl<$Res>;
  $Res call({double? score});
}

/// @nodoc
class _$ElasticResultMetaCopyWithImpl<$Res>
    implements $ElasticResultMetaCopyWith<$Res> {
  _$ElasticResultMetaCopyWithImpl(this._value, this._then);

  final ElasticResultMeta _value;
  // ignore: unused_field
  final $Res Function(ElasticResultMeta) _then;

  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$ElasticResultMetaCopyWith<$Res>
    implements $ElasticResultMetaCopyWith<$Res> {
  factory _$ElasticResultMetaCopyWith(
          _ElasticResultMeta value, $Res Function(_ElasticResultMeta) then) =
      __$ElasticResultMetaCopyWithImpl<$Res>;
  @override
  $Res call({double? score});
}

/// @nodoc
class __$ElasticResultMetaCopyWithImpl<$Res>
    extends _$ElasticResultMetaCopyWithImpl<$Res>
    implements _$ElasticResultMetaCopyWith<$Res> {
  __$ElasticResultMetaCopyWithImpl(
      _ElasticResultMeta _value, $Res Function(_ElasticResultMeta) _then)
      : super(_value, (v) => _then(v as _ElasticResultMeta));

  @override
  _ElasticResultMeta get _value => super._value as _ElasticResultMeta;

  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_ElasticResultMeta(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResultMeta implements _ElasticResultMeta {
  _$_ElasticResultMeta({this.score});

  factory _$_ElasticResultMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultMetaFromJson(json);

  @override

  /// The relevance of the result
  final double? score;

  @override
  String toString() {
    return 'ElasticResultMeta(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResultMeta &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$ElasticResultMetaCopyWith<_ElasticResultMeta> get copyWith =>
      __$ElasticResultMetaCopyWithImpl<_ElasticResultMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultMetaToJson(this);
  }
}

abstract class _ElasticResultMeta implements ElasticResultMeta {
  factory _ElasticResultMeta({double? score}) = _$_ElasticResultMeta;

  factory _ElasticResultMeta.fromJson(Map<String, dynamic> json) =
      _$_ElasticResultMeta.fromJson;

  @override

  /// The relevance of the result
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$ElasticResultMetaCopyWith<_ElasticResultMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResult _$ElasticResultFromJson(Map<String, dynamic> json) {
  return _ElasticResult.fromJson(json);
}

/// @nodoc
class _$ElasticResultTearOff {
  const _$ElasticResultTearOff();

  _ElasticResult call(
      {Map<String, dynamic>? data,
      Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") required ElasticResultMeta meta,
      @JsonKey(name: "_group") List<ElasticResult>? group,
      @JsonKey(name: "_group_key") String? groupKey}) {
    return _ElasticResult(
      data: data,
      snippets: snippets,
      meta: meta,
      group: group,
      groupKey: groupKey,
    );
  }

  ElasticResult fromJson(Map<String, Object?> json) {
    return ElasticResult.fromJson(json);
  }
}

/// @nodoc
const $ElasticResult = _$ElasticResultTearOff();

/// @nodoc
mixin _$ElasticResult {
  /// A map of the raw data of the document, containing the fields
  /// requested in the [ElasticResultField] passed to the query
  ///
  /// You must handle the result of this [Map] on your side, please check
  /// the example of the package to learn more about this.
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// A map of the snippets, please check the documentation of
  /// [ElasticResultSnippet] to learn more.
  Map<String, ElasticResultSnippet>? get snippets =>
      throw _privateConstructorUsedError;

  /// An object containing information about a given result
  @JsonKey(name: "_meta")
  ElasticResultMeta get meta => throw _privateConstructorUsedError;

  /// An array of the [ElasticResult] related to this result
  /// if a group has been set on the query
  @JsonKey(name: "_group")
  List<ElasticResult>? get group => throw _privateConstructorUsedError;

  /// The value on which these elements have been grouped
  /// if a group has been set on the query
  @JsonKey(name: "_group_key")
  String? get groupKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticResultCopyWith<ElasticResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticResultCopyWith<$Res> {
  factory $ElasticResultCopyWith(
          ElasticResult value, $Res Function(ElasticResult) then) =
      _$ElasticResultCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic>? data,
      Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") ElasticResultMeta meta,
      @JsonKey(name: "_group") List<ElasticResult>? group,
      @JsonKey(name: "_group_key") String? groupKey});

  $ElasticResultMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ElasticResultCopyWithImpl<$Res>
    implements $ElasticResultCopyWith<$Res> {
  _$ElasticResultCopyWithImpl(this._value, this._then);

  final ElasticResult _value;
  // ignore: unused_field
  final $Res Function(ElasticResult) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? snippets = freezed,
    Object? meta = freezed,
    Object? group = freezed,
    Object? groupKey = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      snippets: snippets == freezed
          ? _value.snippets
          : snippets // ignore: cast_nullable_to_non_nullable
              as Map<String, ElasticResultSnippet>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResultMeta,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>?,
      groupKey: groupKey == freezed
          ? _value.groupKey
          : groupKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ElasticResultMetaCopyWith<$Res> get meta {
    return $ElasticResultMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$ElasticResultCopyWith<$Res>
    implements $ElasticResultCopyWith<$Res> {
  factory _$ElasticResultCopyWith(
          _ElasticResult value, $Res Function(_ElasticResult) then) =
      __$ElasticResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic>? data,
      Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") ElasticResultMeta meta,
      @JsonKey(name: "_group") List<ElasticResult>? group,
      @JsonKey(name: "_group_key") String? groupKey});

  @override
  $ElasticResultMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$ElasticResultCopyWithImpl<$Res>
    extends _$ElasticResultCopyWithImpl<$Res>
    implements _$ElasticResultCopyWith<$Res> {
  __$ElasticResultCopyWithImpl(
      _ElasticResult _value, $Res Function(_ElasticResult) _then)
      : super(_value, (v) => _then(v as _ElasticResult));

  @override
  _ElasticResult get _value => super._value as _ElasticResult;

  @override
  $Res call({
    Object? data = freezed,
    Object? snippets = freezed,
    Object? meta = freezed,
    Object? group = freezed,
    Object? groupKey = freezed,
  }) {
    return _then(_ElasticResult(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      snippets: snippets == freezed
          ? _value.snippets
          : snippets // ignore: cast_nullable_to_non_nullable
              as Map<String, ElasticResultSnippet>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResultMeta,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>?,
      groupKey: groupKey == freezed
          ? _value.groupKey
          : groupKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResult extends _ElasticResult {
  _$_ElasticResult(
      {this.data,
      this.snippets,
      @JsonKey(name: "_meta") required this.meta,
      @JsonKey(name: "_group") this.group,
      @JsonKey(name: "_group_key") this.groupKey})
      : super._();

  factory _$_ElasticResult.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultFromJson(json);

  @override

  /// A map of the raw data of the document, containing the fields
  /// requested in the [ElasticResultField] passed to the query
  ///
  /// You must handle the result of this [Map] on your side, please check
  /// the example of the package to learn more about this.
  final Map<String, dynamic>? data;
  @override

  /// A map of the snippets, please check the documentation of
  /// [ElasticResultSnippet] to learn more.
  final Map<String, ElasticResultSnippet>? snippets;
  @override

  /// An object containing information about a given result
  @JsonKey(name: "_meta")
  final ElasticResultMeta meta;
  @override

  /// An array of the [ElasticResult] related to this result
  /// if a group has been set on the query
  @JsonKey(name: "_group")
  final List<ElasticResult>? group;
  @override

  /// The value on which these elements have been grouped
  /// if a group has been set on the query
  @JsonKey(name: "_group_key")
  final String? groupKey;

  @override
  String toString() {
    return 'ElasticResult(data: $data, snippets: $snippets, meta: $meta, group: $group, groupKey: $groupKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResult &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.snippets, snippets) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(other.groupKey, groupKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(snippets),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(groupKey));

  @JsonKey(ignore: true)
  @override
  _$ElasticResultCopyWith<_ElasticResult> get copyWith =>
      __$ElasticResultCopyWithImpl<_ElasticResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultToJson(this);
  }
}

abstract class _ElasticResult extends ElasticResult {
  factory _ElasticResult(
      {Map<String, dynamic>? data,
      Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") required ElasticResultMeta meta,
      @JsonKey(name: "_group") List<ElasticResult>? group,
      @JsonKey(name: "_group_key") String? groupKey}) = _$_ElasticResult;
  _ElasticResult._() : super._();

  factory _ElasticResult.fromJson(Map<String, dynamic> json) =
      _$_ElasticResult.fromJson;

  @override

  /// A map of the raw data of the document, containing the fields
  /// requested in the [ElasticResultField] passed to the query
  ///
  /// You must handle the result of this [Map] on your side, please check
  /// the example of the package to learn more about this.
  Map<String, dynamic>? get data;
  @override

  /// A map of the snippets, please check the documentation of
  /// [ElasticResultSnippet] to learn more.
  Map<String, ElasticResultSnippet>? get snippets;
  @override

  /// An object containing information about a given result
  @JsonKey(name: "_meta")
  ElasticResultMeta get meta;
  @override

  /// An array of the [ElasticResult] related to this result
  /// if a group has been set on the query
  @JsonKey(name: "_group")
  List<ElasticResult>? get group;
  @override

  /// The value on which these elements have been grouped
  /// if a group has been set on the query
  @JsonKey(name: "_group_key")
  String? get groupKey;
  @override
  @JsonKey(ignore: true)
  _$ElasticResultCopyWith<_ElasticResult> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResultSnippet _$ElasticResultSnippetFromJson(Map<String, dynamic> json) {
  return _ElasticResultSnippet.fromJson(json);
}

/// @nodoc
class _$ElasticResultSnippetTearOff {
  const _$ElasticResultSnippetTearOff();

  _ElasticResultSnippet call(
      {required String fullText,
      required List<String> textParts,
      required List<String> highlights}) {
    return _ElasticResultSnippet(
      fullText: fullText,
      textParts: textParts,
      highlights: highlights,
    );
  }

  ElasticResultSnippet fromJson(Map<String, Object?> json) {
    return ElasticResultSnippet.fromJson(json);
  }
}

/// @nodoc
const $ElasticResultSnippet = _$ElasticResultSnippetTearOff();

/// @nodoc
mixin _$ElasticResultSnippet {
  /// The full snippet, matching the size provided in the [ElasticResultField]
  /// passed to the query.
  String get fullText => throw _privateConstructorUsedError;

  /// The snippet splitted in parts around the matched query.
  /// For example, if the document contains the string "The weather is beautiful in Florida today"
  /// and your query is "beautiful", this array will contain:
  /// "The weather is ", "beautiful", " in Florida today".
  /// This feature intends to build [RichText] on your app to highlight the query
  /// in the result.
  List<String> get textParts => throw _privateConstructorUsedError;

  /// The words matching the query. They can be many because even if you are querying
  /// something like "car", the result can also contain "cars". So we need to
  /// return all the words Elastic decided to match in order to highlight all the matching words.
  List<String> get highlights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticResultSnippetCopyWith<ElasticResultSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticResultSnippetCopyWith<$Res> {
  factory $ElasticResultSnippetCopyWith(ElasticResultSnippet value,
          $Res Function(ElasticResultSnippet) then) =
      _$ElasticResultSnippetCopyWithImpl<$Res>;
  $Res call({String fullText, List<String> textParts, List<String> highlights});
}

/// @nodoc
class _$ElasticResultSnippetCopyWithImpl<$Res>
    implements $ElasticResultSnippetCopyWith<$Res> {
  _$ElasticResultSnippetCopyWithImpl(this._value, this._then);

  final ElasticResultSnippet _value;
  // ignore: unused_field
  final $Res Function(ElasticResultSnippet) _then;

  @override
  $Res call({
    Object? fullText = freezed,
    Object? textParts = freezed,
    Object? highlights = freezed,
  }) {
    return _then(_value.copyWith(
      fullText: fullText == freezed
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      textParts: textParts == freezed
          ? _value.textParts
          : textParts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: highlights == freezed
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ElasticResultSnippetCopyWith<$Res>
    implements $ElasticResultSnippetCopyWith<$Res> {
  factory _$ElasticResultSnippetCopyWith(_ElasticResultSnippet value,
          $Res Function(_ElasticResultSnippet) then) =
      __$ElasticResultSnippetCopyWithImpl<$Res>;
  @override
  $Res call({String fullText, List<String> textParts, List<String> highlights});
}

/// @nodoc
class __$ElasticResultSnippetCopyWithImpl<$Res>
    extends _$ElasticResultSnippetCopyWithImpl<$Res>
    implements _$ElasticResultSnippetCopyWith<$Res> {
  __$ElasticResultSnippetCopyWithImpl(
      _ElasticResultSnippet _value, $Res Function(_ElasticResultSnippet) _then)
      : super(_value, (v) => _then(v as _ElasticResultSnippet));

  @override
  _ElasticResultSnippet get _value => super._value as _ElasticResultSnippet;

  @override
  $Res call({
    Object? fullText = freezed,
    Object? textParts = freezed,
    Object? highlights = freezed,
  }) {
    return _then(_ElasticResultSnippet(
      fullText: fullText == freezed
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      textParts: textParts == freezed
          ? _value.textParts
          : textParts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: highlights == freezed
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResultSnippet implements _ElasticResultSnippet {
  _$_ElasticResultSnippet(
      {required this.fullText,
      required this.textParts,
      required this.highlights});

  factory _$_ElasticResultSnippet.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultSnippetFromJson(json);

  @override

  /// The full snippet, matching the size provided in the [ElasticResultField]
  /// passed to the query.
  final String fullText;
  @override

  /// The snippet splitted in parts around the matched query.
  /// For example, if the document contains the string "The weather is beautiful in Florida today"
  /// and your query is "beautiful", this array will contain:
  /// "The weather is ", "beautiful", " in Florida today".
  /// This feature intends to build [RichText] on your app to highlight the query
  /// in the result.
  final List<String> textParts;
  @override

  /// The words matching the query. They can be many because even if you are querying
  /// something like "car", the result can also contain "cars". So we need to
  /// return all the words Elastic decided to match in order to highlight all the matching words.
  final List<String> highlights;

  @override
  String toString() {
    return 'ElasticResultSnippet(fullText: $fullText, textParts: $textParts, highlights: $highlights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResultSnippet &&
            const DeepCollectionEquality().equals(other.fullText, fullText) &&
            const DeepCollectionEquality().equals(other.textParts, textParts) &&
            const DeepCollectionEquality()
                .equals(other.highlights, highlights));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullText),
      const DeepCollectionEquality().hash(textParts),
      const DeepCollectionEquality().hash(highlights));

  @JsonKey(ignore: true)
  @override
  _$ElasticResultSnippetCopyWith<_ElasticResultSnippet> get copyWith =>
      __$ElasticResultSnippetCopyWithImpl<_ElasticResultSnippet>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultSnippetToJson(this);
  }
}

abstract class _ElasticResultSnippet implements ElasticResultSnippet {
  factory _ElasticResultSnippet(
      {required String fullText,
      required List<String> textParts,
      required List<String> highlights}) = _$_ElasticResultSnippet;

  factory _ElasticResultSnippet.fromJson(Map<String, dynamic> json) =
      _$_ElasticResultSnippet.fromJson;

  @override

  /// The full snippet, matching the size provided in the [ElasticResultField]
  /// passed to the query.
  String get fullText;
  @override

  /// The snippet splitted in parts around the matched query.
  /// For example, if the document contains the string "The weather is beautiful in Florida today"
  /// and your query is "beautiful", this array will contain:
  /// "The weather is ", "beautiful", " in Florida today".
  /// This feature intends to build [RichText] on your app to highlight the query
  /// in the result.
  List<String> get textParts;
  @override

  /// The words matching the query. They can be many because even if you are querying
  /// something like "car", the result can also contain "cars". So we need to
  /// return all the words Elastic decided to match in order to highlight all the matching words.
  List<String> get highlights;
  @override
  @JsonKey(ignore: true)
  _$ElasticResultSnippetCopyWith<_ElasticResultSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}
