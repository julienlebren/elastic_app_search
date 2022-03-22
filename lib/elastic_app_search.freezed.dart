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

Query _$QueryFromJson(Map<String, dynamic> json) {
  return _Query.fromJson(json);
}

/// @nodoc
class _$QueryTearOff {
  const _$QueryTearOff();

  _Query call(
      {@JsonKey(ignore: true)
          Engine? engine,
      required String query,
      SearchPage? page,
      List<Map<String, String>>? sort,
      Map<String, String>? group,
      @SearchFiltersConverter()
          List<SearchFilter>? filters,
      @SearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<SearchField>? searchFields,
      @ResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ResultField>? resultFields = const []}) {
    return _Query(
      engine: engine,
      query: query,
      page: page,
      sort: sort,
      group: group,
      filters: filters,
      searchFields: searchFields,
      resultFields: resultFields,
    );
  }

  Query fromJson(Map<String, Object?> json) {
    return Query.fromJson(json);
  }
}

/// @nodoc
const $Query = _$QueryTearOff();

/// @nodoc
mixin _$Query {
  @JsonKey(ignore: true)
  Engine? get engine => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  SearchPage? get page => throw _privateConstructorUsedError;
  List<Map<String, String>>? get sort => throw _privateConstructorUsedError;
  Map<String, String>? get group => throw _privateConstructorUsedError;
  @SearchFiltersConverter()
  List<SearchFilter>? get filters => throw _privateConstructorUsedError;
  @SearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<SearchField>? get searchFields => throw _privateConstructorUsedError;
  @ResultFieldsConverter()
  @JsonKey(name: "result_fields")
  List<ResultField>? get resultFields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryCopyWith<Query> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryCopyWith<$Res> {
  factory $QueryCopyWith(Query value, $Res Function(Query) then) =
      _$QueryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          Engine? engine,
      String query,
      SearchPage? page,
      List<Map<String, String>>? sort,
      Map<String, String>? group,
      @SearchFiltersConverter()
          List<SearchFilter>? filters,
      @SearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<SearchField>? searchFields,
      @ResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ResultField>? resultFields});

  $SearchPageCopyWith<$Res>? get page;
}

/// @nodoc
class _$QueryCopyWithImpl<$Res> implements $QueryCopyWith<$Res> {
  _$QueryCopyWithImpl(this._value, this._then);

  final Query _value;
  // ignore: unused_field
  final $Res Function(Query) _then;

  @override
  $Res call({
    Object? engine = freezed,
    Object? query = freezed,
    Object? page = freezed,
    Object? sort = freezed,
    Object? group = freezed,
    Object? filters = freezed,
    Object? searchFields = freezed,
    Object? resultFields = freezed,
  }) {
    return _then(_value.copyWith(
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Engine?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as SearchPage?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<SearchFilter>?,
      searchFields: searchFields == freezed
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<SearchField>?,
      resultFields: resultFields == freezed
          ? _value.resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<ResultField>?,
    ));
  }

  @override
  $SearchPageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $SearchPageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
abstract class _$QueryCopyWith<$Res> implements $QueryCopyWith<$Res> {
  factory _$QueryCopyWith(_Query value, $Res Function(_Query) then) =
      __$QueryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          Engine? engine,
      String query,
      SearchPage? page,
      List<Map<String, String>>? sort,
      Map<String, String>? group,
      @SearchFiltersConverter()
          List<SearchFilter>? filters,
      @SearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<SearchField>? searchFields,
      @ResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ResultField>? resultFields});

  @override
  $SearchPageCopyWith<$Res>? get page;
}

/// @nodoc
class __$QueryCopyWithImpl<$Res> extends _$QueryCopyWithImpl<$Res>
    implements _$QueryCopyWith<$Res> {
  __$QueryCopyWithImpl(_Query _value, $Res Function(_Query) _then)
      : super(_value, (v) => _then(v as _Query));

  @override
  _Query get _value => super._value as _Query;

  @override
  $Res call({
    Object? engine = freezed,
    Object? query = freezed,
    Object? page = freezed,
    Object? sort = freezed,
    Object? group = freezed,
    Object? filters = freezed,
    Object? searchFields = freezed,
    Object? resultFields = freezed,
  }) {
    return _then(_Query(
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Engine?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as SearchPage?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<SearchFilter>?,
      searchFields: searchFields == freezed
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<SearchField>?,
      resultFields: resultFields == freezed
          ? _value.resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<ResultField>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Query implements _Query {
  const _$_Query(
      {@JsonKey(ignore: true)
          this.engine,
      required this.query,
      this.page,
      this.sort,
      this.group,
      @SearchFiltersConverter()
          this.filters,
      @SearchFieldsConverter()
      @JsonKey(name: "search_fields")
          this.searchFields,
      @ResultFieldsConverter()
      @JsonKey(name: "result_fields")
          this.resultFields = const []})
      : assert(engine != null, 'An engine is required to build a query');

  factory _$_Query.fromJson(Map<String, dynamic> json) =>
      _$$_QueryFromJson(json);

  @override
  @JsonKey(ignore: true)
  final Engine? engine;
  @override
  final String query;
  @override
  final SearchPage? page;
  @override
  final List<Map<String, String>>? sort;
  @override
  final Map<String, String>? group;
  @override
  @SearchFiltersConverter()
  final List<SearchFilter>? filters;
  @override
  @SearchFieldsConverter()
  @JsonKey(name: "search_fields")
  final List<SearchField>? searchFields;
  @override
  @ResultFieldsConverter()
  @JsonKey(name: "result_fields")
  final List<ResultField>? resultFields;

  @override
  String toString() {
    return 'Query(engine: $engine, query: $query, page: $page, sort: $sort, group: $group, filters: $filters, searchFields: $searchFields, resultFields: $resultFields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Query &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.sort, sort) &&
            const DeepCollectionEquality().equals(other.group, group) &&
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
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(sort),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(searchFields),
      const DeepCollectionEquality().hash(resultFields));

  @JsonKey(ignore: true)
  @override
  _$QueryCopyWith<_Query> get copyWith =>
      __$QueryCopyWithImpl<_Query>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryToJson(this);
  }
}

abstract class _Query implements Query {
  const factory _Query(
      {@JsonKey(ignore: true)
          Engine? engine,
      required String query,
      SearchPage? page,
      List<Map<String, String>>? sort,
      Map<String, String>? group,
      @SearchFiltersConverter()
          List<SearchFilter>? filters,
      @SearchFieldsConverter()
      @JsonKey(name: "search_fields")
          List<SearchField>? searchFields,
      @ResultFieldsConverter()
      @JsonKey(name: "result_fields")
          List<ResultField>? resultFields}) = _$_Query;

  factory _Query.fromJson(Map<String, dynamic> json) = _$_Query.fromJson;

  @override
  @JsonKey(ignore: true)
  Engine? get engine;
  @override
  String get query;
  @override
  SearchPage? get page;
  @override
  List<Map<String, String>>? get sort;
  @override
  Map<String, String>? get group;
  @override
  @SearchFiltersConverter()
  List<SearchFilter>? get filters;
  @override
  @SearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<SearchField>? get searchFields;
  @override
  @ResultFieldsConverter()
  @JsonKey(name: "result_fields")
  List<ResultField>? get resultFields;
  @override
  @JsonKey(ignore: true)
  _$QueryCopyWith<_Query> get copyWith => throw _privateConstructorUsedError;
}

SearchPage _$SearchPageFromJson(Map<String, dynamic> json) {
  return _SearchPage.fromJson(json);
}

/// @nodoc
class _$SearchPageTearOff {
  const _$SearchPageTearOff();

  _SearchPage call({int? size = 10, int? current = 1}) {
    return _SearchPage(
      size: size,
      current: current,
    );
  }

  SearchPage fromJson(Map<String, Object?> json) {
    return SearchPage.fromJson(json);
  }
}

/// @nodoc
const $SearchPage = _$SearchPageTearOff();

/// @nodoc
mixin _$SearchPage {
  int? get size => throw _privateConstructorUsedError;
  int? get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPageCopyWith<SearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageCopyWith<$Res> {
  factory $SearchPageCopyWith(
          SearchPage value, $Res Function(SearchPage) then) =
      _$SearchPageCopyWithImpl<$Res>;
  $Res call({int? size, int? current});
}

/// @nodoc
class _$SearchPageCopyWithImpl<$Res> implements $SearchPageCopyWith<$Res> {
  _$SearchPageCopyWithImpl(this._value, this._then);

  final SearchPage _value;
  // ignore: unused_field
  final $Res Function(SearchPage) _then;

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
abstract class _$SearchPageCopyWith<$Res> implements $SearchPageCopyWith<$Res> {
  factory _$SearchPageCopyWith(
          _SearchPage value, $Res Function(_SearchPage) then) =
      __$SearchPageCopyWithImpl<$Res>;
  @override
  $Res call({int? size, int? current});
}

/// @nodoc
class __$SearchPageCopyWithImpl<$Res> extends _$SearchPageCopyWithImpl<$Res>
    implements _$SearchPageCopyWith<$Res> {
  __$SearchPageCopyWithImpl(
      _SearchPage _value, $Res Function(_SearchPage) _then)
      : super(_value, (v) => _then(v as _SearchPage));

  @override
  _SearchPage get _value => super._value as _SearchPage;

  @override
  $Res call({
    Object? size = freezed,
    Object? current = freezed,
  }) {
    return _then(_SearchPage(
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
class _$_SearchPage implements _SearchPage {
  const _$_SearchPage({this.size = 10, this.current = 1});

  factory _$_SearchPage.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPageFromJson(json);

  @JsonKey()
  @override
  final int? size;
  @JsonKey()
  @override
  final int? current;

  @override
  String toString() {
    return 'SearchPage(size: $size, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchPage &&
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
  _$SearchPageCopyWith<_SearchPage> get copyWith =>
      __$SearchPageCopyWithImpl<_SearchPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPageToJson(this);
  }
}

abstract class _SearchPage implements SearchPage {
  const factory _SearchPage({int? size, int? current}) = _$_SearchPage;

  factory _SearchPage.fromJson(Map<String, dynamic> json) =
      _$_SearchPage.fromJson;

  @override
  int? get size;
  @override
  int? get current;
  @override
  @JsonKey(ignore: true)
  _$SearchPageCopyWith<_SearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchFilter _$SearchFilterFromJson(Map<String, dynamic> json) {
  return _SearchFilter.fromJson(json);
}

/// @nodoc
class _$SearchFilterTearOff {
  const _$SearchFilterTearOff();

  _SearchFilter call({required String name, required List<dynamic> value}) {
    return _SearchFilter(
      name: name,
      value: value,
    );
  }

  SearchFilter fromJson(Map<String, Object?> json) {
    return SearchFilter.fromJson(json);
  }
}

/// @nodoc
const $SearchFilter = _$SearchFilterTearOff();

/// @nodoc
mixin _$SearchFilter {
  String get name => throw _privateConstructorUsedError;
  List<dynamic> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchFilterCopyWith<SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterCopyWith<$Res> {
  factory $SearchFilterCopyWith(
          SearchFilter value, $Res Function(SearchFilter) then) =
      _$SearchFilterCopyWithImpl<$Res>;
  $Res call({String name, List<dynamic> value});
}

/// @nodoc
class _$SearchFilterCopyWithImpl<$Res> implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._value, this._then);

  final SearchFilter _value;
  // ignore: unused_field
  final $Res Function(SearchFilter) _then;

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
abstract class _$SearchFilterCopyWith<$Res>
    implements $SearchFilterCopyWith<$Res> {
  factory _$SearchFilterCopyWith(
          _SearchFilter value, $Res Function(_SearchFilter) then) =
      __$SearchFilterCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<dynamic> value});
}

/// @nodoc
class __$SearchFilterCopyWithImpl<$Res> extends _$SearchFilterCopyWithImpl<$Res>
    implements _$SearchFilterCopyWith<$Res> {
  __$SearchFilterCopyWithImpl(
      _SearchFilter _value, $Res Function(_SearchFilter) _then)
      : super(_value, (v) => _then(v as _SearchFilter));

  @override
  _SearchFilter get _value => super._value as _SearchFilter;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_SearchFilter(
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
class _$_SearchFilter implements _SearchFilter {
  const _$_SearchFilter({required this.name, required this.value});

  factory _$_SearchFilter.fromJson(Map<String, dynamic> json) =>
      _$$_SearchFilterFromJson(json);

  @override
  final String name;
  @override
  final List<dynamic> value;

  @override
  String toString() {
    return 'SearchFilter(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchFilter &&
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
  _$SearchFilterCopyWith<_SearchFilter> get copyWith =>
      __$SearchFilterCopyWithImpl<_SearchFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchFilterToJson(this);
  }
}

abstract class _SearchFilter implements SearchFilter {
  const factory _SearchFilter(
      {required String name, required List<dynamic> value}) = _$_SearchFilter;

  factory _SearchFilter.fromJson(Map<String, dynamic> json) =
      _$_SearchFilter.fromJson;

  @override
  String get name;
  @override
  List<dynamic> get value;
  @override
  @JsonKey(ignore: true)
  _$SearchFilterCopyWith<_SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchField _$SearchFieldFromJson(Map<String, dynamic> json) {
  return _SearchField.fromJson(json);
}

/// @nodoc
class _$SearchFieldTearOff {
  const _$SearchFieldTearOff();

  _SearchField call({required String name, double? weight}) {
    return _SearchField(
      name: name,
      weight: weight,
    );
  }

  SearchField fromJson(Map<String, Object?> json) {
    return SearchField.fromJson(json);
  }
}

/// @nodoc
const $SearchField = _$SearchFieldTearOff();

/// @nodoc
mixin _$SearchField {
  String get name => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchFieldCopyWith<SearchField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFieldCopyWith<$Res> {
  factory $SearchFieldCopyWith(
          SearchField value, $Res Function(SearchField) then) =
      _$SearchFieldCopyWithImpl<$Res>;
  $Res call({String name, double? weight});
}

/// @nodoc
class _$SearchFieldCopyWithImpl<$Res> implements $SearchFieldCopyWith<$Res> {
  _$SearchFieldCopyWithImpl(this._value, this._then);

  final SearchField _value;
  // ignore: unused_field
  final $Res Function(SearchField) _then;

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
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$SearchFieldCopyWith<$Res>
    implements $SearchFieldCopyWith<$Res> {
  factory _$SearchFieldCopyWith(
          _SearchField value, $Res Function(_SearchField) then) =
      __$SearchFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, double? weight});
}

/// @nodoc
class __$SearchFieldCopyWithImpl<$Res> extends _$SearchFieldCopyWithImpl<$Res>
    implements _$SearchFieldCopyWith<$Res> {
  __$SearchFieldCopyWithImpl(
      _SearchField _value, $Res Function(_SearchField) _then)
      : super(_value, (v) => _then(v as _SearchField));

  @override
  _SearchField get _value => super._value as _SearchField;

  @override
  $Res call({
    Object? name = freezed,
    Object? weight = freezed,
  }) {
    return _then(_SearchField(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_SearchField implements _SearchField {
  const _$_SearchField({required this.name, this.weight});

  factory _$_SearchField.fromJson(Map<String, dynamic> json) =>
      _$$_SearchFieldFromJson(json);

  @override
  final String name;
  @override
  final double? weight;

  @override
  String toString() {
    return 'SearchField(name: $name, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchField &&
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
  _$SearchFieldCopyWith<_SearchField> get copyWith =>
      __$SearchFieldCopyWithImpl<_SearchField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchFieldToJson(this);
  }
}

abstract class _SearchField implements SearchField {
  const factory _SearchField({required String name, double? weight}) =
      _$_SearchField;

  factory _SearchField.fromJson(Map<String, dynamic> json) =
      _$_SearchField.fromJson;

  @override
  String get name;
  @override
  double? get weight;
  @override
  @JsonKey(ignore: true)
  _$SearchFieldCopyWith<_SearchField> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultField _$ResultFieldFromJson(Map<String, dynamic> json) {
  return _ResultField.fromJson(json);
}

/// @nodoc
class _$ResultFieldTearOff {
  const _$ResultFieldTearOff();

  _ResultField call({required String name, int? size}) {
    return _ResultField(
      name: name,
      size: size,
    );
  }

  ResultField fromJson(Map<String, Object?> json) {
    return ResultField.fromJson(json);
  }
}

/// @nodoc
const $ResultField = _$ResultFieldTearOff();

/// @nodoc
mixin _$ResultField {
  String get name => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultFieldCopyWith<ResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultFieldCopyWith<$Res> {
  factory $ResultFieldCopyWith(
          ResultField value, $Res Function(ResultField) then) =
      _$ResultFieldCopyWithImpl<$Res>;
  $Res call({String name, int? size});
}

/// @nodoc
class _$ResultFieldCopyWithImpl<$Res> implements $ResultFieldCopyWith<$Res> {
  _$ResultFieldCopyWithImpl(this._value, this._then);

  final ResultField _value;
  // ignore: unused_field
  final $Res Function(ResultField) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ResultFieldCopyWith<$Res>
    implements $ResultFieldCopyWith<$Res> {
  factory _$ResultFieldCopyWith(
          _ResultField value, $Res Function(_ResultField) then) =
      __$ResultFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? size});
}

/// @nodoc
class __$ResultFieldCopyWithImpl<$Res> extends _$ResultFieldCopyWithImpl<$Res>
    implements _$ResultFieldCopyWith<$Res> {
  __$ResultFieldCopyWithImpl(
      _ResultField _value, $Res Function(_ResultField) _then)
      : super(_value, (v) => _then(v as _ResultField));

  @override
  _ResultField get _value => super._value as _ResultField;

  @override
  $Res call({
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_ResultField(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_ResultField implements _ResultField {
  const _$_ResultField({required this.name, this.size});

  factory _$_ResultField.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFieldFromJson(json);

  @override
  final String name;
  @override
  final int? size;

  @override
  String toString() {
    return 'ResultField(name: $name, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultField &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$ResultFieldCopyWith<_ResultField> get copyWith =>
      __$ResultFieldCopyWithImpl<_ResultField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultFieldToJson(this);
  }
}

abstract class _ResultField implements ResultField {
  const factory _ResultField({required String name, int? size}) =
      _$_ResultField;

  factory _ResultField.fromJson(Map<String, dynamic> json) =
      _$_ResultField.fromJson;

  @override
  String get name;
  @override
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$ResultFieldCopyWith<_ResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
class _$ResponseTearOff {
  const _$ResponseTearOff();

  _Response call({required ResponseMeta meta, required List<Result> results}) {
    return _Response(
      meta: meta,
      results: results,
    );
  }

  Response fromJson(Map<String, Object?> json) {
    return Response.fromJson(json);
  }
}

/// @nodoc
const $Response = _$ResponseTearOff();

/// @nodoc
mixin _$Response {
  ResponseMeta get meta => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
  $Res call({ResponseMeta meta, List<Result> results});

  $ResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ResponseMeta,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }

  @override
  $ResponseMetaCopyWith<$Res> get meta {
    return $ResponseMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
  @override
  $Res call({ResponseMeta meta, List<Result> results});

  @override
  $ResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$ResponseCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(_Response _value, $Res Function(_Response) _then)
      : super(_value, (v) => _then(v as _Response));

  @override
  _Response get _value => super._value as _Response;

  @override
  $Res call({
    Object? meta = freezed,
    Object? results = freezed,
  }) {
    return _then(_Response(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ResponseMeta,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Response implements _Response {
  _$_Response({required this.meta, required this.results});

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final ResponseMeta meta;
  @override
  final List<Result> results;

  @override
  String toString() {
    return 'Response(meta: $meta, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Response &&
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
  _$ResponseCopyWith<_Response> get copyWith =>
      __$ResponseCopyWithImpl<_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(this);
  }
}

abstract class _Response implements Response {
  factory _Response(
      {required ResponseMeta meta,
      required List<Result> results}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  ResponseMeta get meta;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$ResponseCopyWith<_Response> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseMeta _$ResponseMetaFromJson(Map<String, dynamic> json) {
  return _ResponseMeta.fromJson(json);
}

/// @nodoc
class _$ResponseMetaTearOff {
  const _$ResponseMetaTearOff();

  _ResponseMeta call(
      {required ResponsePage page,
      required int precision,
      required List<dynamic> alerts,
      required List<dynamic> warnings,
      required String request_id}) {
    return _ResponseMeta(
      page: page,
      precision: precision,
      alerts: alerts,
      warnings: warnings,
      request_id: request_id,
    );
  }

  ResponseMeta fromJson(Map<String, Object?> json) {
    return ResponseMeta.fromJson(json);
  }
}

/// @nodoc
const $ResponseMeta = _$ResponseMetaTearOff();

/// @nodoc
mixin _$ResponseMeta {
  ResponsePage get page => throw _privateConstructorUsedError;
  int get precision => throw _privateConstructorUsedError;
  List<dynamic> get alerts => throw _privateConstructorUsedError;
  List<dynamic> get warnings => throw _privateConstructorUsedError;
  String get request_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseMetaCopyWith<ResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMetaCopyWith<$Res> {
  factory $ResponseMetaCopyWith(
          ResponseMeta value, $Res Function(ResponseMeta) then) =
      _$ResponseMetaCopyWithImpl<$Res>;
  $Res call(
      {ResponsePage page,
      int precision,
      List<dynamic> alerts,
      List<dynamic> warnings,
      String request_id});

  $ResponsePageCopyWith<$Res> get page;
}

/// @nodoc
class _$ResponseMetaCopyWithImpl<$Res> implements $ResponseMetaCopyWith<$Res> {
  _$ResponseMetaCopyWithImpl(this._value, this._then);

  final ResponseMeta _value;
  // ignore: unused_field
  final $Res Function(ResponseMeta) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? precision = freezed,
    Object? alerts = freezed,
    Object? warnings = freezed,
    Object? request_id = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ResponsePage,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int,
      alerts: alerts == freezed
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      warnings: warnings == freezed
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      request_id: request_id == freezed
          ? _value.request_id
          : request_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ResponsePageCopyWith<$Res> get page {
    return $ResponsePageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseMetaCopyWith<$Res>
    implements $ResponseMetaCopyWith<$Res> {
  factory _$ResponseMetaCopyWith(
          _ResponseMeta value, $Res Function(_ResponseMeta) then) =
      __$ResponseMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResponsePage page,
      int precision,
      List<dynamic> alerts,
      List<dynamic> warnings,
      String request_id});

  @override
  $ResponsePageCopyWith<$Res> get page;
}

/// @nodoc
class __$ResponseMetaCopyWithImpl<$Res> extends _$ResponseMetaCopyWithImpl<$Res>
    implements _$ResponseMetaCopyWith<$Res> {
  __$ResponseMetaCopyWithImpl(
      _ResponseMeta _value, $Res Function(_ResponseMeta) _then)
      : super(_value, (v) => _then(v as _ResponseMeta));

  @override
  _ResponseMeta get _value => super._value as _ResponseMeta;

  @override
  $Res call({
    Object? page = freezed,
    Object? precision = freezed,
    Object? alerts = freezed,
    Object? warnings = freezed,
    Object? request_id = freezed,
  }) {
    return _then(_ResponseMeta(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ResponsePage,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int,
      alerts: alerts == freezed
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      warnings: warnings == freezed
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      request_id: request_id == freezed
          ? _value.request_id
          : request_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseMeta implements _ResponseMeta {
  _$_ResponseMeta(
      {required this.page,
      required this.precision,
      required this.alerts,
      required this.warnings,
      required this.request_id});

  factory _$_ResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseMetaFromJson(json);

  @override
  final ResponsePage page;
  @override
  final int precision;
  @override
  final List<dynamic> alerts;
  @override
  final List<dynamic> warnings;
  @override
  final String request_id;

  @override
  String toString() {
    return 'ResponseMeta(page: $page, precision: $precision, alerts: $alerts, warnings: $warnings, request_id: $request_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseMeta &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.precision, precision) &&
            const DeepCollectionEquality().equals(other.alerts, alerts) &&
            const DeepCollectionEquality().equals(other.warnings, warnings) &&
            const DeepCollectionEquality()
                .equals(other.request_id, request_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(precision),
      const DeepCollectionEquality().hash(alerts),
      const DeepCollectionEquality().hash(warnings),
      const DeepCollectionEquality().hash(request_id));

  @JsonKey(ignore: true)
  @override
  _$ResponseMetaCopyWith<_ResponseMeta> get copyWith =>
      __$ResponseMetaCopyWithImpl<_ResponseMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseMetaToJson(this);
  }
}

abstract class _ResponseMeta implements ResponseMeta {
  factory _ResponseMeta(
      {required ResponsePage page,
      required int precision,
      required List<dynamic> alerts,
      required List<dynamic> warnings,
      required String request_id}) = _$_ResponseMeta;

  factory _ResponseMeta.fromJson(Map<String, dynamic> json) =
      _$_ResponseMeta.fromJson;

  @override
  ResponsePage get page;
  @override
  int get precision;
  @override
  List<dynamic> get alerts;
  @override
  List<dynamic> get warnings;
  @override
  String get request_id;
  @override
  @JsonKey(ignore: true)
  _$ResponseMetaCopyWith<_ResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponsePage _$ResponsePageFromJson(Map<String, dynamic> json) {
  return _ResponsePage.fromJson(json);
}

/// @nodoc
class _$ResponsePageTearOff {
  const _$ResponsePageTearOff();

  _ResponsePage call(
      {required int current,
      @JsonKey(name: "total_pages") required int totalPages,
      @JsonKey(name: "total_results") required int totalResults,
      required int size}) {
    return _ResponsePage(
      current: current,
      totalPages: totalPages,
      totalResults: totalResults,
      size: size,
    );
  }

  ResponsePage fromJson(Map<String, Object?> json) {
    return ResponsePage.fromJson(json);
  }
}

/// @nodoc
const $ResponsePage = _$ResponsePageTearOff();

/// @nodoc
mixin _$ResponsePage {
  int get current => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int get totalResults => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponsePageCopyWith<ResponsePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePageCopyWith<$Res> {
  factory $ResponsePageCopyWith(
          ResponsePage value, $Res Function(ResponsePage) then) =
      _$ResponsePageCopyWithImpl<$Res>;
  $Res call(
      {int current,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults,
      int size});
}

/// @nodoc
class _$ResponsePageCopyWithImpl<$Res> implements $ResponsePageCopyWith<$Res> {
  _$ResponsePageCopyWithImpl(this._value, this._then);

  final ResponsePage _value;
  // ignore: unused_field
  final $Res Function(ResponsePage) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ResponsePageCopyWith<$Res>
    implements $ResponsePageCopyWith<$Res> {
  factory _$ResponsePageCopyWith(
          _ResponsePage value, $Res Function(_ResponsePage) then) =
      __$ResponsePageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int current,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults,
      int size});
}

/// @nodoc
class __$ResponsePageCopyWithImpl<$Res> extends _$ResponsePageCopyWithImpl<$Res>
    implements _$ResponsePageCopyWith<$Res> {
  __$ResponsePageCopyWithImpl(
      _ResponsePage _value, $Res Function(_ResponsePage) _then)
      : super(_value, (v) => _then(v as _ResponsePage));

  @override
  _ResponsePage get _value => super._value as _ResponsePage;

  @override
  $Res call({
    Object? current = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? size = freezed,
  }) {
    return _then(_ResponsePage(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponsePage implements _ResponsePage {
  _$_ResponsePage(
      {required this.current,
      @JsonKey(name: "total_pages") required this.totalPages,
      @JsonKey(name: "total_results") required this.totalResults,
      required this.size});

  factory _$_ResponsePage.fromJson(Map<String, dynamic> json) =>
      _$$_ResponsePageFromJson(json);

  @override
  final int current;
  @override
  @JsonKey(name: "total_pages")
  final int totalPages;
  @override
  @JsonKey(name: "total_results")
  final int totalResults;
  @override
  final int size;

  @override
  String toString() {
    return 'ResponsePage(current: $current, totalPages: $totalPages, totalResults: $totalResults, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponsePage &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$ResponsePageCopyWith<_ResponsePage> get copyWith =>
      __$ResponsePageCopyWithImpl<_ResponsePage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponsePageToJson(this);
  }
}

abstract class _ResponsePage implements ResponsePage {
  factory _ResponsePage(
      {required int current,
      @JsonKey(name: "total_pages") required int totalPages,
      @JsonKey(name: "total_results") required int totalResults,
      required int size}) = _$_ResponsePage;

  factory _ResponsePage.fromJson(Map<String, dynamic> json) =
      _$_ResponsePage.fromJson;

  @override
  int get current;
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override
  @JsonKey(name: "total_results")
  int get totalResults;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$ResponsePageCopyWith<_ResponsePage> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultMeta _$ResultMetaFromJson(Map<String, dynamic> json) {
  return _ResultMeta.fromJson(json);
}

/// @nodoc
class _$ResultMetaTearOff {
  const _$ResultMetaTearOff();

  _ResultMeta call(
      {required String id, required String engine, required double score}) {
    return _ResultMeta(
      id: id,
      engine: engine,
      score: score,
    );
  }

  ResultMeta fromJson(Map<String, Object?> json) {
    return ResultMeta.fromJson(json);
  }
}

/// @nodoc
const $ResultMeta = _$ResultMetaTearOff();

/// @nodoc
mixin _$ResultMeta {
  String get id => throw _privateConstructorUsedError;
  String get engine => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultMetaCopyWith<ResultMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultMetaCopyWith<$Res> {
  factory $ResultMetaCopyWith(
          ResultMeta value, $Res Function(ResultMeta) then) =
      _$ResultMetaCopyWithImpl<$Res>;
  $Res call({String id, String engine, double score});
}

/// @nodoc
class _$ResultMetaCopyWithImpl<$Res> implements $ResultMetaCopyWith<$Res> {
  _$ResultMetaCopyWithImpl(this._value, this._then);

  final ResultMeta _value;
  // ignore: unused_field
  final $Res Function(ResultMeta) _then;

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
abstract class _$ResultMetaCopyWith<$Res> implements $ResultMetaCopyWith<$Res> {
  factory _$ResultMetaCopyWith(
          _ResultMeta value, $Res Function(_ResultMeta) then) =
      __$ResultMetaCopyWithImpl<$Res>;
  @override
  $Res call({String id, String engine, double score});
}

/// @nodoc
class __$ResultMetaCopyWithImpl<$Res> extends _$ResultMetaCopyWithImpl<$Res>
    implements _$ResultMetaCopyWith<$Res> {
  __$ResultMetaCopyWithImpl(
      _ResultMeta _value, $Res Function(_ResultMeta) _then)
      : super(_value, (v) => _then(v as _ResultMeta));

  @override
  _ResultMeta get _value => super._value as _ResultMeta;

  @override
  $Res call({
    Object? id = freezed,
    Object? engine = freezed,
    Object? score = freezed,
  }) {
    return _then(_ResultMeta(
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
class _$_ResultMeta implements _ResultMeta {
  _$_ResultMeta({required this.id, required this.engine, required this.score});

  factory _$_ResultMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ResultMetaFromJson(json);

  @override
  final String id;
  @override
  final String engine;
  @override
  final double score;

  @override
  String toString() {
    return 'ResultMeta(id: $id, engine: $engine, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultMeta &&
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
  _$ResultMetaCopyWith<_ResultMeta> get copyWith =>
      __$ResultMetaCopyWithImpl<_ResultMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultMetaToJson(this);
  }
}

abstract class _ResultMeta implements ResultMeta {
  factory _ResultMeta(
      {required String id,
      required String engine,
      required double score}) = _$_ResultMeta;

  factory _ResultMeta.fromJson(Map<String, dynamic> json) =
      _$_ResultMeta.fromJson;

  @override
  String get id;
  @override
  String get engine;
  @override
  double get score;
  @override
  @JsonKey(ignore: true)
  _$ResultMetaCopyWith<_ResultMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call(
      {Map<String, dynamic>? data,
      @JsonKey(name: "_meta") required ResultMeta meta}) {
    return _Result(
      data: data,
      meta: meta,
    );
  }

  Result fromJson(Map<String, Object?> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "_meta")
  ResultMeta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic>? data, @JsonKey(name: "_meta") ResultMeta meta});

  $ResultMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ResultMeta,
    ));
  }

  @override
  $ResultMetaCopyWith<$Res> get meta {
    return $ResultMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic>? data, @JsonKey(name: "_meta") ResultMeta meta});

  @override
  $ResultMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_Result(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ResultMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  _$_Result({this.data, @JsonKey(name: "_meta") required this.meta});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final Map<String, dynamic>? data;
  @override
  @JsonKey(name: "_meta")
  final ResultMeta meta;

  @override
  String toString() {
    return 'Result(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Result &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  factory _Result(
      {Map<String, dynamic>? data,
      @JsonKey(name: "_meta") required ResultMeta meta}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(name: "_meta")
  ResultMeta get meta;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}
