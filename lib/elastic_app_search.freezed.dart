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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

_ElasticAnalytics _$_ElasticAnalyticsFromJson(Map<String, dynamic> json) {
  return __ElasticAnalytics.fromJson(json);
}

/// @nodoc
mixin _$_ElasticAnalytics {
  /// Array of strings representing the tags you’d like to apply to the query.
  /// You may submit up to 16 tags, and each may be up to 64 characters in length.
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticAnalyticsCopyWith<_ElasticAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticAnalyticsCopyWith<$Res> {
  factory _$ElasticAnalyticsCopyWith(
          _ElasticAnalytics value, $Res Function(_ElasticAnalytics) then) =
      __$ElasticAnalyticsCopyWithImpl<$Res>;
  $Res call({List<String> tags});
}

/// @nodoc
class __$ElasticAnalyticsCopyWithImpl<$Res>
    implements _$ElasticAnalyticsCopyWith<$Res> {
  __$ElasticAnalyticsCopyWithImpl(this._value, this._then);

  final _ElasticAnalytics _value;
  // ignore: unused_field
  final $Res Function(_ElasticAnalytics) _then;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$__ElasticAnalyticsCopyWith<$Res>
    implements _$ElasticAnalyticsCopyWith<$Res> {
  factory _$$__ElasticAnalyticsCopyWith(_$__ElasticAnalytics value,
          $Res Function(_$__ElasticAnalytics) then) =
      __$$__ElasticAnalyticsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> tags});
}

/// @nodoc
class __$$__ElasticAnalyticsCopyWithImpl<$Res>
    extends __$ElasticAnalyticsCopyWithImpl<$Res>
    implements _$$__ElasticAnalyticsCopyWith<$Res> {
  __$$__ElasticAnalyticsCopyWithImpl(
      _$__ElasticAnalytics _value, $Res Function(_$__ElasticAnalytics) _then)
      : super(_value, (v) => _then(v as _$__ElasticAnalytics));

  @override
  _$__ElasticAnalytics get _value => super._value as _$__ElasticAnalytics;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$__ElasticAnalytics(
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticAnalytics implements __ElasticAnalytics {
  const _$__ElasticAnalytics({required final List<String> tags})
      : assert(tags.length <= 16, 'You cannot submit more than 16 tags.'),
        _tags = tags;

  factory _$__ElasticAnalytics.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticAnalyticsFromJson(json);

  /// Array of strings representing the tags you’d like to apply to the query.
  /// You may submit up to 16 tags, and each may be up to 64 characters in length.
  final List<String> _tags;

  /// Array of strings representing the tags you’d like to apply to the query.
  /// You may submit up to 16 tags, and each may be up to 64 characters in length.
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return '_ElasticAnalytics(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticAnalytics &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticAnalyticsCopyWith<_$__ElasticAnalytics> get copyWith =>
      __$$__ElasticAnalyticsCopyWithImpl<_$__ElasticAnalytics>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticAnalyticsToJson(
      this,
    );
  }
}

abstract class __ElasticAnalytics implements _ElasticAnalytics {
  const factory __ElasticAnalytics({required final List<String> tags}) =
      _$__ElasticAnalytics;

  factory __ElasticAnalytics.fromJson(Map<String, dynamic> json) =
      _$__ElasticAnalytics.fromJson;

  @override

  /// Array of strings representing the tags you’d like to apply to the query.
  /// You may submit up to 16 tags, and each may be up to 64 characters in length.
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticAnalyticsCopyWith<_$__ElasticAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticBoost _$_ElasticBoostFromJson(Map<String, dynamic> json) {
  return __ElasticBoost.fromJson(json);
}

/// @nodoc
mixin _$_ElasticBoost {
  /// Type of boost
  BoostType get type => throw _privateConstructorUsedError;

  /// The value to exact match on. Use an array to match on multiple values.
  List<String>? get value => throw _privateConstructorUsedError;

  /// The arithmetic operation used to combine the original document score with your boost value.
  /// Can be add or multiply. Defaults to add.
  BoostOperation? get operation => throw _privateConstructorUsedError;

  /// Factor to alter the impact of a boost on the score of a document.
  /// Must be between 0 and 10. Defaults to 1.0.
  /// A negative factor or fractional factor will not deboost a result.
  double? get factor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticBoostCopyWith<_ElasticBoost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticBoostCopyWith<$Res> {
  factory _$ElasticBoostCopyWith(
          _ElasticBoost value, $Res Function(_ElasticBoost) then) =
      __$ElasticBoostCopyWithImpl<$Res>;
  $Res call(
      {BoostType type,
      List<String>? value,
      BoostOperation? operation,
      double? factor});
}

/// @nodoc
class __$ElasticBoostCopyWithImpl<$Res>
    implements _$ElasticBoostCopyWith<$Res> {
  __$ElasticBoostCopyWithImpl(this._value, this._then);

  final _ElasticBoost _value;
  // ignore: unused_field
  final $Res Function(_ElasticBoost) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
    Object? operation = freezed,
    Object? factor = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BoostType,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as BoostOperation?,
      factor: factor == freezed
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$__ElasticBoostCopyWith<$Res>
    implements _$ElasticBoostCopyWith<$Res> {
  factory _$$__ElasticBoostCopyWith(
          _$__ElasticBoost value, $Res Function(_$__ElasticBoost) then) =
      __$$__ElasticBoostCopyWithImpl<$Res>;
  @override
  $Res call(
      {BoostType type,
      List<String>? value,
      BoostOperation? operation,
      double? factor});
}

/// @nodoc
class __$$__ElasticBoostCopyWithImpl<$Res>
    extends __$ElasticBoostCopyWithImpl<$Res>
    implements _$$__ElasticBoostCopyWith<$Res> {
  __$$__ElasticBoostCopyWithImpl(
      _$__ElasticBoost _value, $Res Function(_$__ElasticBoost) _then)
      : super(_value, (v) => _then(v as _$__ElasticBoost));

  @override
  _$__ElasticBoost get _value => super._value as _$__ElasticBoost;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
    Object? operation = freezed,
    Object? factor = freezed,
  }) {
    return _then(_$__ElasticBoost(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BoostType,
      value: value == freezed
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as BoostOperation?,
      factor: factor == freezed
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticBoost implements __ElasticBoost {
  const _$__ElasticBoost(
      {required this.type,
      final List<String>? value,
      this.operation,
      this.factor})
      : _value = value;

  factory _$__ElasticBoost.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticBoostFromJson(json);

  /// Type of boost
  @override
  final BoostType type;

  /// The value to exact match on. Use an array to match on multiple values.
  final List<String>? _value;

  /// The value to exact match on. Use an array to match on multiple values.
  @override
  List<String>? get value {
    final value = _value;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The arithmetic operation used to combine the original document score with your boost value.
  /// Can be add or multiply. Defaults to add.
  @override
  final BoostOperation? operation;

  /// Factor to alter the impact of a boost on the score of a document.
  /// Must be between 0 and 10. Defaults to 1.0.
  /// A negative factor or fractional factor will not deboost a result.
  @override
  final double? factor;

  @override
  String toString() {
    return '_ElasticBoost(type: $type, value: $value, operation: $operation, factor: $factor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticBoost &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            const DeepCollectionEquality().equals(other.operation, operation) &&
            const DeepCollectionEquality().equals(other.factor, factor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_value),
      const DeepCollectionEquality().hash(operation),
      const DeepCollectionEquality().hash(factor));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticBoostCopyWith<_$__ElasticBoost> get copyWith =>
      __$$__ElasticBoostCopyWithImpl<_$__ElasticBoost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticBoostToJson(
      this,
    );
  }
}

abstract class __ElasticBoost implements _ElasticBoost {
  const factory __ElasticBoost(
      {required final BoostType type,
      final List<String>? value,
      final BoostOperation? operation,
      final double? factor}) = _$__ElasticBoost;

  factory __ElasticBoost.fromJson(Map<String, dynamic> json) =
      _$__ElasticBoost.fromJson;

  @override

  /// Type of boost
  BoostType get type;
  @override

  /// The value to exact match on. Use an array to match on multiple values.
  List<String>? get value;
  @override

  /// The arithmetic operation used to combine the original document score with your boost value.
  /// Can be add or multiply. Defaults to add.
  BoostOperation? get operation;
  @override

  /// Factor to alter the impact of a boost on the score of a document.
  /// Must be between 0 and 10. Defaults to 1.0.
  /// A negative factor or fractional factor will not deboost a result.
  double? get factor;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticBoostCopyWith<_$__ElasticBoost> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticQueryFacet _$_ElasticQueryFacetFromJson(Map<String, dynamic> json) {
  return __ElasticQueryFacet.fromJson(json);
}

/// @nodoc
mixin _$_ElasticQueryFacet {
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<_ElasticRangeFacet>? get ranges => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @_LatLongConverter()
  LatLong? get center => throw _privateConstructorUsedError;
  GeoUnit? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticQueryFacetCopyWith<_ElasticQueryFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticQueryFacetCopyWith<$Res> {
  factory _$ElasticQueryFacetCopyWith(
          _ElasticQueryFacet value, $Res Function(_ElasticQueryFacet) then) =
      __$ElasticQueryFacetCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String? name,
      List<_ElasticRangeFacet>? ranges,
      int? size,
      @_LatLongConverter() LatLong? center,
      GeoUnit? unit});

  $LatLongCopyWith<$Res>? get center;
}

/// @nodoc
class __$ElasticQueryFacetCopyWithImpl<$Res>
    implements _$ElasticQueryFacetCopyWith<$Res> {
  __$ElasticQueryFacetCopyWithImpl(this._value, this._then);

  final _ElasticQueryFacet _value;
  // ignore: unused_field
  final $Res Function(_ElasticQueryFacet) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? ranges = freezed,
    Object? size = freezed,
    Object? center = freezed,
    Object? unit = freezed,
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
              as List<_ElasticRangeFacet>?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      center: center == freezed
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit?,
    ));
  }

  @override
  $LatLongCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $LatLongCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value));
    });
  }
}

/// @nodoc
abstract class _$$__ElasticQueryFacetCopyWith<$Res>
    implements _$ElasticQueryFacetCopyWith<$Res> {
  factory _$$__ElasticQueryFacetCopyWith(_$__ElasticQueryFacet value,
          $Res Function(_$__ElasticQueryFacet) then) =
      __$$__ElasticQueryFacetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String? name,
      List<_ElasticRangeFacet>? ranges,
      int? size,
      @_LatLongConverter() LatLong? center,
      GeoUnit? unit});

  @override
  $LatLongCopyWith<$Res>? get center;
}

/// @nodoc
class __$$__ElasticQueryFacetCopyWithImpl<$Res>
    extends __$ElasticQueryFacetCopyWithImpl<$Res>
    implements _$$__ElasticQueryFacetCopyWith<$Res> {
  __$$__ElasticQueryFacetCopyWithImpl(
      _$__ElasticQueryFacet _value, $Res Function(_$__ElasticQueryFacet) _then)
      : super(_value, (v) => _then(v as _$__ElasticQueryFacet));

  @override
  _$__ElasticQueryFacet get _value => super._value as _$__ElasticQueryFacet;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? ranges = freezed,
    Object? size = freezed,
    Object? center = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$__ElasticQueryFacet(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ranges: ranges == freezed
          ? _value._ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as List<_ElasticRangeFacet>?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      center: center == freezed
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticQueryFacet implements __ElasticQueryFacet {
  const _$__ElasticQueryFacet(
      {required this.type,
      this.name,
      final List<_ElasticRangeFacet>? ranges,
      this.size,
      @_LatLongConverter() this.center,
      this.unit})
      : _ranges = ranges;

  factory _$__ElasticQueryFacet.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticQueryFacetFromJson(json);

  @override
  final String type;
  @override
  final String? name;
  final List<_ElasticRangeFacet>? _ranges;
  @override
  List<_ElasticRangeFacet>? get ranges {
    final value = _ranges;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? size;
  @override
  @_LatLongConverter()
  final LatLong? center;
  @override
  final GeoUnit? unit;

  @override
  String toString() {
    return '_ElasticQueryFacet(type: $type, name: $name, ranges: $ranges, size: $size, center: $center, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticQueryFacet &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._ranges, _ranges) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.center, center) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_ranges),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(center),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticQueryFacetCopyWith<_$__ElasticQueryFacet> get copyWith =>
      __$$__ElasticQueryFacetCopyWithImpl<_$__ElasticQueryFacet>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticQueryFacetToJson(
      this,
    );
  }
}

abstract class __ElasticQueryFacet implements _ElasticQueryFacet {
  const factory __ElasticQueryFacet(
      {required final String type,
      final String? name,
      final List<_ElasticRangeFacet>? ranges,
      final int? size,
      @_LatLongConverter() final LatLong? center,
      final GeoUnit? unit}) = _$__ElasticQueryFacet;

  factory __ElasticQueryFacet.fromJson(Map<String, dynamic> json) =
      _$__ElasticQueryFacet.fromJson;

  @override
  String get type;
  @override
  String? get name;
  @override
  List<_ElasticRangeFacet>? get ranges;
  @override
  int? get size;
  @override
  @_LatLongConverter()
  LatLong? get center;
  @override
  GeoUnit? get unit;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticQueryFacetCopyWith<_$__ElasticQueryFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticRangeFacet _$_ElasticRangeFacetFromJson(Map<String, dynamic> json) {
  return __ElasticRangeFacet.fromJson(json);
}

/// @nodoc
mixin _$_ElasticRangeFacet {
  String? get name => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

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
  $Res call({String? name, String? from, String? to, int? count});
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
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$__ElasticRangeFacetCopyWith<$Res>
    implements _$ElasticRangeFacetCopyWith<$Res> {
  factory _$$__ElasticRangeFacetCopyWith(_$__ElasticRangeFacet value,
          $Res Function(_$__ElasticRangeFacet) then) =
      __$$__ElasticRangeFacetCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? from, String? to, int? count});
}

/// @nodoc
class __$$__ElasticRangeFacetCopyWithImpl<$Res>
    extends __$ElasticRangeFacetCopyWithImpl<$Res>
    implements _$$__ElasticRangeFacetCopyWith<$Res> {
  __$$__ElasticRangeFacetCopyWithImpl(
      _$__ElasticRangeFacet _value, $Res Function(_$__ElasticRangeFacet) _then)
      : super(_value, (v) => _then(v as _$__ElasticRangeFacet));

  @override
  _$__ElasticRangeFacet get _value => super._value as _$__ElasticRangeFacet;

  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = freezed,
  }) {
    return _then(_$__ElasticRangeFacet(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticRangeFacet implements __ElasticRangeFacet {
  const _$__ElasticRangeFacet({this.name, this.from, this.to, this.count});

  factory _$__ElasticRangeFacet.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticRangeFacetFromJson(json);

  @override
  final String? name;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final int? count;

  @override
  String toString() {
    return '_ElasticRangeFacet(name: $name, from: $from, to: $to, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticRangeFacet &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticRangeFacetCopyWith<_$__ElasticRangeFacet> get copyWith =>
      __$$__ElasticRangeFacetCopyWithImpl<_$__ElasticRangeFacet>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticRangeFacetToJson(
      this,
    );
  }
}

abstract class __ElasticRangeFacet implements _ElasticRangeFacet {
  const factory __ElasticRangeFacet(
      {final String? name,
      final String? from,
      final String? to,
      final int? count}) = _$__ElasticRangeFacet;

  factory __ElasticRangeFacet.fromJson(Map<String, dynamic> json) =
      _$__ElasticRangeFacet.fromJson;

  @override
  String? get name;
  @override
  String? get from;
  @override
  String? get to;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticRangeFacetCopyWith<_$__ElasticRangeFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticFacet _$ElasticFacetFromJson(Map<String, dynamic> json) {
  return _ElasticFacet.fromJson(json);
}

/// @nodoc
mixin _$ElasticFacet {
  ElasticFacetType get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<ElasticFacetData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticFacetCopyWith<ElasticFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticFacetCopyWith<$Res> {
  factory $ElasticFacetCopyWith(
          ElasticFacet value, $Res Function(ElasticFacet) then) =
      _$ElasticFacetCopyWithImpl<$Res>;
  $Res call(
      {ElasticFacetType type, String? name, List<ElasticFacetData>? data});
}

/// @nodoc
class _$ElasticFacetCopyWithImpl<$Res> implements $ElasticFacetCopyWith<$Res> {
  _$ElasticFacetCopyWithImpl(this._value, this._then);

  final ElasticFacet _value;
  // ignore: unused_field
  final $Res Function(ElasticFacet) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ElasticFacetType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ElasticFacetData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ElasticFacetCopyWith<$Res>
    implements $ElasticFacetCopyWith<$Res> {
  factory _$$_ElasticFacetCopyWith(
          _$_ElasticFacet value, $Res Function(_$_ElasticFacet) then) =
      __$$_ElasticFacetCopyWithImpl<$Res>;
  @override
  $Res call(
      {ElasticFacetType type, String? name, List<ElasticFacetData>? data});
}

/// @nodoc
class __$$_ElasticFacetCopyWithImpl<$Res>
    extends _$ElasticFacetCopyWithImpl<$Res>
    implements _$$_ElasticFacetCopyWith<$Res> {
  __$$_ElasticFacetCopyWithImpl(
      _$_ElasticFacet _value, $Res Function(_$_ElasticFacet) _then)
      : super(_value, (v) => _then(v as _$_ElasticFacet));

  @override
  _$_ElasticFacet get _value => super._value as _$_ElasticFacet;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ElasticFacet(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ElasticFacetType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ElasticFacetData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticFacet extends _ElasticFacet {
  const _$_ElasticFacet(
      {required this.type, this.name, final List<ElasticFacetData>? data})
      : _data = data,
        super._();

  factory _$_ElasticFacet.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticFacetFromJson(json);

  @override
  final ElasticFacetType type;
  @override
  final String? name;
  final List<ElasticFacetData>? _data;
  @override
  List<ElasticFacetData>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElasticFacet(type: $type, name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticFacet &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticFacetCopyWith<_$_ElasticFacet> get copyWith =>
      __$$_ElasticFacetCopyWithImpl<_$_ElasticFacet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticFacetToJson(
      this,
    );
  }
}

abstract class _ElasticFacet extends ElasticFacet {
  const factory _ElasticFacet(
      {required final ElasticFacetType type,
      final String? name,
      final List<ElasticFacetData>? data}) = _$_ElasticFacet;
  const _ElasticFacet._() : super._();

  factory _ElasticFacet.fromJson(Map<String, dynamic> json) =
      _$_ElasticFacet.fromJson;

  @override
  ElasticFacetType get type;
  @override
  String? get name;
  @override
  List<ElasticFacetData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticFacetCopyWith<_$_ElasticFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticFacetData _$ElasticFacetDataFromJson(Map<String, dynamic> json) {
  return _ElasticFacetData.fromJson(json);
}

/// @nodoc
mixin _$ElasticFacetData {
  String? get name => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;
  Object? get from => throw _privateConstructorUsedError;
  Object? get to => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticFacetDataCopyWith<ElasticFacetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticFacetDataCopyWith<$Res> {
  factory $ElasticFacetDataCopyWith(
          ElasticFacetData value, $Res Function(ElasticFacetData) then) =
      _$ElasticFacetDataCopyWithImpl<$Res>;
  $Res call({String? name, Object? value, Object? from, Object? to, int count});
}

/// @nodoc
class _$ElasticFacetDataCopyWithImpl<$Res>
    implements $ElasticFacetDataCopyWith<$Res> {
  _$ElasticFacetDataCopyWithImpl(this._value, this._then);

  final ElasticFacetData _value;
  // ignore: unused_field
  final $Res Function(ElasticFacetData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed ? _value.value : value,
      from: from == freezed ? _value.from : from,
      to: to == freezed ? _value.to : to,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ElasticFacetDataCopyWith<$Res>
    implements $ElasticFacetDataCopyWith<$Res> {
  factory _$$_ElasticFacetDataCopyWith(
          _$_ElasticFacetData value, $Res Function(_$_ElasticFacetData) then) =
      __$$_ElasticFacetDataCopyWithImpl<$Res>;
  @override
  $Res call({String? name, Object? value, Object? from, Object? to, int count});
}

/// @nodoc
class __$$_ElasticFacetDataCopyWithImpl<$Res>
    extends _$ElasticFacetDataCopyWithImpl<$Res>
    implements _$$_ElasticFacetDataCopyWith<$Res> {
  __$$_ElasticFacetDataCopyWithImpl(
      _$_ElasticFacetData _value, $Res Function(_$_ElasticFacetData) _then)
      : super(_value, (v) => _then(v as _$_ElasticFacetData));

  @override
  _$_ElasticFacetData get _value => super._value as _$_ElasticFacetData;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_ElasticFacetData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed ? _value.value : value,
      from: from == freezed ? _value.from : from,
      to: to == freezed ? _value.to : to,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticFacetData implements _ElasticFacetData {
  const _$_ElasticFacetData(
      {this.name, this.value, this.from, this.to, required this.count});

  factory _$_ElasticFacetData.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticFacetDataFromJson(json);

  @override
  final String? name;
  @override
  final Object? value;
  @override
  final Object? from;
  @override
  final Object? to;
  @override
  final int count;

  @override
  String toString() {
    return 'ElasticFacetData(name: $name, value: $value, from: $from, to: $to, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticFacetData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticFacetDataCopyWith<_$_ElasticFacetData> get copyWith =>
      __$$_ElasticFacetDataCopyWithImpl<_$_ElasticFacetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticFacetDataToJson(
      this,
    );
  }
}

abstract class _ElasticFacetData implements ElasticFacetData {
  const factory _ElasticFacetData(
      {final String? name,
      final Object? value,
      final Object? from,
      final Object? to,
      required final int count}) = _$_ElasticFacetData;

  factory _ElasticFacetData.fromJson(Map<String, dynamic> json) =
      _$_ElasticFacetData.fromJson;

  @override
  String? get name;
  @override
  Object? get value;
  @override
  Object? get from;
  @override
  Object? get to;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticFacetDataCopyWith<_$_ElasticFacetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ElasticRange {
  String? get name => throw _privateConstructorUsedError;
  Object? get from => throw _privateConstructorUsedError;
  Object? get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElasticRangeCopyWith<ElasticRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticRangeCopyWith<$Res> {
  factory $ElasticRangeCopyWith(
          ElasticRange value, $Res Function(ElasticRange) then) =
      _$ElasticRangeCopyWithImpl<$Res>;
  $Res call({String? name, Object? from, Object? to});
}

/// @nodoc
class _$ElasticRangeCopyWithImpl<$Res> implements $ElasticRangeCopyWith<$Res> {
  _$ElasticRangeCopyWithImpl(this._value, this._then);

  final ElasticRange _value;
  // ignore: unused_field
  final $Res Function(ElasticRange) _then;

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
abstract class _$$_ElasticRangeCopyWith<$Res>
    implements $ElasticRangeCopyWith<$Res> {
  factory _$$_ElasticRangeCopyWith(
          _$_ElasticRange value, $Res Function(_$_ElasticRange) then) =
      __$$_ElasticRangeCopyWithImpl<$Res>;
  @override
  $Res call({String? name, Object? from, Object? to});
}

/// @nodoc
class __$$_ElasticRangeCopyWithImpl<$Res>
    extends _$ElasticRangeCopyWithImpl<$Res>
    implements _$$_ElasticRangeCopyWith<$Res> {
  __$$_ElasticRangeCopyWithImpl(
      _$_ElasticRange _value, $Res Function(_$_ElasticRange) _then)
      : super(_value, (v) => _then(v as _$_ElasticRange));

  @override
  _$_ElasticRange get _value => super._value as _$_ElasticRange;

  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_ElasticRange(
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

class _$_ElasticRange implements _ElasticRange {
  const _$_ElasticRange({this.name, this.from, this.to})
      : assert(from != null || to != null,
            'You must provide at least `from` or `to`.'),
        assert(
            from == null ||
                (from != null &&
                    (from is int || from is double || from is DateTime)),
            '`from` must be an int, a double or a DateTime'),
        assert(
            to == null ||
                (to != null && (to is int || to is double || to is DateTime)),
            '`to` must be an int, a double or a DateTime');

  @override
  final String? name;
  @override
  final Object? from;
  @override
  final Object? to;

  @override
  String toString() {
    return 'ElasticRange(name: $name, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticRange &&
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
  _$$_ElasticRangeCopyWith<_$_ElasticRange> get copyWith =>
      __$$_ElasticRangeCopyWithImpl<_$_ElasticRange>(this, _$identity);
}

abstract class _ElasticRange implements ElasticRange {
  const factory _ElasticRange(
      {final String? name,
      final Object? from,
      final Object? to}) = _$_ElasticRange;

  @override
  String? get name;
  @override
  Object? get from;
  @override
  Object? get to;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticRangeCopyWith<_$_ElasticRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LatLong {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LatLongCopyWith<LatLong> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLongCopyWith<$Res> {
  factory $LatLongCopyWith(LatLong value, $Res Function(LatLong) then) =
      _$LatLongCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LatLongCopyWithImpl<$Res> implements $LatLongCopyWith<$Res> {
  _$LatLongCopyWithImpl(this._value, this._then);

  final LatLong _value;
  // ignore: unused_field
  final $Res Function(LatLong) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LatLongCopyWith<$Res> implements $LatLongCopyWith<$Res> {
  factory _$$_LatLongCopyWith(
          _$_LatLong value, $Res Function(_$_LatLong) then) =
      __$$_LatLongCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_LatLongCopyWithImpl<$Res> extends _$LatLongCopyWithImpl<$Res>
    implements _$$_LatLongCopyWith<$Res> {
  __$$_LatLongCopyWithImpl(_$_LatLong _value, $Res Function(_$_LatLong) _then)
      : super(_value, (v) => _then(v as _$_LatLong));

  @override
  _$_LatLong get _value => super._value as _$_LatLong;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LatLong(
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LatLong implements _LatLong {
  const _$_LatLong(this.latitude, this.longitude)
      : assert(latitude >= -90 && latitude <= 90,
            'Latitude must be between -90 and 90 degrees.'),
        assert(longitude >= -180 && latitude <= 180,
            'Longitude must be between -90 and 90 degrees.');

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LatLong(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatLong &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_LatLongCopyWith<_$_LatLong> get copyWith =>
      __$$_LatLongCopyWithImpl<_$_LatLong>(this, _$identity);
}

abstract class _LatLong implements LatLong {
  const factory _LatLong(final double latitude, final double longitude) =
      _$_LatLong;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LatLongCopyWith<_$_LatLong> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticQuery _$ElasticQueryFromJson(Map<String, dynamic> json) {
  return _ElasticQuery.fromJson(json);
}

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

  /// Facets are objects which provide the counts of each value or range of values for a field.
  /// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
  @protected
  Map<String, _ElasticQueryFacet>? get facets =>
      throw _privateConstructorUsedError;

  /// Disjunctive facets are useful when you have many filters in your form, and especially
  /// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
  /// it will return all the available facets as if that filter was not applied.
  /// This is not a native part of Elastic App Search, this is a workaround. In fact, multiple queries are
  /// passed to Elastic and the package concatenates all responses in one response.
  @JsonKey(ignore: true)
  List<String>? get disjunctiveFacets => throw _privateConstructorUsedError;

  /// Tags can be used to enrich each query with unique information.
  /// See [https://www.elastic.co/guide/en/app-search/current/tags.html]
  _ElasticAnalytics? get analytics => throw _privateConstructorUsedError;

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
          Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(ignore: true)
          List<String>? disjunctiveFacets,
      _ElasticAnalytics? analytics,
      @protected
      @JsonKey(name: "group")
          _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          List<_ElasticSort>? sortBy});

  _$ElasticSearchPageCopyWith<$Res>? get searchPage;
  _$ElasticAnalyticsCopyWith<$Res>? get analytics;
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
    Object? facets = freezed,
    Object? disjunctiveFacets = freezed,
    Object? analytics = freezed,
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
      facets: facets == freezed
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<String, _ElasticQueryFacet>?,
      disjunctiveFacets: disjunctiveFacets == freezed
          ? _value.disjunctiveFacets
          : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as _ElasticAnalytics?,
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
  _$ElasticAnalyticsCopyWith<$Res>? get analytics {
    if (_value.analytics == null) {
      return null;
    }

    return _$ElasticAnalyticsCopyWith<$Res>(_value.analytics!, (value) {
      return _then(_value.copyWith(analytics: value));
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
abstract class _$$_ElasticQueryCopyWith<$Res>
    implements $ElasticQueryCopyWith<$Res> {
  factory _$$_ElasticQueryCopyWith(
          _$_ElasticQuery value, $Res Function(_$_ElasticQuery) then) =
      __$$_ElasticQueryCopyWithImpl<$Res>;
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
          Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(ignore: true)
          List<String>? disjunctiveFacets,
      _ElasticAnalytics? analytics,
      @protected
      @JsonKey(name: "group")
          _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          List<_ElasticSort>? sortBy});

  @override
  _$ElasticSearchPageCopyWith<$Res>? get searchPage;
  @override
  _$ElasticAnalyticsCopyWith<$Res>? get analytics;
  @override
  _$ElasticGroupCopyWith<$Res>? get groupBy;
}

/// @nodoc
class __$$_ElasticQueryCopyWithImpl<$Res>
    extends _$ElasticQueryCopyWithImpl<$Res>
    implements _$$_ElasticQueryCopyWith<$Res> {
  __$$_ElasticQueryCopyWithImpl(
      _$_ElasticQuery _value, $Res Function(_$_ElasticQuery) _then)
      : super(_value, (v) => _then(v as _$_ElasticQuery));

  @override
  _$_ElasticQuery get _value => super._value as _$_ElasticQuery;

  @override
  $Res call({
    Object? engine = freezed,
    Object? query = freezed,
    Object? precisionTuning = freezed,
    Object? searchPage = freezed,
    Object? filters = freezed,
    Object? searchFields = freezed,
    Object? resultFields = freezed,
    Object? facets = freezed,
    Object? disjunctiveFacets = freezed,
    Object? analytics = freezed,
    Object? groupBy = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$_ElasticQuery(
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
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchFilter>?,
      searchFields: searchFields == freezed
          ? _value._searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchField>?,
      resultFields: resultFields == freezed
          ? _value._resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticResultField>?,
      facets: facets == freezed
          ? _value._facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<String, _ElasticQueryFacet>?,
      disjunctiveFacets: disjunctiveFacets == freezed
          ? _value._disjunctiveFacets
          : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      analytics: analytics == freezed
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as _ElasticAnalytics?,
      groupBy: groupBy == freezed
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as _ElasticGroup?,
      sortBy: sortBy == freezed
          ? _value._sortBy
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
          final List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          final List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          final List<_ElasticResultField>? resultFields,
      @protected
          final Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(ignore: true)
          final List<String>? disjunctiveFacets,
      this.analytics,
      @protected
      @JsonKey(name: "group")
          this.groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          final List<_ElasticSort>? sortBy})
      : assert(engine != null, 'An engine is required to build a query.'),
        assert(
            precisionTuning == null ||
                (precisionTuning != null &&
                    precisionTuning >= 1 &&
                    precisionTuning <= 11),
            'The value of the precision parameter must be an integer between 1 and 11, inclusive.'),
        _filters = filters,
        _searchFields = searchFields,
        _resultFields = resultFields,
        _facets = facets,
        _disjunctiveFacets = disjunctiveFacets,
        _sortBy = sortBy,
        super._();

  factory _$_ElasticQuery.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticQueryFromJson(json);

  /// An object representing an Elastic engine
  @override
  @JsonKey(ignore: true)
  final ElasticEngine? engine;

  /// String or number to match.
  @override
  final String query;

  /// Use the precision parameter of the search API to tune precision
  /// and recall for a query. Learn more in Precision tuning (beta).
  /// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
  ///
  /// The value of the precision parameter must be an integer between 1 and 11, inclusive.
  /// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
  /// Lower values favor recall, while higher values favor precision.
  @override
  @protected
  @JsonKey(name: "precision")
  final int? precisionTuning;

  /// Object to delimit the pagination parameters.
  @override
  @JsonKey(name: "page")
  final _ElasticSearchPage? searchPage;

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  final List<_ElasticSearchFilter>? _filters;

  /// Object to filter documents that contain a specific field value.
  /// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
  @override
  @_ElasticSearchFiltersConverter()
  List<_ElasticSearchFilter>? get filters {
    final value = _filters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Object which restricts a query to search only specific fields.
  final List<_ElasticSearchField>? _searchFields;

  /// Object which restricts a query to search only specific fields.
  @override
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<_ElasticSearchField>? get searchFields {
    final value = _searchFields;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Object to define the fields which appear in search results and how their values are rendered.
  final List<_ElasticResultField>? _resultFields;

  /// Object to define the fields which appear in search results and how their values are rendered.
  @override
  @_ElasticResultFieldsConverter()
  @JsonKey(name: "result_fields")
  List<_ElasticResultField>? get resultFields {
    final value = _resultFields;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Facets are objects which provide the counts of each value or range of values for a field.
  /// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
  final Map<String, _ElasticQueryFacet>? _facets;

  /// Facets are objects which provide the counts of each value or range of values for a field.
  /// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
  @override
  @protected
  Map<String, _ElasticQueryFacet>? get facets {
    final value = _facets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Disjunctive facets are useful when you have many filters in your form, and especially
  /// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
  /// it will return all the available facets as if that filter was not applied.
  /// This is not a native part of Elastic App Search, this is a workaround. In fact, multiple queries are
  /// passed to Elastic and the package concatenates all responses in one response.
  final List<String>? _disjunctiveFacets;

  /// Disjunctive facets are useful when you have many filters in your form, and especially
  /// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
  /// it will return all the available facets as if that filter was not applied.
  /// This is not a native part of Elastic App Search, this is a workaround. In fact, multiple queries are
  /// passed to Elastic and the package concatenates all responses in one response.
  @override
  @JsonKey(ignore: true)
  List<String>? get disjunctiveFacets {
    final value = _disjunctiveFacets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Tags can be used to enrich each query with unique information.
  /// See [https://www.elastic.co/guide/en/app-search/current/tags.html]
  @override
  final _ElasticAnalytics? analytics;

  /// Grouped results based on shared fields
  @override
  @protected
  @JsonKey(name: "group")
  final _ElasticGroup? groupBy;

  /// Object to sort your results in an order other than document score.
  final List<_ElasticSort>? _sortBy;

  /// Object to sort your results in an order other than document score.
  @override
  @_ElasticSortConverter()
  @JsonKey(name: "sort")
  List<_ElasticSort>? get sortBy {
    final value = _sortBy;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElasticQuery(engine: $engine, query: $query, precisionTuning: $precisionTuning, searchPage: $searchPage, filters: $filters, searchFields: $searchFields, resultFields: $resultFields, facets: $facets, disjunctiveFacets: $disjunctiveFacets, analytics: $analytics, groupBy: $groupBy, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticQuery &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.precisionTuning, precisionTuning) &&
            const DeepCollectionEquality()
                .equals(other.searchPage, searchPage) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._searchFields, _searchFields) &&
            const DeepCollectionEquality()
                .equals(other._resultFields, _resultFields) &&
            const DeepCollectionEquality().equals(other._facets, _facets) &&
            const DeepCollectionEquality()
                .equals(other._disjunctiveFacets, _disjunctiveFacets) &&
            const DeepCollectionEquality().equals(other.analytics, analytics) &&
            const DeepCollectionEquality().equals(other.groupBy, groupBy) &&
            const DeepCollectionEquality().equals(other._sortBy, _sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(engine),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(precisionTuning),
      const DeepCollectionEquality().hash(searchPage),
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_searchFields),
      const DeepCollectionEquality().hash(_resultFields),
      const DeepCollectionEquality().hash(_facets),
      const DeepCollectionEquality().hash(_disjunctiveFacets),
      const DeepCollectionEquality().hash(analytics),
      const DeepCollectionEquality().hash(groupBy),
      const DeepCollectionEquality().hash(_sortBy));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticQueryCopyWith<_$_ElasticQuery> get copyWith =>
      __$$_ElasticQueryCopyWithImpl<_$_ElasticQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticQueryToJson(
      this,
    );
  }
}

abstract class _ElasticQuery extends ElasticQuery {
  const factory _ElasticQuery(
      {@JsonKey(ignore: true)
          final ElasticEngine? engine,
      required final String query,
      @protected
      @JsonKey(name: "precision")
          final int? precisionTuning,
      @JsonKey(name: "page")
          final _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
          final List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
          final List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
          final List<_ElasticResultField>? resultFields,
      @protected
          final Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(ignore: true)
          final List<String>? disjunctiveFacets,
      final _ElasticAnalytics? analytics,
      @protected
      @JsonKey(name: "group")
          final _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
          final List<_ElasticSort>? sortBy}) = _$_ElasticQuery;
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

  /// Facets are objects which provide the counts of each value or range of values for a field.
  /// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
  @protected
  Map<String, _ElasticQueryFacet>? get facets;
  @override

  /// Disjunctive facets are useful when you have many filters in your form, and especially
  /// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
  /// it will return all the available facets as if that filter was not applied.
  /// This is not a native part of Elastic App Search, this is a workaround. In fact, multiple queries are
  /// passed to Elastic and the package concatenates all responses in one response.
  @JsonKey(ignore: true)
  List<String>? get disjunctiveFacets;
  @override

  /// Tags can be used to enrich each query with unique information.
  /// See [https://www.elastic.co/guide/en/app-search/current/tags.html]
  _ElasticAnalytics? get analytics;
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
  _$$_ElasticQueryCopyWith<_$_ElasticQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchPage _$_ElasticSearchPageFromJson(Map<String, dynamic> json) {
  return __ElasticSearchPage.fromJson(json);
}

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
abstract class _$$__ElasticSearchPageCopyWith<$Res>
    implements _$ElasticSearchPageCopyWith<$Res> {
  factory _$$__ElasticSearchPageCopyWith(_$__ElasticSearchPage value,
          $Res Function(_$__ElasticSearchPage) then) =
      __$$__ElasticSearchPageCopyWithImpl<$Res>;
  @override
  $Res call({int? size, int? current});
}

/// @nodoc
class __$$__ElasticSearchPageCopyWithImpl<$Res>
    extends __$ElasticSearchPageCopyWithImpl<$Res>
    implements _$$__ElasticSearchPageCopyWith<$Res> {
  __$$__ElasticSearchPageCopyWithImpl(
      _$__ElasticSearchPage _value, $Res Function(_$__ElasticSearchPage) _then)
      : super(_value, (v) => _then(v as _$__ElasticSearchPage));

  @override
  _$__ElasticSearchPage get _value => super._value as _$__ElasticSearchPage;

  @override
  $Res call({
    Object? size = freezed,
    Object? current = freezed,
  }) {
    return _then(_$__ElasticSearchPage(
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
      : assert(size == null || (size != null && size >= 0 && size <= 1000),
            'The number of results per page must be greater than or equal to 1 and less than or equal to 1000.'),
        assert(
            current == null ||
                (current != null && current >= 1 && current <= 100),
            'The current must be greater than or equal to 1 and less than or equal to 100.');

  factory _$__ElasticSearchPage.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticSearchPageFromJson(json);

  /// Number of results per page.
  /// Must be greater than or equal to 1 and less than or equal to 1000.
  /// Defaults to 10.
  @override
  @JsonKey()
  final int? size;

  /// Page number of results to return.
  /// Must be greater than or equal to 1 and less than or equal to 100.
  /// Defaults to 1.
  @override
  @JsonKey()
  final int? current;

  @override
  String toString() {
    return '_ElasticSearchPage(size: $size, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticSearchPage &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticSearchPageCopyWith<_$__ElasticSearchPage> get copyWith =>
      __$$__ElasticSearchPageCopyWithImpl<_$__ElasticSearchPage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSearchPageToJson(
      this,
    );
  }
}

abstract class __ElasticSearchPage implements _ElasticSearchPage {
  const factory __ElasticSearchPage({final int? size, final int? current}) =
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
  _$$__ElasticSearchPageCopyWith<_$__ElasticSearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchFilter _$_ElasticSearchFilterFromJson(Map<String, dynamic> json) {
  return __ElasticSearchFilter.fromJson(json);
}

/// @nodoc
mixin _$_ElasticSearchFilter {
  /// The type of the filter, which will determine if it's an 'OR', 'AND' or 'NOT' condition.
  _ElasticFilterType get type => throw _privateConstructorUsedError;

  /// The field from your schema upon which to apply your filter.
  String get name => throw _privateConstructorUsedError;

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  dynamic get value => throw _privateConstructorUsedError;

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
  $Res call({_ElasticFilterType type, String name, dynamic value});
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
    Object? type = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as _ElasticFilterType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$__ElasticSearchFilterCopyWith<$Res>
    implements _$ElasticSearchFilterCopyWith<$Res> {
  factory _$$__ElasticSearchFilterCopyWith(_$__ElasticSearchFilter value,
          $Res Function(_$__ElasticSearchFilter) then) =
      __$$__ElasticSearchFilterCopyWithImpl<$Res>;
  @override
  $Res call({_ElasticFilterType type, String name, dynamic value});
}

/// @nodoc
class __$$__ElasticSearchFilterCopyWithImpl<$Res>
    extends __$ElasticSearchFilterCopyWithImpl<$Res>
    implements _$$__ElasticSearchFilterCopyWith<$Res> {
  __$$__ElasticSearchFilterCopyWithImpl(_$__ElasticSearchFilter _value,
      $Res Function(_$__ElasticSearchFilter) _then)
      : super(_value, (v) => _then(v as _$__ElasticSearchFilter));

  @override
  _$__ElasticSearchFilter get _value => super._value as _$__ElasticSearchFilter;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$__ElasticSearchFilter(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as _ElasticFilterType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticSearchFilter implements __ElasticSearchFilter {
  const _$__ElasticSearchFilter(
      {this.type = _ElasticFilterType.all,
      required this.name,
      required this.value});

  factory _$__ElasticSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticSearchFilterFromJson(json);

  /// The type of the filter, which will determine if it's an 'OR', 'AND' or 'NOT' condition.
  @override
  @JsonKey()
  final _ElasticFilterType type;

  /// The field from your schema upon which to apply your filter.
  @override
  final String name;

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  @override
  final dynamic value;

  @override
  String toString() {
    return '_ElasticSearchFilter(type: $type, name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticSearchFilter &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticSearchFilterCopyWith<_$__ElasticSearchFilter> get copyWith =>
      __$$__ElasticSearchFilterCopyWithImpl<_$__ElasticSearchFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSearchFilterToJson(
      this,
    );
  }
}

abstract class __ElasticSearchFilter implements _ElasticSearchFilter {
  const factory __ElasticSearchFilter(
      {final _ElasticFilterType type,
      required final String name,
      required final dynamic value}) = _$__ElasticSearchFilter;

  factory __ElasticSearchFilter.fromJson(Map<String, dynamic> json) =
      _$__ElasticSearchFilter.fromJson;

  @override

  /// The type of the filter, which will determine if it's an 'OR', 'AND' or 'NOT' condition.
  _ElasticFilterType get type;
  @override

  /// The field from your schema upon which to apply your filter.
  String get name;
  @override

  /// The value upon which to filter. The value must be an exact match,
  /// and can be a String, a boolean, a number, or an array of these types.
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticSearchFilterCopyWith<_$__ElasticSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticDateRangeFilter _$_ElasticDateRangeFilterFromJson(
    Map<String, dynamic> json) {
  return __ElasticDateRangeFilter.fromJson(json);
}

/// @nodoc
mixin _$_ElasticDateRangeFilter {
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticDateRangeFilterCopyWith<_ElasticDateRangeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticDateRangeFilterCopyWith<$Res> {
  factory _$ElasticDateRangeFilterCopyWith(_ElasticDateRangeFilter value,
          $Res Function(_ElasticDateRangeFilter) then) =
      __$ElasticDateRangeFilterCopyWithImpl<$Res>;
  $Res call({String? from, String? to});
}

/// @nodoc
class __$ElasticDateRangeFilterCopyWithImpl<$Res>
    implements _$ElasticDateRangeFilterCopyWith<$Res> {
  __$ElasticDateRangeFilterCopyWithImpl(this._value, this._then);

  final _ElasticDateRangeFilter _value;
  // ignore: unused_field
  final $Res Function(_ElasticDateRangeFilter) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$__ElasticDateRangeFilterCopyWith<$Res>
    implements _$ElasticDateRangeFilterCopyWith<$Res> {
  factory _$$__ElasticDateRangeFilterCopyWith(_$__ElasticDateRangeFilter value,
          $Res Function(_$__ElasticDateRangeFilter) then) =
      __$$__ElasticDateRangeFilterCopyWithImpl<$Res>;
  @override
  $Res call({String? from, String? to});
}

/// @nodoc
class __$$__ElasticDateRangeFilterCopyWithImpl<$Res>
    extends __$ElasticDateRangeFilterCopyWithImpl<$Res>
    implements _$$__ElasticDateRangeFilterCopyWith<$Res> {
  __$$__ElasticDateRangeFilterCopyWithImpl(_$__ElasticDateRangeFilter _value,
      $Res Function(_$__ElasticDateRangeFilter) _then)
      : super(_value, (v) => _then(v as _$__ElasticDateRangeFilter));

  @override
  _$__ElasticDateRangeFilter get _value =>
      super._value as _$__ElasticDateRangeFilter;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$__ElasticDateRangeFilter(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticDateRangeFilter implements __ElasticDateRangeFilter {
  const _$__ElasticDateRangeFilter({this.from, this.to});

  factory _$__ElasticDateRangeFilter.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticDateRangeFilterFromJson(json);

  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return '_ElasticDateRangeFilter(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticDateRangeFilter &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticDateRangeFilterCopyWith<_$__ElasticDateRangeFilter>
      get copyWith =>
          __$$__ElasticDateRangeFilterCopyWithImpl<_$__ElasticDateRangeFilter>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticDateRangeFilterToJson(
      this,
    );
  }
}

abstract class __ElasticDateRangeFilter implements _ElasticDateRangeFilter {
  const factory __ElasticDateRangeFilter(
      {final String? from, final String? to}) = _$__ElasticDateRangeFilter;

  factory __ElasticDateRangeFilter.fromJson(Map<String, dynamic> json) =
      _$__ElasticDateRangeFilter.fromJson;

  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticDateRangeFilterCopyWith<_$__ElasticDateRangeFilter>
      get copyWith => throw _privateConstructorUsedError;
}

_ElasticNumberRangeFilter _$_ElasticNumberRangeFilterFromJson(
    Map<String, dynamic> json) {
  return __ElasticNumberRangeFilter.fromJson(json);
}

/// @nodoc
mixin _$_ElasticNumberRangeFilter {
  double? get from => throw _privateConstructorUsedError;
  double? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticNumberRangeFilterCopyWith<_ElasticNumberRangeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticNumberRangeFilterCopyWith<$Res> {
  factory _$ElasticNumberRangeFilterCopyWith(_ElasticNumberRangeFilter value,
          $Res Function(_ElasticNumberRangeFilter) then) =
      __$ElasticNumberRangeFilterCopyWithImpl<$Res>;
  $Res call({double? from, double? to});
}

/// @nodoc
class __$ElasticNumberRangeFilterCopyWithImpl<$Res>
    implements _$ElasticNumberRangeFilterCopyWith<$Res> {
  __$ElasticNumberRangeFilterCopyWithImpl(this._value, this._then);

  final _ElasticNumberRangeFilter _value;
  // ignore: unused_field
  final $Res Function(_ElasticNumberRangeFilter) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$__ElasticNumberRangeFilterCopyWith<$Res>
    implements _$ElasticNumberRangeFilterCopyWith<$Res> {
  factory _$$__ElasticNumberRangeFilterCopyWith(
          _$__ElasticNumberRangeFilter value,
          $Res Function(_$__ElasticNumberRangeFilter) then) =
      __$$__ElasticNumberRangeFilterCopyWithImpl<$Res>;
  @override
  $Res call({double? from, double? to});
}

/// @nodoc
class __$$__ElasticNumberRangeFilterCopyWithImpl<$Res>
    extends __$ElasticNumberRangeFilterCopyWithImpl<$Res>
    implements _$$__ElasticNumberRangeFilterCopyWith<$Res> {
  __$$__ElasticNumberRangeFilterCopyWithImpl(
      _$__ElasticNumberRangeFilter _value,
      $Res Function(_$__ElasticNumberRangeFilter) _then)
      : super(_value, (v) => _then(v as _$__ElasticNumberRangeFilter));

  @override
  _$__ElasticNumberRangeFilter get _value =>
      super._value as _$__ElasticNumberRangeFilter;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$__ElasticNumberRangeFilter(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticNumberRangeFilter implements __ElasticNumberRangeFilter {
  const _$__ElasticNumberRangeFilter({this.from, this.to});

  factory _$__ElasticNumberRangeFilter.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticNumberRangeFilterFromJson(json);

  @override
  final double? from;
  @override
  final double? to;

  @override
  String toString() {
    return '_ElasticNumberRangeFilter(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticNumberRangeFilter &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticNumberRangeFilterCopyWith<_$__ElasticNumberRangeFilter>
      get copyWith => __$$__ElasticNumberRangeFilterCopyWithImpl<
          _$__ElasticNumberRangeFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticNumberRangeFilterToJson(
      this,
    );
  }
}

abstract class __ElasticNumberRangeFilter implements _ElasticNumberRangeFilter {
  const factory __ElasticNumberRangeFilter(
      {final double? from, final double? to}) = _$__ElasticNumberRangeFilter;

  factory __ElasticNumberRangeFilter.fromJson(Map<String, dynamic> json) =
      _$__ElasticNumberRangeFilter.fromJson;

  @override
  double? get from;
  @override
  double? get to;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticNumberRangeFilterCopyWith<_$__ElasticNumberRangeFilter>
      get copyWith => throw _privateConstructorUsedError;
}

_ElasticGeoFilter _$_ElasticGeoFilterFromJson(Map<String, dynamic> json) {
  return __ElasticGeoFilter.fromJson(json);
}

/// @nodoc
mixin _$_ElasticGeoFilter {
  @_LatLongConverter()
  LatLong? get center => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  GeoUnit get unit => throw _privateConstructorUsedError;
  double? get from => throw _privateConstructorUsedError;
  double? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElasticGeoFilterCopyWith<_ElasticGeoFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticGeoFilterCopyWith<$Res> {
  factory _$ElasticGeoFilterCopyWith(
          _ElasticGeoFilter value, $Res Function(_ElasticGeoFilter) then) =
      __$ElasticGeoFilterCopyWithImpl<$Res>;
  $Res call(
      {@_LatLongConverter() LatLong? center,
      double? distance,
      GeoUnit unit,
      double? from,
      double? to});

  $LatLongCopyWith<$Res>? get center;
}

/// @nodoc
class __$ElasticGeoFilterCopyWithImpl<$Res>
    implements _$ElasticGeoFilterCopyWith<$Res> {
  __$ElasticGeoFilterCopyWithImpl(this._value, this._then);

  final _ElasticGeoFilter _value;
  // ignore: unused_field
  final $Res Function(_ElasticGeoFilter) _then;

  @override
  $Res call({
    Object? center = freezed,
    Object? distance = freezed,
    Object? unit = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      center: center == freezed
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $LatLongCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $LatLongCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value));
    });
  }
}

/// @nodoc
abstract class _$$__ElasticGeoFilterCopyWith<$Res>
    implements _$ElasticGeoFilterCopyWith<$Res> {
  factory _$$__ElasticGeoFilterCopyWith(_$__ElasticGeoFilter value,
          $Res Function(_$__ElasticGeoFilter) then) =
      __$$__ElasticGeoFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@_LatLongConverter() LatLong? center,
      double? distance,
      GeoUnit unit,
      double? from,
      double? to});

  @override
  $LatLongCopyWith<$Res>? get center;
}

/// @nodoc
class __$$__ElasticGeoFilterCopyWithImpl<$Res>
    extends __$ElasticGeoFilterCopyWithImpl<$Res>
    implements _$$__ElasticGeoFilterCopyWith<$Res> {
  __$$__ElasticGeoFilterCopyWithImpl(
      _$__ElasticGeoFilter _value, $Res Function(_$__ElasticGeoFilter) _then)
      : super(_value, (v) => _then(v as _$__ElasticGeoFilter));

  @override
  _$__ElasticGeoFilter get _value => super._value as _$__ElasticGeoFilter;

  @override
  $Res call({
    Object? center = freezed,
    Object? distance = freezed,
    Object? unit = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$__ElasticGeoFilter(
      center: center == freezed
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$__ElasticGeoFilter implements __ElasticGeoFilter {
  const _$__ElasticGeoFilter(
      {@_LatLongConverter() this.center,
      this.distance,
      required this.unit,
      this.from,
      this.to})
      : assert(center != null, 'center is required.');

  factory _$__ElasticGeoFilter.fromJson(Map<String, dynamic> json) =>
      _$$__ElasticGeoFilterFromJson(json);

  @override
  @_LatLongConverter()
  final LatLong? center;
  @override
  final double? distance;
  @override
  final GeoUnit unit;
  @override
  final double? from;
  @override
  final double? to;

  @override
  String toString() {
    return '_ElasticGeoFilter(center: $center, distance: $distance, unit: $unit, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticGeoFilter &&
            const DeepCollectionEquality().equals(other.center, center) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(center),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticGeoFilterCopyWith<_$__ElasticGeoFilter> get copyWith =>
      __$$__ElasticGeoFilterCopyWithImpl<_$__ElasticGeoFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticGeoFilterToJson(
      this,
    );
  }
}

abstract class __ElasticGeoFilter implements _ElasticGeoFilter {
  const factory __ElasticGeoFilter(
      {@_LatLongConverter() final LatLong? center,
      final double? distance,
      required final GeoUnit unit,
      final double? from,
      final double? to}) = _$__ElasticGeoFilter;

  factory __ElasticGeoFilter.fromJson(Map<String, dynamic> json) =
      _$__ElasticGeoFilter.fromJson;

  @override
  @_LatLongConverter()
  LatLong? get center;
  @override
  double? get distance;
  @override
  GeoUnit get unit;
  @override
  double? get from;
  @override
  double? get to;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticGeoFilterCopyWith<_$__ElasticGeoFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchField _$_ElasticSearchFieldFromJson(Map<String, dynamic> json) {
  return __ElasticSearchField.fromJson(json);
}

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
abstract class _$$__ElasticSearchFieldCopyWith<$Res>
    implements _$ElasticSearchFieldCopyWith<$Res> {
  factory _$$__ElasticSearchFieldCopyWith(_$__ElasticSearchField value,
          $Res Function(_$__ElasticSearchField) then) =
      __$$__ElasticSearchFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? weight});
}

/// @nodoc
class __$$__ElasticSearchFieldCopyWithImpl<$Res>
    extends __$ElasticSearchFieldCopyWithImpl<$Res>
    implements _$$__ElasticSearchFieldCopyWith<$Res> {
  __$$__ElasticSearchFieldCopyWithImpl(_$__ElasticSearchField _value,
      $Res Function(_$__ElasticSearchField) _then)
      : super(_value, (v) => _then(v as _$__ElasticSearchField));

  @override
  _$__ElasticSearchField get _value => super._value as _$__ElasticSearchField;

  @override
  $Res call({
    Object? name = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$__ElasticSearchField(
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

  /// The name of the field. It must exist within your Engine schema and be of type text.
  @override
  final String name;

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  @override
  final int? weight;

  @override
  String toString() {
    return '_ElasticSearchField(name: $name, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticSearchField &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticSearchFieldCopyWith<_$__ElasticSearchField> get copyWith =>
      __$$__ElasticSearchFieldCopyWithImpl<_$__ElasticSearchField>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSearchFieldToJson(
      this,
    );
  }
}

abstract class __ElasticSearchField implements _ElasticSearchField {
  const factory __ElasticSearchField(
      {required final String name, final int? weight}) = _$__ElasticSearchField;

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
  _$$__ElasticSearchFieldCopyWith<_$__ElasticSearchField> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticResultField _$_ElasticResultFieldFromJson(Map<String, dynamic> json) {
  return __ElasticResultField.fromJson(json);
}

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
abstract class _$$__ElasticResultFieldCopyWith<$Res>
    implements _$ElasticResultFieldCopyWith<$Res> {
  factory _$$__ElasticResultFieldCopyWith(_$__ElasticResultField value,
          $Res Function(_$__ElasticResultField) then) =
      __$$__ElasticResultFieldCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? rawSize, int? snippetSize, bool fallback});
}

/// @nodoc
class __$$__ElasticResultFieldCopyWithImpl<$Res>
    extends __$ElasticResultFieldCopyWithImpl<$Res>
    implements _$$__ElasticResultFieldCopyWith<$Res> {
  __$$__ElasticResultFieldCopyWithImpl(_$__ElasticResultField _value,
      $Res Function(_$__ElasticResultField) _then)
      : super(_value, (v) => _then(v as _$__ElasticResultField));

  @override
  _$__ElasticResultField get _value => super._value as _$__ElasticResultField;

  @override
  $Res call({
    Object? name = freezed,
    Object? rawSize = freezed,
    Object? snippetSize = freezed,
    Object? fallback = freezed,
  }) {
    return _then(_$__ElasticResultField(
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

  /// The name of the field. It must exist within your Engine schema and be of type text.
  @override
  final String name;

  /// Length of the return value.
  /// Must be at least 20; defaults to the entire text field.
  /// If given for a different field type other than text, it will be silently ignored.
  @override
  final int? rawSize;

  /// Length of the snippet returned.
  /// Must be at least 20; defaults to 100.
  @override
  final int? snippetSize;

  /// If true, return the raw text field if no snippet is found. If false, only use snippets.
  @override
  @JsonKey()
  final bool fallback;

  @override
  String toString() {
    return '_ElasticResultField(name: $name, rawSize: $rawSize, snippetSize: $snippetSize, fallback: $fallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticResultField &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rawSize, rawSize) &&
            const DeepCollectionEquality()
                .equals(other.snippetSize, snippetSize) &&
            const DeepCollectionEquality().equals(other.fallback, fallback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rawSize),
      const DeepCollectionEquality().hash(snippetSize),
      const DeepCollectionEquality().hash(fallback));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticResultFieldCopyWith<_$__ElasticResultField> get copyWith =>
      __$$__ElasticResultFieldCopyWithImpl<_$__ElasticResultField>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticResultFieldToJson(
      this,
    );
  }
}

abstract class __ElasticResultField implements _ElasticResultField {
  const factory __ElasticResultField(
      {required final String name,
      final int? rawSize,
      final int? snippetSize,
      final bool fallback}) = _$__ElasticResultField;

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
  _$$__ElasticResultFieldCopyWith<_$__ElasticResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticGroup _$_ElasticGroupFromJson(Map<String, dynamic> json) {
  return __ElasticGroup.fromJson(json);
}

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
abstract class _$$__ElasticGroupCopyWith<$Res>
    implements _$ElasticGroupCopyWith<$Res> {
  factory _$$__ElasticGroupCopyWith(
          _$__ElasticGroup value, $Res Function(_$__ElasticGroup) then) =
      __$$__ElasticGroupCopyWithImpl<$Res>;
  @override
  $Res call({String field, int? size});
}

/// @nodoc
class __$$__ElasticGroupCopyWithImpl<$Res>
    extends __$ElasticGroupCopyWithImpl<$Res>
    implements _$$__ElasticGroupCopyWith<$Res> {
  __$$__ElasticGroupCopyWithImpl(
      _$__ElasticGroup _value, $Res Function(_$__ElasticGroup) _then)
      : super(_value, (v) => _then(v as _$__ElasticGroup));

  @override
  _$__ElasticGroup get _value => super._value as _$__ElasticGroup;

  @override
  $Res call({
    Object? field = freezed,
    Object? size = freezed,
  }) {
    return _then(_$__ElasticGroup(
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

  /// Field name to group results on.
  @override
  final String field;

  /// Number of results to be included in the _group key of the returned document.
  /// Can be between 1 and 10. Defaults to 10.
  @override
  final int? size;

  @override
  String toString() {
    return '_ElasticGroup(field: $field, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticGroup &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticGroupCopyWith<_$__ElasticGroup> get copyWith =>
      __$$__ElasticGroupCopyWithImpl<_$__ElasticGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticGroupToJson(
      this,
    );
  }
}

abstract class __ElasticGroup implements _ElasticGroup {
  const factory __ElasticGroup({required final String field, final int? size}) =
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
  _$$__ElasticGroupCopyWith<_$__ElasticGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSort _$_ElasticSortFromJson(Map<String, dynamic> json) {
  return __ElasticSort.fromJson(json);
}

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
abstract class _$$__ElasticSortCopyWith<$Res>
    implements _$ElasticSortCopyWith<$Res> {
  factory _$$__ElasticSortCopyWith(
          _$__ElasticSort value, $Res Function(_$__ElasticSort) then) =
      __$$__ElasticSortCopyWithImpl<$Res>;
  @override
  $Res call({String field, bool descending});
}

/// @nodoc
class __$$__ElasticSortCopyWithImpl<$Res>
    extends __$ElasticSortCopyWithImpl<$Res>
    implements _$$__ElasticSortCopyWith<$Res> {
  __$$__ElasticSortCopyWithImpl(
      _$__ElasticSort _value, $Res Function(_$__ElasticSort) _then)
      : super(_value, (v) => _then(v as _$__ElasticSort));

  @override
  _$__ElasticSort get _value => super._value as _$__ElasticSort;

  @override
  $Res call({
    Object? field = freezed,
    Object? descending = freezed,
  }) {
    return _then(_$__ElasticSort(
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

  /// Field name to sort results
  @override
  final String field;
  @override
  @JsonKey()
  final bool descending;

  @override
  String toString() {
    return '_ElasticSort(field: $field, descending: $descending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ElasticSort &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality()
                .equals(other.descending, descending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(descending));

  @JsonKey(ignore: true)
  @override
  _$$__ElasticSortCopyWith<_$__ElasticSort> get copyWith =>
      __$$__ElasticSortCopyWithImpl<_$__ElasticSort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ElasticSortToJson(
      this,
    );
  }
}

abstract class __ElasticSort implements _ElasticSort {
  const factory __ElasticSort(
      {required final String field, final bool descending}) = _$__ElasticSort;

  factory __ElasticSort.fromJson(Map<String, dynamic> json) =
      _$__ElasticSort.fromJson;

  @override

  /// Field name to sort results
  String get field;
  @override
  bool get descending;
  @override
  @JsonKey(ignore: true)
  _$$__ElasticSortCopyWith<_$__ElasticSort> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResponse _$ElasticResponseFromJson(Map<String, dynamic> json) {
  return _ElasticResponse.fromJson(json);
}

/// @nodoc
mixin _$ElasticResponse {
  /// Object delimiting the results meta data.
  ElasticResponseMeta get meta => throw _privateConstructorUsedError;

  /// Array of results matching the search.
  List<ElasticResult> get results => throw _privateConstructorUsedError;

  /// Map of facets passed to the query
  @JsonKey(name: "facets")
  Map<String, List<ElasticFacet>>? get rawFacets =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {ElasticResponseMeta meta,
      List<ElasticResult> results,
      @JsonKey(name: "facets") Map<String, List<ElasticFacet>>? rawFacets});

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
    Object? rawFacets = freezed,
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
      rawFacets: rawFacets == freezed
          ? _value.rawFacets
          : rawFacets // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ElasticFacet>>?,
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
abstract class _$$_ElasticResponseCopyWith<$Res>
    implements $ElasticResponseCopyWith<$Res> {
  factory _$$_ElasticResponseCopyWith(
          _$_ElasticResponse value, $Res Function(_$_ElasticResponse) then) =
      __$$_ElasticResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {ElasticResponseMeta meta,
      List<ElasticResult> results,
      @JsonKey(name: "facets") Map<String, List<ElasticFacet>>? rawFacets});

  @override
  $ElasticResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_ElasticResponseCopyWithImpl<$Res>
    extends _$ElasticResponseCopyWithImpl<$Res>
    implements _$$_ElasticResponseCopyWith<$Res> {
  __$$_ElasticResponseCopyWithImpl(
      _$_ElasticResponse _value, $Res Function(_$_ElasticResponse) _then)
      : super(_value, (v) => _then(v as _$_ElasticResponse));

  @override
  _$_ElasticResponse get _value => super._value as _$_ElasticResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? results = freezed,
    Object? rawFacets = freezed,
  }) {
    return _then(_$_ElasticResponse(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMeta,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>,
      rawFacets: rawFacets == freezed
          ? _value._rawFacets
          : rawFacets // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ElasticFacet>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElasticResponse extends _ElasticResponse {
  _$_ElasticResponse(
      {required this.meta,
      required final List<ElasticResult> results,
      @JsonKey(name: "facets")
          final Map<String, List<ElasticFacet>>? rawFacets})
      : _results = results,
        _rawFacets = rawFacets,
        super._();

  factory _$_ElasticResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResponseFromJson(json);

  /// Object delimiting the results meta data.
  @override
  final ElasticResponseMeta meta;

  /// Array of results matching the search.
  final List<ElasticResult> _results;

  /// Array of results matching the search.
  @override
  List<ElasticResult> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Map of facets passed to the query
  final Map<String, List<ElasticFacet>>? _rawFacets;

  /// Map of facets passed to the query
  @override
  @JsonKey(name: "facets")
  Map<String, List<ElasticFacet>>? get rawFacets {
    final value = _rawFacets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ElasticResponse(meta: $meta, results: $results, rawFacets: $rawFacets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticResponse &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other._rawFacets, _rawFacets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(_rawFacets));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticResponseCopyWith<_$_ElasticResponse> get copyWith =>
      __$$_ElasticResponseCopyWithImpl<_$_ElasticResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResponseToJson(
      this,
    );
  }
}

abstract class _ElasticResponse extends ElasticResponse {
  factory _ElasticResponse(
          {required final ElasticResponseMeta meta,
          required final List<ElasticResult> results,
          @JsonKey(name: "facets")
              final Map<String, List<ElasticFacet>>? rawFacets}) =
      _$_ElasticResponse;
  _ElasticResponse._() : super._();

  factory _ElasticResponse.fromJson(Map<String, dynamic> json) =
      _$_ElasticResponse.fromJson;

  @override

  /// Object delimiting the results meta data.
  ElasticResponseMeta get meta;
  @override

  /// Array of results matching the search.
  List<ElasticResult> get results;
  @override

  /// Map of facets passed to the query
  @JsonKey(name: "facets")
  Map<String, List<ElasticFacet>>? get rawFacets;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticResponseCopyWith<_$_ElasticResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResponseMeta _$ElasticResponseMetaFromJson(Map<String, dynamic> json) {
  return _ElasticResponseMeta.fromJson(json);
}

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
abstract class _$$_ElasticResponseMetaCopyWith<$Res>
    implements $ElasticResponseMetaCopyWith<$Res> {
  factory _$$_ElasticResponseMetaCopyWith(_$_ElasticResponseMeta value,
          $Res Function(_$_ElasticResponseMeta) then) =
      __$$_ElasticResponseMetaCopyWithImpl<$Res>;
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
class __$$_ElasticResponseMetaCopyWithImpl<$Res>
    extends _$ElasticResponseMetaCopyWithImpl<$Res>
    implements _$$_ElasticResponseMetaCopyWith<$Res> {
  __$$_ElasticResponseMetaCopyWithImpl(_$_ElasticResponseMeta _value,
      $Res Function(_$_ElasticResponseMeta) _then)
      : super(_value, (v) => _then(v as _$_ElasticResponseMeta));

  @override
  _$_ElasticResponseMeta get _value => super._value as _$_ElasticResponseMeta;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? warnings = freezed,
    Object? alerts = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_ElasticResponseMeta(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      warnings: warnings == freezed
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      alerts: alerts == freezed
          ? _value._alerts
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
      required final List<dynamic> warnings,
      required final List<dynamic> alerts,
      required this.page})
      : _warnings = warnings,
        _alerts = alerts;

  factory _$_ElasticResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResponseMetaFromJson(json);

  /// String ID representing the request. Guaranteed to be unique.
  @override
  @JsonKey(name: "request_id")
  final String requestId;

  /// Array of warnings for the query.
  ///
  /// Included with error responses and success responses, so inspect all responses for warnings.
  final List<dynamic> _warnings;

  /// Array of warnings for the query.
  ///
  /// Included with error responses and success responses, so inspect all responses for warnings.
  @override
  List<dynamic> get warnings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warnings);
  }

  /// Array of alerts for your deployment.
  ///
  /// Included with error responses and success responses, so inspect all responses for alerts.
  final List<dynamic> _alerts;

  /// Array of alerts for your deployment.
  ///
  /// Included with error responses and success responses, so inspect all responses for alerts.
  @override
  List<dynamic> get alerts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  /// Object delimiting the pagination meta data.
  @override
  final ElasticResponseMetaPage page;

  @override
  String toString() {
    return 'ElasticResponseMeta(requestId: $requestId, warnings: $warnings, alerts: $alerts, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticResponseMeta &&
            const DeepCollectionEquality().equals(other.requestId, requestId) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestId),
      const DeepCollectionEquality().hash(_warnings),
      const DeepCollectionEquality().hash(_alerts),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticResponseMetaCopyWith<_$_ElasticResponseMeta> get copyWith =>
      __$$_ElasticResponseMetaCopyWithImpl<_$_ElasticResponseMeta>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResponseMetaToJson(
      this,
    );
  }
}

abstract class _ElasticResponseMeta implements ElasticResponseMeta {
  factory _ElasticResponseMeta(
      {@JsonKey(name: "request_id") required final String requestId,
      required final List<dynamic> warnings,
      required final List<dynamic> alerts,
      required final ElasticResponseMetaPage page}) = _$_ElasticResponseMeta;

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
  _$$_ElasticResponseMetaCopyWith<_$_ElasticResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResponseMetaPage _$ElasticResponseMetaPageFromJson(
    Map<String, dynamic> json) {
  return _ElasticResponseMetaPage.fromJson(json);
}

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
abstract class _$$_ElasticResponseMetaPageCopyWith<$Res>
    implements $ElasticResponseMetaPageCopyWith<$Res> {
  factory _$$_ElasticResponseMetaPageCopyWith(_$_ElasticResponseMetaPage value,
          $Res Function(_$_ElasticResponseMetaPage) then) =
      __$$_ElasticResponseMetaPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int current,
      int size,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class __$$_ElasticResponseMetaPageCopyWithImpl<$Res>
    extends _$ElasticResponseMetaPageCopyWithImpl<$Res>
    implements _$$_ElasticResponseMetaPageCopyWith<$Res> {
  __$$_ElasticResponseMetaPageCopyWithImpl(_$_ElasticResponseMetaPage _value,
      $Res Function(_$_ElasticResponseMetaPage) _then)
      : super(_value, (v) => _then(v as _$_ElasticResponseMetaPage));

  @override
  _$_ElasticResponseMetaPage get _value =>
      super._value as _$_ElasticResponseMetaPage;

  @override
  $Res call({
    Object? current = freezed,
    Object? size = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_ElasticResponseMetaPage(
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

  /// Number representing the current page of results.
  @override
  final int current;

  /// Number representing the results per page.
  @override
  final int size;

  /// Number representing the total pages of results.
  /// Value is 0 when you paginate beyond 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
  @override
  @JsonKey(name: "total_pages")
  final int totalPages;

  /// Number representing the total results across all pages.
  ///
  /// The values 0 through 9999 are exact counts.
  ///
  /// The value 10000 is a pseudo keyword representing greater than or equal to 10,000 results.
  ///
  /// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-display-total]
  /// and [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-count-documents]
  @override
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
            other is _$_ElasticResponseMetaPage &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticResponseMetaPageCopyWith<_$_ElasticResponseMetaPage>
      get copyWith =>
          __$$_ElasticResponseMetaPageCopyWithImpl<_$_ElasticResponseMetaPage>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResponseMetaPageToJson(
      this,
    );
  }
}

abstract class _ElasticResponseMetaPage implements ElasticResponseMetaPage {
  factory _ElasticResponseMetaPage(
          {required final int current,
          required final int size,
          @JsonKey(name: "total_pages") required final int totalPages,
          @JsonKey(name: "total_results") required final int totalResults}) =
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
  _$$_ElasticResponseMetaPageCopyWith<_$_ElasticResponseMetaPage>
      get copyWith => throw _privateConstructorUsedError;
}

ElasticResultMeta _$ElasticResultMetaFromJson(Map<String, dynamic> json) {
  return _ElasticResultMeta.fromJson(json);
}

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
abstract class _$$_ElasticResultMetaCopyWith<$Res>
    implements $ElasticResultMetaCopyWith<$Res> {
  factory _$$_ElasticResultMetaCopyWith(_$_ElasticResultMeta value,
          $Res Function(_$_ElasticResultMeta) then) =
      __$$_ElasticResultMetaCopyWithImpl<$Res>;
  @override
  $Res call({double? score});
}

/// @nodoc
class __$$_ElasticResultMetaCopyWithImpl<$Res>
    extends _$ElasticResultMetaCopyWithImpl<$Res>
    implements _$$_ElasticResultMetaCopyWith<$Res> {
  __$$_ElasticResultMetaCopyWithImpl(
      _$_ElasticResultMeta _value, $Res Function(_$_ElasticResultMeta) _then)
      : super(_value, (v) => _then(v as _$_ElasticResultMeta));

  @override
  _$_ElasticResultMeta get _value => super._value as _$_ElasticResultMeta;

  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_$_ElasticResultMeta(
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

  /// The relevance of the result
  @override
  final double? score;

  @override
  String toString() {
    return 'ElasticResultMeta(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticResultMeta &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticResultMetaCopyWith<_$_ElasticResultMeta> get copyWith =>
      __$$_ElasticResultMetaCopyWithImpl<_$_ElasticResultMeta>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultMetaToJson(
      this,
    );
  }
}

abstract class _ElasticResultMeta implements ElasticResultMeta {
  factory _ElasticResultMeta({final double? score}) = _$_ElasticResultMeta;

  factory _ElasticResultMeta.fromJson(Map<String, dynamic> json) =
      _$_ElasticResultMeta.fromJson;

  @override

  /// The relevance of the result
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticResultMetaCopyWith<_$_ElasticResultMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResult _$ElasticResultFromJson(Map<String, dynamic> json) {
  return _ElasticResult.fromJson(json);
}

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
abstract class _$$_ElasticResultCopyWith<$Res>
    implements $ElasticResultCopyWith<$Res> {
  factory _$$_ElasticResultCopyWith(
          _$_ElasticResult value, $Res Function(_$_ElasticResult) then) =
      __$$_ElasticResultCopyWithImpl<$Res>;
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
class __$$_ElasticResultCopyWithImpl<$Res>
    extends _$ElasticResultCopyWithImpl<$Res>
    implements _$$_ElasticResultCopyWith<$Res> {
  __$$_ElasticResultCopyWithImpl(
      _$_ElasticResult _value, $Res Function(_$_ElasticResult) _then)
      : super(_value, (v) => _then(v as _$_ElasticResult));

  @override
  _$_ElasticResult get _value => super._value as _$_ElasticResult;

  @override
  $Res call({
    Object? data = freezed,
    Object? snippets = freezed,
    Object? meta = freezed,
    Object? group = freezed,
    Object? groupKey = freezed,
  }) {
    return _then(_$_ElasticResult(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      snippets: snippets == freezed
          ? _value._snippets
          : snippets // ignore: cast_nullable_to_non_nullable
              as Map<String, ElasticResultSnippet>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResultMeta,
      group: group == freezed
          ? _value._group
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
      {final Map<String, dynamic>? data,
      final Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") required this.meta,
      @JsonKey(name: "_group") final List<ElasticResult>? group,
      @JsonKey(name: "_group_key") this.groupKey})
      : _data = data,
        _snippets = snippets,
        _group = group,
        super._();

  factory _$_ElasticResult.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultFromJson(json);

  /// A map of the raw data of the document, containing the fields
  /// requested in the [ElasticResultField] passed to the query
  ///
  /// You must handle the result of this [Map] on your side, please check
  /// the example of the package to learn more about this.
  final Map<String, dynamic>? _data;

  /// A map of the raw data of the document, containing the fields
  /// requested in the [ElasticResultField] passed to the query
  ///
  /// You must handle the result of this [Map] on your side, please check
  /// the example of the package to learn more about this.
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// A map of the snippets, please check the documentation of
  /// [ElasticResultSnippet] to learn more.
  final Map<String, ElasticResultSnippet>? _snippets;

  /// A map of the snippets, please check the documentation of
  /// [ElasticResultSnippet] to learn more.
  @override
  Map<String, ElasticResultSnippet>? get snippets {
    final value = _snippets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// An object containing information about a given result
  @override
  @JsonKey(name: "_meta")
  final ElasticResultMeta meta;

  /// An array of the [ElasticResult] related to this result
  /// if a group has been set on the query
  final List<ElasticResult>? _group;

  /// An array of the [ElasticResult] related to this result
  /// if a group has been set on the query
  @override
  @JsonKey(name: "_group")
  List<ElasticResult>? get group {
    final value = _group;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The value on which these elements have been grouped
  /// if a group has been set on the query
  @override
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
            other is _$_ElasticResult &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._snippets, _snippets) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other._group, _group) &&
            const DeepCollectionEquality().equals(other.groupKey, groupKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_snippets),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(_group),
      const DeepCollectionEquality().hash(groupKey));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticResultCopyWith<_$_ElasticResult> get copyWith =>
      __$$_ElasticResultCopyWithImpl<_$_ElasticResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultToJson(
      this,
    );
  }
}

abstract class _ElasticResult extends ElasticResult {
  factory _ElasticResult(
      {final Map<String, dynamic>? data,
      final Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") required final ElasticResultMeta meta,
      @JsonKey(name: "_group") final List<ElasticResult>? group,
      @JsonKey(name: "_group_key") final String? groupKey}) = _$_ElasticResult;
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
  _$$_ElasticResultCopyWith<_$_ElasticResult> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticResultSnippet _$ElasticResultSnippetFromJson(Map<String, dynamic> json) {
  return _ElasticResultSnippet.fromJson(json);
}

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
abstract class _$$_ElasticResultSnippetCopyWith<$Res>
    implements $ElasticResultSnippetCopyWith<$Res> {
  factory _$$_ElasticResultSnippetCopyWith(_$_ElasticResultSnippet value,
          $Res Function(_$_ElasticResultSnippet) then) =
      __$$_ElasticResultSnippetCopyWithImpl<$Res>;
  @override
  $Res call({String fullText, List<String> textParts, List<String> highlights});
}

/// @nodoc
class __$$_ElasticResultSnippetCopyWithImpl<$Res>
    extends _$ElasticResultSnippetCopyWithImpl<$Res>
    implements _$$_ElasticResultSnippetCopyWith<$Res> {
  __$$_ElasticResultSnippetCopyWithImpl(_$_ElasticResultSnippet _value,
      $Res Function(_$_ElasticResultSnippet) _then)
      : super(_value, (v) => _then(v as _$_ElasticResultSnippet));

  @override
  _$_ElasticResultSnippet get _value => super._value as _$_ElasticResultSnippet;

  @override
  $Res call({
    Object? fullText = freezed,
    Object? textParts = freezed,
    Object? highlights = freezed,
  }) {
    return _then(_$_ElasticResultSnippet(
      fullText: fullText == freezed
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      textParts: textParts == freezed
          ? _value._textParts
          : textParts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: highlights == freezed
          ? _value._highlights
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
      required final List<String> textParts,
      required final List<String> highlights})
      : _textParts = textParts,
        _highlights = highlights;

  factory _$_ElasticResultSnippet.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultSnippetFromJson(json);

  /// The full snippet, matching the size provided in the [ElasticResultField]
  /// passed to the query.
  @override
  final String fullText;

  /// The snippet splitted in parts around the matched query.
  /// For example, if the document contains the string "The weather is beautiful in Florida today"
  /// and your query is "beautiful", this array will contain:
  /// "The weather is ", "beautiful", " in Florida today".
  /// This feature intends to build [RichText] on your app to highlight the query
  /// in the result.
  final List<String> _textParts;

  /// The snippet splitted in parts around the matched query.
  /// For example, if the document contains the string "The weather is beautiful in Florida today"
  /// and your query is "beautiful", this array will contain:
  /// "The weather is ", "beautiful", " in Florida today".
  /// This feature intends to build [RichText] on your app to highlight the query
  /// in the result.
  @override
  List<String> get textParts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textParts);
  }

  /// The words matching the query. They can be many because even if you are querying
  /// something like "car", the result can also contain "cars". So we need to
  /// return all the words Elastic decided to match in order to highlight all the matching words.
  final List<String> _highlights;

  /// The words matching the query. They can be many because even if you are querying
  /// something like "car", the result can also contain "cars". So we need to
  /// return all the words Elastic decided to match in order to highlight all the matching words.
  @override
  List<String> get highlights {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  @override
  String toString() {
    return 'ElasticResultSnippet(fullText: $fullText, textParts: $textParts, highlights: $highlights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticResultSnippet &&
            const DeepCollectionEquality().equals(other.fullText, fullText) &&
            const DeepCollectionEquality()
                .equals(other._textParts, _textParts) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullText),
      const DeepCollectionEquality().hash(_textParts),
      const DeepCollectionEquality().hash(_highlights));

  @JsonKey(ignore: true)
  @override
  _$$_ElasticResultSnippetCopyWith<_$_ElasticResultSnippet> get copyWith =>
      __$$_ElasticResultSnippetCopyWithImpl<_$_ElasticResultSnippet>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultSnippetToJson(
      this,
    );
  }
}

abstract class _ElasticResultSnippet implements ElasticResultSnippet {
  factory _ElasticResultSnippet(
      {required final String fullText,
      required final List<String> textParts,
      required final List<String> highlights}) = _$_ElasticResultSnippet;

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
  _$$_ElasticResultSnippetCopyWith<_$_ElasticResultSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}
