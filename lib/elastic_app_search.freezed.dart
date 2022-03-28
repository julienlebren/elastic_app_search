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
      @JsonKey(name: "precision")
          int? queryPrecision,
      @JsonKey(name: "page")
          ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ElasticResultField>? resultFields = const []}) {
    return _ElasticQuery(
      engine: engine,
      query: query,
      queryPrecision: queryPrecision,
      searchPage: searchPage,
      filters: filters,
      searchFields: searchFields,
      resultFields: resultFields,
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
  @JsonKey(name: "precision")
  int? get queryPrecision => throw _privateConstructorUsedError;

  /// Object to delimit the pagination parameters.
  @JsonKey(name: "page")
  ElasticSearchPage? get searchPage => throw _privateConstructorUsedError;

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @_ElasticSearchFiltersConverter()
  List<ElasticSearchFilter>? get filters => throw _privateConstructorUsedError;

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<ElasticSearchField>? get searchFields =>
      throw _privateConstructorUsedError;

  /// Object to define the fields which appear in search results and how their values are rendered.
  @_ElasticResultFieldsConverter()
  @JsonKey(name: "result_fields")
  List<ElasticResultField>? get resultFields =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: "precision")
          int? queryPrecision,
      @JsonKey(name: "page")
          ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ElasticResultField>? resultFields});

  $ElasticSearchPageCopyWith<$Res>? get searchPage;
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
    Object? queryPrecision = freezed,
    Object? searchPage = freezed,
    Object? filters = freezed,
    Object? searchFields = freezed,
    Object? resultFields = freezed,
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
      queryPrecision: queryPrecision == freezed
          ? _value.queryPrecision
          : queryPrecision // ignore: cast_nullable_to_non_nullable
              as int?,
      searchPage: searchPage == freezed
          ? _value.searchPage
          : searchPage // ignore: cast_nullable_to_non_nullable
              as ElasticSearchPage?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<ElasticSearchFilter>?,
      searchFields: searchFields == freezed
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<ElasticSearchField>?,
      resultFields: resultFields == freezed
          ? _value.resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<ElasticResultField>?,
    ));
  }

  @override
  $ElasticSearchPageCopyWith<$Res>? get searchPage {
    if (_value.searchPage == null) {
      return null;
    }

    return $ElasticSearchPageCopyWith<$Res>(_value.searchPage!, (value) {
      return _then(_value.copyWith(searchPage: value));
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
      @JsonKey(name: "precision")
          int? queryPrecision,
      @JsonKey(name: "page")
          ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ElasticResultField>? resultFields});

  @override
  $ElasticSearchPageCopyWith<$Res>? get searchPage;
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
    Object? queryPrecision = freezed,
    Object? searchPage = freezed,
    Object? filters = freezed,
    Object? searchFields = freezed,
    Object? resultFields = freezed,
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
      queryPrecision: queryPrecision == freezed
          ? _value.queryPrecision
          : queryPrecision // ignore: cast_nullable_to_non_nullable
              as int?,
      searchPage: searchPage == freezed
          ? _value.searchPage
          : searchPage // ignore: cast_nullable_to_non_nullable
              as ElasticSearchPage?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<ElasticSearchFilter>?,
      searchFields: searchFields == freezed
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<ElasticSearchField>?,
      resultFields: resultFields == freezed
          ? _value.resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<ElasticResultField>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticQuery implements _ElasticQuery {
  const _$_ElasticQuery(
      {@JsonKey(ignore: true)
          this.engine,
      required this.query,
      @JsonKey(name: "precision")
          this.queryPrecision,
      @JsonKey(name: "page")
          this.searchPage,
      @_ElasticSearchFiltersConverter()
          this.filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          this.searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          this.resultFields = const []})
      : assert(engine != null, 'An engine is required to build a query.'),
        assert(
            queryPrecision != null &&
                (queryPrecision < 1 || queryPrecision > 11),
            'The value of the precision parameter must be an integer between 1 and 11, inclusive.');

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
  @JsonKey(name: "precision")
  final int? queryPrecision;
  @override

  /// Object to delimit the pagination parameters.
  @JsonKey(name: "page")
  final ElasticSearchPage? searchPage;
  @override

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @_ElasticSearchFiltersConverter()
  final List<ElasticSearchFilter>? filters;
  @override

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  final List<ElasticSearchField>? searchFields;
  @override

  /// Object to define the fields which appear in search results and how their values are rendered.
  @_ElasticResultFieldsConverter()
  @JsonKey(name: "result_fields")
  final List<ElasticResultField>? resultFields;

  @override
  String toString() {
    return 'ElasticQuery(engine: $engine, query: $query, queryPrecision: $queryPrecision, searchPage: $searchPage, filters: $filters, searchFields: $searchFields, resultFields: $resultFields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticQuery &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.queryPrecision, queryPrecision) &&
            const DeepCollectionEquality()
                .equals(other.searchPage, searchPage) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality()
                .equals(other.searchFields, searchFields) &&
            const DeepCollectionEquality()
                .equals(other.resultFields, resultFields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(engine),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(queryPrecision),
      const DeepCollectionEquality().hash(searchPage),
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(searchFields),
      const DeepCollectionEquality().hash(resultFields));

  @JsonKey(ignore: true)
  @override
  _$ElasticQueryCopyWith<_ElasticQuery> get copyWith =>
      __$ElasticQueryCopyWithImpl<_ElasticQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticQueryToJson(this);
  }
}

abstract class _ElasticQuery implements ElasticQuery {
  const factory _ElasticQuery(
      {@JsonKey(ignore: true)
          ElasticEngine? engine,
      required String query,
      @JsonKey(name: "precision")
          int? queryPrecision,
      @JsonKey(name: "page")
          ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          List<ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ElasticResultField>? resultFields}) = _$_ElasticQuery;

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
  @JsonKey(name: "precision")
  int? get queryPrecision;
  @override

  /// Object to delimit the pagination parameters.
  @JsonKey(name: "page")
  ElasticSearchPage? get searchPage;
  @override

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @_ElasticSearchFiltersConverter()
  List<ElasticSearchFilter>? get filters;
  @override

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<ElasticSearchField>? get searchFields;
  @override

  /// Object to define the fields which appear in search results and how their values are rendered.
  @_ElasticResultFieldsConverter()
  @JsonKey(name: "result_fields")
  List<ElasticResultField>? get resultFields;
  @override
  @JsonKey(ignore: true)
  _$ElasticQueryCopyWith<_ElasticQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticSearchPage _$ElasticSearchPageFromJson(Map<String, dynamic> json) {
  return _ElasticSearchPage.fromJson(json);
}

/// @nodoc
class _$ElasticSearchPageTearOff {
  const _$ElasticSearchPageTearOff();

  _ElasticSearchPage call({int? size = 10, int? current = 1}) {
    return _ElasticSearchPage(
      size: size,
      current: current,
    );
  }

  ElasticSearchPage fromJson(Map<String, Object?> json) {
    return ElasticSearchPage.fromJson(json);
  }
}

/// @nodoc
const $ElasticSearchPage = _$ElasticSearchPageTearOff();

/// @nodoc
mixin _$ElasticSearchPage {
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
  $ElasticSearchPageCopyWith<ElasticSearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticSearchPageCopyWith<$Res> {
  factory $ElasticSearchPageCopyWith(
          ElasticSearchPage value, $Res Function(ElasticSearchPage) then) =
      _$ElasticSearchPageCopyWithImpl<$Res>;
  $Res call({int? size, int? current});
}

/// @nodoc
class _$ElasticSearchPageCopyWithImpl<$Res>
    implements $ElasticSearchPageCopyWith<$Res> {
  _$ElasticSearchPageCopyWithImpl(this._value, this._then);

  final ElasticSearchPage _value;
  // ignore: unused_field
  final $Res Function(ElasticSearchPage) _then;

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
abstract class _$ElasticSearchPageCopyWith<$Res>
    implements $ElasticSearchPageCopyWith<$Res> {
  factory _$ElasticSearchPageCopyWith(
          _ElasticSearchPage value, $Res Function(_ElasticSearchPage) then) =
      __$ElasticSearchPageCopyWithImpl<$Res>;
  @override
  $Res call({int? size, int? current});
}

/// @nodoc
class __$ElasticSearchPageCopyWithImpl<$Res>
    extends _$ElasticSearchPageCopyWithImpl<$Res>
    implements _$ElasticSearchPageCopyWith<$Res> {
  __$ElasticSearchPageCopyWithImpl(
      _ElasticSearchPage _value, $Res Function(_ElasticSearchPage) _then)
      : super(_value, (v) => _then(v as _ElasticSearchPage));

  @override
  _ElasticSearchPage get _value => super._value as _ElasticSearchPage;

  @override
  $Res call({
    Object? size = freezed,
    Object? current = freezed,
  }) {
    return _then(_ElasticSearchPage(
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
class _$_ElasticSearchPage implements _ElasticSearchPage {
  const _$_ElasticSearchPage({this.size = 10, this.current = 1})
      : assert(size != null && (size < 1 || size > 1000),
            'The number of results per page must be greater than or equal to 1 and less than or equal to 1000.'),
        assert(current != null && (current < 1 || current > 100),
            'The current must be greater than or equal to 1 and less than or equal to 100.');

  factory _$_ElasticSearchPage.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticSearchPageFromJson(json);

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
    return 'ElasticSearchPage(size: $size, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticSearchPage &&
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
  _$ElasticSearchPageCopyWith<_ElasticSearchPage> get copyWith =>
      __$ElasticSearchPageCopyWithImpl<_ElasticSearchPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticSearchPageToJson(this);
  }
}

abstract class _ElasticSearchPage implements ElasticSearchPage {
  const factory _ElasticSearchPage({int? size, int? current}) =
      _$_ElasticSearchPage;

  factory _ElasticSearchPage.fromJson(Map<String, dynamic> json) =
      _$_ElasticSearchPage.fromJson;

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
  _$ElasticSearchPageCopyWith<_ElasticSearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticSearchFilter _$ElasticSearchFilterFromJson(Map<String, dynamic> json) {
  return _ElasticSearchFilter.fromJson(json);
}

/// @nodoc
class _$ElasticSearchFilterTearOff {
  const _$ElasticSearchFilterTearOff();

  _ElasticSearchFilter call(
      {required String name, required List<dynamic> value}) {
    return _ElasticSearchFilter(
      name: name,
      value: value,
    );
  }

  ElasticSearchFilter fromJson(Map<String, Object?> json) {
    return ElasticSearchFilter.fromJson(json);
  }
}

/// @nodoc
const $ElasticSearchFilter = _$ElasticSearchFilterTearOff();

/// @nodoc
mixin _$ElasticSearchFilter {
  /// The field from your schema upon which to apply your filter.
  String get name => throw _privateConstructorUsedError;

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  List<dynamic> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticSearchFilterCopyWith<ElasticSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticSearchFilterCopyWith<$Res> {
  factory $ElasticSearchFilterCopyWith(
          ElasticSearchFilter value, $Res Function(ElasticSearchFilter) then) =
      _$ElasticSearchFilterCopyWithImpl<$Res>;
  $Res call({String name, List<dynamic> value});
}

/// @nodoc
class _$ElasticSearchFilterCopyWithImpl<$Res>
    implements $ElasticSearchFilterCopyWith<$Res> {
  _$ElasticSearchFilterCopyWithImpl(this._value, this._then);

  final ElasticSearchFilter _value;
  // ignore: unused_field
  final $Res Function(ElasticSearchFilter) _then;

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
abstract class _$ElasticSearchFilterCopyWith<$Res>
    implements $ElasticSearchFilterCopyWith<$Res> {
  factory _$ElasticSearchFilterCopyWith(_ElasticSearchFilter value,
          $Res Function(_ElasticSearchFilter) then) =
      __$ElasticSearchFilterCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<dynamic> value});
}

/// @nodoc
class __$ElasticSearchFilterCopyWithImpl<$Res>
    extends _$ElasticSearchFilterCopyWithImpl<$Res>
    implements _$ElasticSearchFilterCopyWith<$Res> {
  __$ElasticSearchFilterCopyWithImpl(
      _ElasticSearchFilter _value, $Res Function(_ElasticSearchFilter) _then)
      : super(_value, (v) => _then(v as _ElasticSearchFilter));

  @override
  _ElasticSearchFilter get _value => super._value as _ElasticSearchFilter;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_ElasticSearchFilter(
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
class _$_ElasticSearchFilter implements _ElasticSearchFilter {
  const _$_ElasticSearchFilter({required this.name, required this.value});

  factory _$_ElasticSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticSearchFilterFromJson(json);

  @override

  /// The field from your schema upon which to apply your filter.
  final String name;
  @override

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  final List<dynamic> value;

  @override
  String toString() {
    return 'ElasticSearchFilter(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticSearchFilter &&
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
  _$ElasticSearchFilterCopyWith<_ElasticSearchFilter> get copyWith =>
      __$ElasticSearchFilterCopyWithImpl<_ElasticSearchFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticSearchFilterToJson(this);
  }
}

abstract class _ElasticSearchFilter implements ElasticSearchFilter {
  const factory _ElasticSearchFilter(
      {required String name,
      required List<dynamic> value}) = _$_ElasticSearchFilter;

  factory _ElasticSearchFilter.fromJson(Map<String, dynamic> json) =
      _$_ElasticSearchFilter.fromJson;

  @override

  /// The field from your schema upon which to apply your filter.
  String get name;
  @override

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  List<dynamic> get value;
  @override
  @JsonKey(ignore: true)
  _$ElasticSearchFilterCopyWith<_ElasticSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticSearchField _$ElasticSearchFieldFromJson(Map<String, dynamic> json) {
  return _ElasticSearchField.fromJson(json);
}

/// @nodoc
class _$ElasticSearchFieldTearOff {
  const _$ElasticSearchFieldTearOff();

  _ElasticSearchField call({required String name, int? weight}) {
    return _ElasticSearchField(
      name: name,
      weight: weight,
    );
  }

  ElasticSearchField fromJson(Map<String, Object?> json) {
    return ElasticSearchField.fromJson(json);
  }
}

/// @nodoc
const $ElasticSearchField = _$ElasticSearchFieldTearOff();

/// @nodoc
mixin _$ElasticSearchField {
  /// The name of the field. It must exist within your Engine schema and be of type text.
  String get name => throw _privateConstructorUsedError;

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticSearchFieldCopyWith<ElasticSearchField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticSearchFieldCopyWith<$Res> {
  factory $ElasticSearchFieldCopyWith(
          ElasticSearchField value, $Res Function(ElasticSearchField) then) =
      _$ElasticSearchFieldCopyWithImpl<$Res>;
  $Res call({String name, int? weight});
}

/// @nodoc
class _$ElasticSearchFieldCopyWithImpl<$Res>
    implements $ElasticSearchFieldCopyWith<$Res> {
  _$ElasticSearchFieldCopyWithImpl(this._value, this._then);

  final ElasticSearchField _value;
  // ignore: unused_field
  final $Res Function(ElasticSearchField) _then;

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
abstract class _$ElasticSearchFieldCopyWith<$Res>
    implements $ElasticSearchFieldCopyWith<$Res> {
  factory _$ElasticSearchFieldCopyWith(
          _ElasticSearchField value, $Res Function(_ElasticSearchField) then) =
      __$ElasticSearchFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? weight});
}

/// @nodoc
class __$ElasticSearchFieldCopyWithImpl<$Res>
    extends _$ElasticSearchFieldCopyWithImpl<$Res>
    implements _$ElasticSearchFieldCopyWith<$Res> {
  __$ElasticSearchFieldCopyWithImpl(
      _ElasticSearchField _value, $Res Function(_ElasticSearchField) _then)
      : super(_value, (v) => _then(v as _ElasticSearchField));

  @override
  _ElasticSearchField get _value => super._value as _ElasticSearchField;

  @override
  $Res call({
    Object? name = freezed,
    Object? weight = freezed,
  }) {
    return _then(_ElasticSearchField(
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
class _$_ElasticSearchField implements _ElasticSearchField {
  const _$_ElasticSearchField({required this.name, this.weight});

  factory _$_ElasticSearchField.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticSearchFieldFromJson(json);

  @override

  /// The name of the field. It must exist within your Engine schema and be of type text.
  final String name;
  @override

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  final int? weight;

  @override
  String toString() {
    return 'ElasticSearchField(name: $name, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticSearchField &&
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
  _$ElasticSearchFieldCopyWith<_ElasticSearchField> get copyWith =>
      __$ElasticSearchFieldCopyWithImpl<_ElasticSearchField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticSearchFieldToJson(this);
  }
}

abstract class _ElasticSearchField implements ElasticSearchField {
  const factory _ElasticSearchField({required String name, int? weight}) =
      _$_ElasticSearchField;

  factory _ElasticSearchField.fromJson(Map<String, dynamic> json) =
      _$_ElasticSearchField.fromJson;

  @override

  /// The name of the field. It must exist within your Engine schema and be of type text.
  String get name;
  @override

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  int? get weight;
  @override
  @JsonKey(ignore: true)
  _$ElasticSearchFieldCopyWith<_ElasticSearchField> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResultField _$ElasticResultFieldFromJson(Map<String, dynamic> json) {
  return _ElasticResultField.fromJson(json);
}

/// @nodoc
class _$ElasticResultFieldTearOff {
  const _$ElasticResultFieldTearOff();

  _ElasticResultField call(
      {required String name,
      int? rawSize,
      int? snippetSize,
      bool fallback = true}) {
    return _ElasticResultField(
      name: name,
      rawSize: rawSize,
      snippetSize: snippetSize,
      fallback: fallback,
    );
  }

  ElasticResultField fromJson(Map<String, Object?> json) {
    return ElasticResultField.fromJson(json);
  }
}

/// @nodoc
const $ElasticResultField = _$ElasticResultFieldTearOff();

/// @nodoc
mixin _$ElasticResultField {
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
  $ElasticResultFieldCopyWith<ElasticResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticResultFieldCopyWith<$Res> {
  factory $ElasticResultFieldCopyWith(
          ElasticResultField value, $Res Function(ElasticResultField) then) =
      _$ElasticResultFieldCopyWithImpl<$Res>;
  $Res call({String name, int? rawSize, int? snippetSize, bool fallback});
}

/// @nodoc
class _$ElasticResultFieldCopyWithImpl<$Res>
    implements $ElasticResultFieldCopyWith<$Res> {
  _$ElasticResultFieldCopyWithImpl(this._value, this._then);

  final ElasticResultField _value;
  // ignore: unused_field
  final $Res Function(ElasticResultField) _then;

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
abstract class _$ElasticResultFieldCopyWith<$Res>
    implements $ElasticResultFieldCopyWith<$Res> {
  factory _$ElasticResultFieldCopyWith(
          _ElasticResultField value, $Res Function(_ElasticResultField) then) =
      __$ElasticResultFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? rawSize, int? snippetSize, bool fallback});
}

/// @nodoc
class __$ElasticResultFieldCopyWithImpl<$Res>
    extends _$ElasticResultFieldCopyWithImpl<$Res>
    implements _$ElasticResultFieldCopyWith<$Res> {
  __$ElasticResultFieldCopyWithImpl(
      _ElasticResultField _value, $Res Function(_ElasticResultField) _then)
      : super(_value, (v) => _then(v as _ElasticResultField));

  @override
  _ElasticResultField get _value => super._value as _ElasticResultField;

  @override
  $Res call({
    Object? name = freezed,
    Object? rawSize = freezed,
    Object? snippetSize = freezed,
    Object? fallback = freezed,
  }) {
    return _then(_ElasticResultField(
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
class _$_ElasticResultField implements _ElasticResultField {
  const _$_ElasticResultField(
      {required this.name,
      this.rawSize,
      this.snippetSize,
      this.fallback = true})
      : assert(
            rawSize != null && rawSize < 20, 'Raw size must be at least 20.'),
        assert(snippetSize != null && snippetSize < 20,
            'Raw size must be at least 20.');

  factory _$_ElasticResultField.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultFieldFromJson(json);

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
    return 'ElasticResultField(name: $name, rawSize: $rawSize, snippetSize: $snippetSize, fallback: $fallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResultField &&
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
  _$ElasticResultFieldCopyWith<_ElasticResultField> get copyWith =>
      __$ElasticResultFieldCopyWithImpl<_ElasticResultField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultFieldToJson(this);
  }
}

abstract class _ElasticResultField implements ElasticResultField {
  const factory _ElasticResultField(
      {required String name,
      int? rawSize,
      int? snippetSize,
      bool fallback}) = _$_ElasticResultField;

  factory _ElasticResultField.fromJson(Map<String, dynamic> json) =
      _$_ElasticResultField.fromJson;

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
  _$ElasticResultFieldCopyWith<_ElasticResultField> get copyWith =>
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

  _ElasticResultMeta call(
      {required String id, required String engine, required double score}) {
    return _ElasticResultMeta(
      id: id,
      engine: engine,
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
  /// The document ID
  String get id => throw _privateConstructorUsedError;

  /// The engine name
  String get engine => throw _privateConstructorUsedError;

  /// The relevance of the result
  double get score => throw _privateConstructorUsedError;

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
  $Res call({String id, String engine, double score});
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
    Object? id = freezed,
    Object? engine = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call({String id, String engine, double score});
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
    Object? id = freezed,
    Object? engine = freezed,
    Object? score = freezed,
  }) {
    return _then(_ElasticResultMeta(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResultMeta implements _ElasticResultMeta {
  _$_ElasticResultMeta(
      {required this.id, required this.engine, required this.score});

  factory _$_ElasticResultMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultMetaFromJson(json);

  @override

  /// The document ID
  final String id;
  @override

  /// The engine name
  final String engine;
  @override

  /// The relevance of the result
  final double score;

  @override
  String toString() {
    return 'ElasticResultMeta(id: $id, engine: $engine, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResultMeta &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(engine),
      const DeepCollectionEquality().hash(score));

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
  factory _ElasticResultMeta(
      {required String id,
      required String engine,
      required double score}) = _$_ElasticResultMeta;

  factory _ElasticResultMeta.fromJson(Map<String, dynamic> json) =
      _$_ElasticResultMeta.fromJson;

  @override

  /// The document ID
  String get id;
  @override

  /// The engine name
  String get engine;
  @override

  /// The relevance of the result
  double get score;
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
      @JsonKey(name: "_meta") required ElasticResultMeta meta}) {
    return _ElasticResult(
      data: data,
      snippets: snippets,
      meta: meta,
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
      @JsonKey(name: "_meta") ElasticResultMeta meta});

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
      @JsonKey(name: "_meta") ElasticResultMeta meta});

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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResult implements _ElasticResult {
  _$_ElasticResult(
      {this.data, this.snippets, @JsonKey(name: "_meta") required this.meta});

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
  String toString() {
    return 'ElasticResult(data: $data, snippets: $snippets, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElasticResult &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.snippets, snippets) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(snippets),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$ElasticResultCopyWith<_ElasticResult> get copyWith =>
      __$ElasticResultCopyWithImpl<_ElasticResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultToJson(this);
  }
}

abstract class _ElasticResult implements ElasticResult {
  factory _ElasticResult(
          {Map<String, dynamic>? data,
          Map<String, ElasticResultSnippet>? snippets,
          @JsonKey(name: "_meta") required ElasticResultMeta meta}) =
      _$_ElasticResult;

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
