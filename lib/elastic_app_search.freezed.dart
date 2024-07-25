// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'elastic_app_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

_ElasticAnalytics _$ElasticAnalyticsFromJson(Map<String, dynamic> json) {
  return __ElasticAnalytics.fromJson(json);
}

/// @nodoc
mixin _$ElasticAnalytics {
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
      __$ElasticAnalyticsCopyWithImpl<$Res, _ElasticAnalytics>;
  @useResult
  $Res call({List<String> tags});
}

/// @nodoc
class __$ElasticAnalyticsCopyWithImpl<$Res, $Val extends _ElasticAnalytics>
    implements _$ElasticAnalyticsCopyWith<$Res> {
  __$ElasticAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticAnalyticsImplCopyWith<$Res>
    implements _$ElasticAnalyticsCopyWith<$Res> {
  factory _$$_ElasticAnalyticsImplCopyWith(_$_ElasticAnalyticsImpl value,
          $Res Function(_$_ElasticAnalyticsImpl) then) =
      __$$_ElasticAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> tags});
}

/// @nodoc
class __$$_ElasticAnalyticsImplCopyWithImpl<$Res>
    extends __$ElasticAnalyticsCopyWithImpl<$Res, _$_ElasticAnalyticsImpl>
    implements _$$_ElasticAnalyticsImplCopyWith<$Res> {
  __$$_ElasticAnalyticsImplCopyWithImpl(_$_ElasticAnalyticsImpl _value,
      $Res Function(_$_ElasticAnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$_ElasticAnalyticsImpl(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticAnalyticsImpl implements __ElasticAnalytics {
  const _$_ElasticAnalyticsImpl({required final List<String> tags})
      : assert(tags.length <= 16, 'You cannot submit more than 16 tags.'),
        _tags = tags;

  factory _$_ElasticAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticAnalyticsImplFromJson(json);

  /// Array of strings representing the tags you’d like to apply to the query.
  /// You may submit up to 16 tags, and each may be up to 64 characters in length.
  final List<String> _tags;

  /// Array of strings representing the tags you’d like to apply to the query.
  /// You may submit up to 16 tags, and each may be up to 64 characters in length.
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return '_ElasticAnalytics(tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticAnalyticsImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticAnalyticsImplCopyWith<_$_ElasticAnalyticsImpl> get copyWith =>
      __$$_ElasticAnalyticsImplCopyWithImpl<_$_ElasticAnalyticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticAnalyticsImplToJson(
      this,
    );
  }
}

abstract class __ElasticAnalytics implements _ElasticAnalytics {
  const factory __ElasticAnalytics({required final List<String> tags}) =
      _$_ElasticAnalyticsImpl;

  factory __ElasticAnalytics.fromJson(Map<String, dynamic> json) =
      _$_ElasticAnalyticsImpl.fromJson;

  @override

  /// Array of strings representing the tags you’d like to apply to the query.
  /// You may submit up to 16 tags, and each may be up to 64 characters in length.
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticAnalyticsImplCopyWith<_$_ElasticAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticBoost _$ElasticBoostFromJson(Map<String, dynamic> json) {
  return __ElasticBoost.fromJson(json);
}

/// @nodoc
mixin _$ElasticBoost {
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
      __$ElasticBoostCopyWithImpl<$Res, _ElasticBoost>;
  @useResult
  $Res call(
      {BoostType type,
      List<String>? value,
      BoostOperation? operation,
      double? factor});
}

/// @nodoc
class __$ElasticBoostCopyWithImpl<$Res, $Val extends _ElasticBoost>
    implements _$ElasticBoostCopyWith<$Res> {
  __$ElasticBoostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
    Object? operation = freezed,
    Object? factor = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BoostType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as BoostOperation?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticBoostImplCopyWith<$Res>
    implements _$ElasticBoostCopyWith<$Res> {
  factory _$$_ElasticBoostImplCopyWith(
          _$_ElasticBoostImpl value, $Res Function(_$_ElasticBoostImpl) then) =
      __$$_ElasticBoostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BoostType type,
      List<String>? value,
      BoostOperation? operation,
      double? factor});
}

/// @nodoc
class __$$_ElasticBoostImplCopyWithImpl<$Res>
    extends __$ElasticBoostCopyWithImpl<$Res, _$_ElasticBoostImpl>
    implements _$$_ElasticBoostImplCopyWith<$Res> {
  __$$_ElasticBoostImplCopyWithImpl(
      _$_ElasticBoostImpl _value, $Res Function(_$_ElasticBoostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
    Object? operation = freezed,
    Object? factor = freezed,
  }) {
    return _then(_$_ElasticBoostImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BoostType,
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as BoostOperation?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticBoostImpl implements __ElasticBoost {
  const _$_ElasticBoostImpl(
      {required this.type,
      final List<String>? value,
      this.operation,
      this.factor})
      : _value = value;

  factory _$_ElasticBoostImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticBoostImplFromJson(json);

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
    if (_value is EqualUnmodifiableListView) return _value;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticBoostImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.factor, factor) || other.factor == factor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_value), operation, factor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticBoostImplCopyWith<_$_ElasticBoostImpl> get copyWith =>
      __$$_ElasticBoostImplCopyWithImpl<_$_ElasticBoostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticBoostImplToJson(
      this,
    );
  }
}

abstract class __ElasticBoost implements _ElasticBoost {
  const factory __ElasticBoost(
      {required final BoostType type,
      final List<String>? value,
      final BoostOperation? operation,
      final double? factor}) = _$_ElasticBoostImpl;

  factory __ElasticBoost.fromJson(Map<String, dynamic> json) =
      _$_ElasticBoostImpl.fromJson;

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
  _$$_ElasticBoostImplCopyWith<_$_ElasticBoostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticQueryFacet _$ElasticQueryFacetFromJson(Map<String, dynamic> json) {
  return __ElasticQueryFacet.fromJson(json);
}

/// @nodoc
mixin _$ElasticQueryFacet {
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
      __$ElasticQueryFacetCopyWithImpl<$Res, _ElasticQueryFacet>;
  @useResult
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
class __$ElasticQueryFacetCopyWithImpl<$Res, $Val extends _ElasticQueryFacet>
    implements _$ElasticQueryFacetCopyWith<$Res> {
  __$ElasticQueryFacetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? ranges = freezed,
    Object? size = freezed,
    Object? center = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ranges: freezed == ranges
          ? _value.ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as List<_ElasticRangeFacet>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLongCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $LatLongCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ElasticQueryFacetImplCopyWith<$Res>
    implements _$ElasticQueryFacetCopyWith<$Res> {
  factory _$$_ElasticQueryFacetImplCopyWith(_$_ElasticQueryFacetImpl value,
          $Res Function(_$_ElasticQueryFacetImpl) then) =
      __$$_ElasticQueryFacetImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_ElasticQueryFacetImplCopyWithImpl<$Res>
    extends __$ElasticQueryFacetCopyWithImpl<$Res, _$_ElasticQueryFacetImpl>
    implements _$$_ElasticQueryFacetImplCopyWith<$Res> {
  __$$_ElasticQueryFacetImplCopyWithImpl(_$_ElasticQueryFacetImpl _value,
      $Res Function(_$_ElasticQueryFacetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? ranges = freezed,
    Object? size = freezed,
    Object? center = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_ElasticQueryFacetImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ranges: freezed == ranges
          ? _value._ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as List<_ElasticRangeFacet>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticQueryFacetImpl implements __ElasticQueryFacet {
  const _$_ElasticQueryFacetImpl(
      {required this.type,
      this.name,
      final List<_ElasticRangeFacet>? ranges,
      this.size,
      @_LatLongConverter() this.center,
      this.unit})
      : _ranges = ranges;

  factory _$_ElasticQueryFacetImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticQueryFacetImplFromJson(json);

  @override
  final String type;
  @override
  final String? name;
  final List<_ElasticRangeFacet>? _ranges;
  @override
  List<_ElasticRangeFacet>? get ranges {
    final value = _ranges;
    if (value == null) return null;
    if (_ranges is EqualUnmodifiableListView) return _ranges;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticQueryFacetImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._ranges, _ranges) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, name,
      const DeepCollectionEquality().hash(_ranges), size, center, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticQueryFacetImplCopyWith<_$_ElasticQueryFacetImpl> get copyWith =>
      __$$_ElasticQueryFacetImplCopyWithImpl<_$_ElasticQueryFacetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticQueryFacetImplToJson(
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
      final GeoUnit? unit}) = _$_ElasticQueryFacetImpl;

  factory __ElasticQueryFacet.fromJson(Map<String, dynamic> json) =
      _$_ElasticQueryFacetImpl.fromJson;

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
  _$$_ElasticQueryFacetImplCopyWith<_$_ElasticQueryFacetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticRangeFacet _$ElasticRangeFacetFromJson(Map<String, dynamic> json) {
  return __ElasticRangeFacet.fromJson(json);
}

/// @nodoc
mixin _$ElasticRangeFacet {
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
      __$ElasticRangeFacetCopyWithImpl<$Res, _ElasticRangeFacet>;
  @useResult
  $Res call({String? name, String? from, String? to, int? count});
}

/// @nodoc
class __$ElasticRangeFacetCopyWithImpl<$Res, $Val extends _ElasticRangeFacet>
    implements _$ElasticRangeFacetCopyWith<$Res> {
  __$ElasticRangeFacetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticRangeFacetImplCopyWith<$Res>
    implements _$ElasticRangeFacetCopyWith<$Res> {
  factory _$$_ElasticRangeFacetImplCopyWith(_$_ElasticRangeFacetImpl value,
          $Res Function(_$_ElasticRangeFacetImpl) then) =
      __$$_ElasticRangeFacetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? from, String? to, int? count});
}

/// @nodoc
class __$$_ElasticRangeFacetImplCopyWithImpl<$Res>
    extends __$ElasticRangeFacetCopyWithImpl<$Res, _$_ElasticRangeFacetImpl>
    implements _$$_ElasticRangeFacetImplCopyWith<$Res> {
  __$$_ElasticRangeFacetImplCopyWithImpl(_$_ElasticRangeFacetImpl _value,
      $Res Function(_$_ElasticRangeFacetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_ElasticRangeFacetImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticRangeFacetImpl implements __ElasticRangeFacet {
  const _$_ElasticRangeFacetImpl({this.name, this.from, this.to, this.count});

  factory _$_ElasticRangeFacetImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticRangeFacetImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticRangeFacetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, from, to, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticRangeFacetImplCopyWith<_$_ElasticRangeFacetImpl> get copyWith =>
      __$$_ElasticRangeFacetImplCopyWithImpl<_$_ElasticRangeFacetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticRangeFacetImplToJson(
      this,
    );
  }
}

abstract class __ElasticRangeFacet implements _ElasticRangeFacet {
  const factory __ElasticRangeFacet(
      {final String? name,
      final String? from,
      final String? to,
      final int? count}) = _$_ElasticRangeFacetImpl;

  factory __ElasticRangeFacet.fromJson(Map<String, dynamic> json) =
      _$_ElasticRangeFacetImpl.fromJson;

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
  _$$_ElasticRangeFacetImplCopyWith<_$_ElasticRangeFacetImpl> get copyWith =>
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
      _$ElasticFacetCopyWithImpl<$Res, ElasticFacet>;
  @useResult
  $Res call(
      {ElasticFacetType type, String? name, List<ElasticFacetData>? data});
}

/// @nodoc
class _$ElasticFacetCopyWithImpl<$Res, $Val extends ElasticFacet>
    implements $ElasticFacetCopyWith<$Res> {
  _$ElasticFacetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ElasticFacetType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ElasticFacetData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticFacetImplCopyWith<$Res>
    implements $ElasticFacetCopyWith<$Res> {
  factory _$$ElasticFacetImplCopyWith(
          _$ElasticFacetImpl value, $Res Function(_$ElasticFacetImpl) then) =
      __$$ElasticFacetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ElasticFacetType type, String? name, List<ElasticFacetData>? data});
}

/// @nodoc
class __$$ElasticFacetImplCopyWithImpl<$Res>
    extends _$ElasticFacetCopyWithImpl<$Res, _$ElasticFacetImpl>
    implements _$$ElasticFacetImplCopyWith<$Res> {
  __$$ElasticFacetImplCopyWithImpl(
      _$ElasticFacetImpl _value, $Res Function(_$ElasticFacetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ElasticFacetImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ElasticFacetType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ElasticFacetData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ElasticFacetImpl extends _ElasticFacet {
  const _$ElasticFacetImpl(
      {required this.type, this.name, final List<ElasticFacetData>? data})
      : _data = data,
        super._();

  factory _$ElasticFacetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticFacetImplFromJson(json);

  @override
  final ElasticFacetType type;
  @override
  final String? name;
  final List<ElasticFacetData>? _data;
  @override
  List<ElasticFacetData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElasticFacet(type: $type, name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticFacetImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, name, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticFacetImplCopyWith<_$ElasticFacetImpl> get copyWith =>
      __$$ElasticFacetImplCopyWithImpl<_$ElasticFacetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticFacetImplToJson(
      this,
    );
  }
}

abstract class _ElasticFacet extends ElasticFacet {
  const factory _ElasticFacet(
      {required final ElasticFacetType type,
      final String? name,
      final List<ElasticFacetData>? data}) = _$ElasticFacetImpl;
  const _ElasticFacet._() : super._();

  factory _ElasticFacet.fromJson(Map<String, dynamic> json) =
      _$ElasticFacetImpl.fromJson;

  @override
  ElasticFacetType get type;
  @override
  String? get name;
  @override
  List<ElasticFacetData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ElasticFacetImplCopyWith<_$ElasticFacetImpl> get copyWith =>
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
      _$ElasticFacetDataCopyWithImpl<$Res, ElasticFacetData>;
  @useResult
  $Res call({String? name, Object? value, Object? from, Object? to, int count});
}

/// @nodoc
class _$ElasticFacetDataCopyWithImpl<$Res, $Val extends ElasticFacetData>
    implements $ElasticFacetDataCopyWith<$Res> {
  _$ElasticFacetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value ? _value.value : value,
      from: freezed == from ? _value.from : from,
      to: freezed == to ? _value.to : to,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticFacetDataImplCopyWith<$Res>
    implements $ElasticFacetDataCopyWith<$Res> {
  factory _$$ElasticFacetDataImplCopyWith(_$ElasticFacetDataImpl value,
          $Res Function(_$ElasticFacetDataImpl) then) =
      __$$ElasticFacetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Object? value, Object? from, Object? to, int count});
}

/// @nodoc
class __$$ElasticFacetDataImplCopyWithImpl<$Res>
    extends _$ElasticFacetDataCopyWithImpl<$Res, _$ElasticFacetDataImpl>
    implements _$$ElasticFacetDataImplCopyWith<$Res> {
  __$$ElasticFacetDataImplCopyWithImpl(_$ElasticFacetDataImpl _value,
      $Res Function(_$ElasticFacetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? count = null,
  }) {
    return _then(_$ElasticFacetDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value ? _value.value : value,
      from: freezed == from ? _value.from : from,
      to: freezed == to ? _value.to : to,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ElasticFacetDataImpl implements _ElasticFacetData {
  const _$ElasticFacetDataImpl(
      {this.name, this.value, this.from, this.to, required this.count});

  factory _$ElasticFacetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticFacetDataImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticFacetDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticFacetDataImplCopyWith<_$ElasticFacetDataImpl> get copyWith =>
      __$$ElasticFacetDataImplCopyWithImpl<_$ElasticFacetDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticFacetDataImplToJson(
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
      required final int count}) = _$ElasticFacetDataImpl;

  factory _ElasticFacetData.fromJson(Map<String, dynamic> json) =
      _$ElasticFacetDataImpl.fromJson;

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
  _$$ElasticFacetDataImplCopyWith<_$ElasticFacetDataImpl> get copyWith =>
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
      _$ElasticRangeCopyWithImpl<$Res, ElasticRange>;
  @useResult
  $Res call({String? name, Object? from, Object? to});
}

/// @nodoc
class _$ElasticRangeCopyWithImpl<$Res, $Val extends ElasticRange>
    implements $ElasticRangeCopyWith<$Res> {
  _$ElasticRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from ? _value.from : from,
      to: freezed == to ? _value.to : to,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticRangeImplCopyWith<$Res>
    implements $ElasticRangeCopyWith<$Res> {
  factory _$$ElasticRangeImplCopyWith(
          _$ElasticRangeImpl value, $Res Function(_$ElasticRangeImpl) then) =
      __$$ElasticRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Object? from, Object? to});
}

/// @nodoc
class __$$ElasticRangeImplCopyWithImpl<$Res>
    extends _$ElasticRangeCopyWithImpl<$Res, _$ElasticRangeImpl>
    implements _$$ElasticRangeImplCopyWith<$Res> {
  __$$ElasticRangeImplCopyWithImpl(
      _$ElasticRangeImpl _value, $Res Function(_$ElasticRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$ElasticRangeImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from ? _value.from : from,
      to: freezed == to ? _value.to : to,
    ));
  }
}

/// @nodoc

class _$ElasticRangeImpl implements _ElasticRange {
  const _$ElasticRangeImpl({this.name, this.from, this.to})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticRangeImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticRangeImplCopyWith<_$ElasticRangeImpl> get copyWith =>
      __$$ElasticRangeImplCopyWithImpl<_$ElasticRangeImpl>(this, _$identity);
}

abstract class _ElasticRange implements ElasticRange {
  const factory _ElasticRange(
      {final String? name,
      final Object? from,
      final Object? to}) = _$ElasticRangeImpl;

  @override
  String? get name;
  @override
  Object? get from;
  @override
  Object? get to;
  @override
  @JsonKey(ignore: true)
  _$$ElasticRangeImplCopyWith<_$ElasticRangeImpl> get copyWith =>
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
      _$LatLongCopyWithImpl<$Res, LatLong>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LatLongCopyWithImpl<$Res, $Val extends LatLong>
    implements $LatLongCopyWith<$Res> {
  _$LatLongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatLongImplCopyWith<$Res> implements $LatLongCopyWith<$Res> {
  factory _$$LatLongImplCopyWith(
          _$LatLongImpl value, $Res Function(_$LatLongImpl) then) =
      __$$LatLongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$LatLongImplCopyWithImpl<$Res>
    extends _$LatLongCopyWithImpl<$Res, _$LatLongImpl>
    implements _$$LatLongImplCopyWith<$Res> {
  __$$LatLongImplCopyWithImpl(
      _$LatLongImpl _value, $Res Function(_$LatLongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$LatLongImpl(
      null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$LatLongImpl implements _LatLong {
  const _$LatLongImpl(this.latitude, this.longitude)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLongImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLongImplCopyWith<_$LatLongImpl> get copyWith =>
      __$$LatLongImplCopyWithImpl<_$LatLongImpl>(this, _$identity);
}

abstract class _LatLong implements LatLong {
  const factory _LatLong(final double latitude, final double longitude) =
      _$LatLongImpl;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LatLongImplCopyWith<_$LatLongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticQuery _$ElasticQueryFromJson(Map<String, dynamic> json) {
  return _ElasticQuery.fromJson(json);
}

/// @nodoc
mixin _$ElasticQuery {
  /// An object representing an Elastic engine
  @JsonKey(includeToJson: false, includeFromJson: false)
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
  @JsonKey(includeToJson: false)
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
      _$ElasticQueryCopyWithImpl<$Res, ElasticQuery>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      ElasticEngine? engine,
      String query,
      @protected @JsonKey(name: "precision") int? precisionTuning,
      @JsonKey(name: "page") _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter() List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
      List<_ElasticResultField>? resultFields,
      @protected Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(includeToJson: false) List<String>? disjunctiveFacets,
      _ElasticAnalytics? analytics,
      @protected @JsonKey(name: "group") _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
      List<_ElasticSort>? sortBy});

  _$ElasticSearchPageCopyWith<$Res>? get searchPage;
  _$ElasticAnalyticsCopyWith<$Res>? get analytics;
  _$ElasticGroupCopyWith<$Res>? get groupBy;
}

/// @nodoc
class _$ElasticQueryCopyWithImpl<$Res, $Val extends ElasticQuery>
    implements $ElasticQueryCopyWith<$Res> {
  _$ElasticQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engine = freezed,
    Object? query = null,
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
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as ElasticEngine?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      precisionTuning: freezed == precisionTuning
          ? _value.precisionTuning
          : precisionTuning // ignore: cast_nullable_to_non_nullable
              as int?,
      searchPage: freezed == searchPage
          ? _value.searchPage
          : searchPage // ignore: cast_nullable_to_non_nullable
              as _ElasticSearchPage?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchFilter>?,
      searchFields: freezed == searchFields
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchField>?,
      resultFields: freezed == resultFields
          ? _value.resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticResultField>?,
      facets: freezed == facets
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<String, _ElasticQueryFacet>?,
      disjunctiveFacets: freezed == disjunctiveFacets
          ? _value.disjunctiveFacets
          : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as _ElasticAnalytics?,
      groupBy: freezed == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as _ElasticGroup?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSort>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$ElasticSearchPageCopyWith<$Res>? get searchPage {
    if (_value.searchPage == null) {
      return null;
    }

    return _$ElasticSearchPageCopyWith<$Res>(_value.searchPage!, (value) {
      return _then(_value.copyWith(searchPage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  _$ElasticAnalyticsCopyWith<$Res>? get analytics {
    if (_value.analytics == null) {
      return null;
    }

    return _$ElasticAnalyticsCopyWith<$Res>(_value.analytics!, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  _$ElasticGroupCopyWith<$Res>? get groupBy {
    if (_value.groupBy == null) {
      return null;
    }

    return _$ElasticGroupCopyWith<$Res>(_value.groupBy!, (value) {
      return _then(_value.copyWith(groupBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElasticQueryImplCopyWith<$Res>
    implements $ElasticQueryCopyWith<$Res> {
  factory _$$ElasticQueryImplCopyWith(
          _$ElasticQueryImpl value, $Res Function(_$ElasticQueryImpl) then) =
      __$$ElasticQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      ElasticEngine? engine,
      String query,
      @protected @JsonKey(name: "precision") int? precisionTuning,
      @JsonKey(name: "page") _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter() List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
      List<_ElasticResultField>? resultFields,
      @protected Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(includeToJson: false) List<String>? disjunctiveFacets,
      _ElasticAnalytics? analytics,
      @protected @JsonKey(name: "group") _ElasticGroup? groupBy,
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
class __$$ElasticQueryImplCopyWithImpl<$Res>
    extends _$ElasticQueryCopyWithImpl<$Res, _$ElasticQueryImpl>
    implements _$$ElasticQueryImplCopyWith<$Res> {
  __$$ElasticQueryImplCopyWithImpl(
      _$ElasticQueryImpl _value, $Res Function(_$ElasticQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engine = freezed,
    Object? query = null,
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
    return _then(_$ElasticQueryImpl(
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as ElasticEngine?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      precisionTuning: freezed == precisionTuning
          ? _value.precisionTuning
          : precisionTuning // ignore: cast_nullable_to_non_nullable
              as int?,
      searchPage: freezed == searchPage
          ? _value.searchPage
          : searchPage // ignore: cast_nullable_to_non_nullable
              as _ElasticSearchPage?,
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchFilter>?,
      searchFields: freezed == searchFields
          ? _value._searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchField>?,
      resultFields: freezed == resultFields
          ? _value._resultFields
          : resultFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticResultField>?,
      facets: freezed == facets
          ? _value._facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<String, _ElasticQueryFacet>?,
      disjunctiveFacets: freezed == disjunctiveFacets
          ? _value._disjunctiveFacets
          : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as _ElasticAnalytics?,
      groupBy: freezed == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as _ElasticGroup?,
      sortBy: freezed == sortBy
          ? _value._sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSort>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ElasticQueryImpl extends _ElasticQuery {
  const _$ElasticQueryImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.engine,
      required this.query,
      @protected @JsonKey(name: "precision") this.precisionTuning,
      @JsonKey(name: "page") this.searchPage,
      @_ElasticSearchFiltersConverter()
      final List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      final List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
      final List<_ElasticResultField>? resultFields,
      @protected final Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(includeToJson: false) final List<String>? disjunctiveFacets,
      this.analytics,
      @protected @JsonKey(name: "group") this.groupBy,
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

  factory _$ElasticQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticQueryImplFromJson(json);

  /// An object representing an Elastic engine
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
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
    if (_filters is EqualUnmodifiableListView) return _filters;
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
    if (_searchFields is EqualUnmodifiableListView) return _searchFields;
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
    if (_resultFields is EqualUnmodifiableListView) return _resultFields;
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
    if (_facets is EqualUnmodifiableMapView) return _facets;
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
  @JsonKey(includeToJson: false)
  List<String>? get disjunctiveFacets {
    final value = _disjunctiveFacets;
    if (value == null) return null;
    if (_disjunctiveFacets is EqualUnmodifiableListView)
      return _disjunctiveFacets;
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
    if (_sortBy is EqualUnmodifiableListView) return _sortBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElasticQuery(engine: $engine, query: $query, precisionTuning: $precisionTuning, searchPage: $searchPage, filters: $filters, searchFields: $searchFields, resultFields: $resultFields, facets: $facets, disjunctiveFacets: $disjunctiveFacets, analytics: $analytics, groupBy: $groupBy, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticQueryImpl &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.precisionTuning, precisionTuning) ||
                other.precisionTuning == precisionTuning) &&
            (identical(other.searchPage, searchPage) ||
                other.searchPage == searchPage) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._searchFields, _searchFields) &&
            const DeepCollectionEquality()
                .equals(other._resultFields, _resultFields) &&
            const DeepCollectionEquality().equals(other._facets, _facets) &&
            const DeepCollectionEquality()
                .equals(other._disjunctiveFacets, _disjunctiveFacets) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.groupBy, groupBy) || other.groupBy == groupBy) &&
            const DeepCollectionEquality().equals(other._sortBy, _sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      engine,
      query,
      precisionTuning,
      searchPage,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_searchFields),
      const DeepCollectionEquality().hash(_resultFields),
      const DeepCollectionEquality().hash(_facets),
      const DeepCollectionEquality().hash(_disjunctiveFacets),
      analytics,
      groupBy,
      const DeepCollectionEquality().hash(_sortBy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticQueryImplCopyWith<_$ElasticQueryImpl> get copyWith =>
      __$$ElasticQueryImplCopyWithImpl<_$ElasticQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticQueryImplToJson(
      this,
    );
  }
}

abstract class _ElasticQuery extends ElasticQuery {
  const factory _ElasticQuery(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      final ElasticEngine? engine,
      required final String query,
      @protected @JsonKey(name: "precision") final int? precisionTuning,
      @JsonKey(name: "page") final _ElasticSearchPage? searchPage,
      @_ElasticSearchFiltersConverter()
      final List<_ElasticSearchFilter>? filters,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      final List<_ElasticSearchField>? searchFields,
      @_ElasticResultFieldsConverter()
      @JsonKey(name: "result_fields")
      final List<_ElasticResultField>? resultFields,
      @protected final Map<String, _ElasticQueryFacet>? facets,
      @JsonKey(includeToJson: false) final List<String>? disjunctiveFacets,
      final _ElasticAnalytics? analytics,
      @protected @JsonKey(name: "group") final _ElasticGroup? groupBy,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
      final List<_ElasticSort>? sortBy}) = _$ElasticQueryImpl;
  const _ElasticQuery._() : super._();

  factory _ElasticQuery.fromJson(Map<String, dynamic> json) =
      _$ElasticQueryImpl.fromJson;

  @override

  /// An object representing an Elastic engine
  @JsonKey(includeToJson: false, includeFromJson: false)
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
  @JsonKey(includeToJson: false)
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
  _$$ElasticQueryImplCopyWith<_$ElasticQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchPage _$ElasticSearchPageFromJson(Map<String, dynamic> json) {
  return __ElasticSearchPage.fromJson(json);
}

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
  _$ElasticSearchPageCopyWith<_ElasticSearchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticSearchPageCopyWith<$Res> {
  factory _$ElasticSearchPageCopyWith(
          _ElasticSearchPage value, $Res Function(_ElasticSearchPage) then) =
      __$ElasticSearchPageCopyWithImpl<$Res, _ElasticSearchPage>;
  @useResult
  $Res call({int? size, int? current});
}

/// @nodoc
class __$ElasticSearchPageCopyWithImpl<$Res, $Val extends _ElasticSearchPage>
    implements _$ElasticSearchPageCopyWith<$Res> {
  __$ElasticSearchPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticSearchPageImplCopyWith<$Res>
    implements _$ElasticSearchPageCopyWith<$Res> {
  factory _$$_ElasticSearchPageImplCopyWith(_$_ElasticSearchPageImpl value,
          $Res Function(_$_ElasticSearchPageImpl) then) =
      __$$_ElasticSearchPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? size, int? current});
}

/// @nodoc
class __$$_ElasticSearchPageImplCopyWithImpl<$Res>
    extends __$ElasticSearchPageCopyWithImpl<$Res, _$_ElasticSearchPageImpl>
    implements _$$_ElasticSearchPageImplCopyWith<$Res> {
  __$$_ElasticSearchPageImplCopyWithImpl(_$_ElasticSearchPageImpl _value,
      $Res Function(_$_ElasticSearchPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? current = freezed,
  }) {
    return _then(_$_ElasticSearchPageImpl(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticSearchPageImpl implements __ElasticSearchPage {
  const _$_ElasticSearchPageImpl({this.size = 10, this.current = 1})
      : assert(size == null || (size != null && size >= 0 && size <= 1000),
            'The number of results per page must be greater than or equal to 1 and less than or equal to 1000.'),
        assert(
            current == null ||
                (current != null && current >= 1 && current <= 100),
            'The current must be greater than or equal to 1 and less than or equal to 100.');

  factory _$_ElasticSearchPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticSearchPageImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticSearchPageImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticSearchPageImplCopyWith<_$_ElasticSearchPageImpl> get copyWith =>
      __$$_ElasticSearchPageImplCopyWithImpl<_$_ElasticSearchPageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticSearchPageImplToJson(
      this,
    );
  }
}

abstract class __ElasticSearchPage implements _ElasticSearchPage {
  const factory __ElasticSearchPage({final int? size, final int? current}) =
      _$_ElasticSearchPageImpl;

  factory __ElasticSearchPage.fromJson(Map<String, dynamic> json) =
      _$_ElasticSearchPageImpl.fromJson;

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
  _$$_ElasticSearchPageImplCopyWith<_$_ElasticSearchPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchFilter _$ElasticSearchFilterFromJson(Map<String, dynamic> json) {
  return __ElasticSearchFilter.fromJson(json);
}

/// @nodoc
mixin _$ElasticSearchFilter {
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
      __$ElasticSearchFilterCopyWithImpl<$Res, _ElasticSearchFilter>;
  @useResult
  $Res call({_ElasticFilterType type, String name, dynamic value});
}

/// @nodoc
class __$ElasticSearchFilterCopyWithImpl<$Res,
        $Val extends _ElasticSearchFilter>
    implements _$ElasticSearchFilterCopyWith<$Res> {
  __$ElasticSearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as _ElasticFilterType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticSearchFilterImplCopyWith<$Res>
    implements _$ElasticSearchFilterCopyWith<$Res> {
  factory _$$_ElasticSearchFilterImplCopyWith(_$_ElasticSearchFilterImpl value,
          $Res Function(_$_ElasticSearchFilterImpl) then) =
      __$$_ElasticSearchFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({_ElasticFilterType type, String name, dynamic value});
}

/// @nodoc
class __$$_ElasticSearchFilterImplCopyWithImpl<$Res>
    extends __$ElasticSearchFilterCopyWithImpl<$Res, _$_ElasticSearchFilterImpl>
    implements _$$_ElasticSearchFilterImplCopyWith<$Res> {
  __$$_ElasticSearchFilterImplCopyWithImpl(_$_ElasticSearchFilterImpl _value,
      $Res Function(_$_ElasticSearchFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_$_ElasticSearchFilterImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as _ElasticFilterType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticSearchFilterImpl implements __ElasticSearchFilter {
  const _$_ElasticSearchFilterImpl(
      {this.type = _ElasticFilterType.all,
      required this.name,
      required this.value});

  factory _$_ElasticSearchFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticSearchFilterImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticSearchFilterImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, name, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticSearchFilterImplCopyWith<_$_ElasticSearchFilterImpl>
      get copyWith =>
          __$$_ElasticSearchFilterImplCopyWithImpl<_$_ElasticSearchFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticSearchFilterImplToJson(
      this,
    );
  }
}

abstract class __ElasticSearchFilter implements _ElasticSearchFilter {
  const factory __ElasticSearchFilter(
      {final _ElasticFilterType type,
      required final String name,
      required final dynamic value}) = _$_ElasticSearchFilterImpl;

  factory __ElasticSearchFilter.fromJson(Map<String, dynamic> json) =
      _$_ElasticSearchFilterImpl.fromJson;

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
  _$$_ElasticSearchFilterImplCopyWith<_$_ElasticSearchFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

_ElasticDateRangeFilter _$ElasticDateRangeFilterFromJson(
    Map<String, dynamic> json) {
  return __ElasticDateRangeFilter.fromJson(json);
}

/// @nodoc
mixin _$ElasticDateRangeFilter {
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
      __$ElasticDateRangeFilterCopyWithImpl<$Res, _ElasticDateRangeFilter>;
  @useResult
  $Res call({String? from, String? to});
}

/// @nodoc
class __$ElasticDateRangeFilterCopyWithImpl<$Res,
        $Val extends _ElasticDateRangeFilter>
    implements _$ElasticDateRangeFilterCopyWith<$Res> {
  __$ElasticDateRangeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticDateRangeFilterImplCopyWith<$Res>
    implements _$ElasticDateRangeFilterCopyWith<$Res> {
  factory _$$_ElasticDateRangeFilterImplCopyWith(
          _$_ElasticDateRangeFilterImpl value,
          $Res Function(_$_ElasticDateRangeFilterImpl) then) =
      __$$_ElasticDateRangeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? from, String? to});
}

/// @nodoc
class __$$_ElasticDateRangeFilterImplCopyWithImpl<$Res>
    extends __$ElasticDateRangeFilterCopyWithImpl<$Res,
        _$_ElasticDateRangeFilterImpl>
    implements _$$_ElasticDateRangeFilterImplCopyWith<$Res> {
  __$$_ElasticDateRangeFilterImplCopyWithImpl(
      _$_ElasticDateRangeFilterImpl _value,
      $Res Function(_$_ElasticDateRangeFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_ElasticDateRangeFilterImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticDateRangeFilterImpl implements __ElasticDateRangeFilter {
  const _$_ElasticDateRangeFilterImpl({this.from, this.to});

  factory _$_ElasticDateRangeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticDateRangeFilterImplFromJson(json);

  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return '_ElasticDateRangeFilter(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticDateRangeFilterImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticDateRangeFilterImplCopyWith<_$_ElasticDateRangeFilterImpl>
      get copyWith => __$$_ElasticDateRangeFilterImplCopyWithImpl<
          _$_ElasticDateRangeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticDateRangeFilterImplToJson(
      this,
    );
  }
}

abstract class __ElasticDateRangeFilter implements _ElasticDateRangeFilter {
  const factory __ElasticDateRangeFilter(
      {final String? from, final String? to}) = _$_ElasticDateRangeFilterImpl;

  factory __ElasticDateRangeFilter.fromJson(Map<String, dynamic> json) =
      _$_ElasticDateRangeFilterImpl.fromJson;

  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticDateRangeFilterImplCopyWith<_$_ElasticDateRangeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

_ElasticNumberRangeFilter _$ElasticNumberRangeFilterFromJson(
    Map<String, dynamic> json) {
  return __ElasticNumberRangeFilter.fromJson(json);
}

/// @nodoc
mixin _$ElasticNumberRangeFilter {
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
      __$ElasticNumberRangeFilterCopyWithImpl<$Res, _ElasticNumberRangeFilter>;
  @useResult
  $Res call({double? from, double? to});
}

/// @nodoc
class __$ElasticNumberRangeFilterCopyWithImpl<$Res,
        $Val extends _ElasticNumberRangeFilter>
    implements _$ElasticNumberRangeFilterCopyWith<$Res> {
  __$ElasticNumberRangeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticNumberRangeFilterImplCopyWith<$Res>
    implements _$ElasticNumberRangeFilterCopyWith<$Res> {
  factory _$$_ElasticNumberRangeFilterImplCopyWith(
          _$_ElasticNumberRangeFilterImpl value,
          $Res Function(_$_ElasticNumberRangeFilterImpl) then) =
      __$$_ElasticNumberRangeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? from, double? to});
}

/// @nodoc
class __$$_ElasticNumberRangeFilterImplCopyWithImpl<$Res>
    extends __$ElasticNumberRangeFilterCopyWithImpl<$Res,
        _$_ElasticNumberRangeFilterImpl>
    implements _$$_ElasticNumberRangeFilterImplCopyWith<$Res> {
  __$$_ElasticNumberRangeFilterImplCopyWithImpl(
      _$_ElasticNumberRangeFilterImpl _value,
      $Res Function(_$_ElasticNumberRangeFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_ElasticNumberRangeFilterImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticNumberRangeFilterImpl implements __ElasticNumberRangeFilter {
  const _$_ElasticNumberRangeFilterImpl({this.from, this.to});

  factory _$_ElasticNumberRangeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticNumberRangeFilterImplFromJson(json);

  @override
  final double? from;
  @override
  final double? to;

  @override
  String toString() {
    return '_ElasticNumberRangeFilter(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticNumberRangeFilterImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticNumberRangeFilterImplCopyWith<_$_ElasticNumberRangeFilterImpl>
      get copyWith => __$$_ElasticNumberRangeFilterImplCopyWithImpl<
          _$_ElasticNumberRangeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticNumberRangeFilterImplToJson(
      this,
    );
  }
}

abstract class __ElasticNumberRangeFilter implements _ElasticNumberRangeFilter {
  const factory __ElasticNumberRangeFilter(
      {final double? from, final double? to}) = _$_ElasticNumberRangeFilterImpl;

  factory __ElasticNumberRangeFilter.fromJson(Map<String, dynamic> json) =
      _$_ElasticNumberRangeFilterImpl.fromJson;

  @override
  double? get from;
  @override
  double? get to;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticNumberRangeFilterImplCopyWith<_$_ElasticNumberRangeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

_ElasticGeoFilter _$ElasticGeoFilterFromJson(Map<String, dynamic> json) {
  return __ElasticGeoFilter.fromJson(json);
}

/// @nodoc
mixin _$ElasticGeoFilter {
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
      __$ElasticGeoFilterCopyWithImpl<$Res, _ElasticGeoFilter>;
  @useResult
  $Res call(
      {@_LatLongConverter() LatLong? center,
      double? distance,
      GeoUnit unit,
      double? from,
      double? to});

  $LatLongCopyWith<$Res>? get center;
}

/// @nodoc
class __$ElasticGeoFilterCopyWithImpl<$Res, $Val extends _ElasticGeoFilter>
    implements _$ElasticGeoFilterCopyWith<$Res> {
  __$ElasticGeoFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = freezed,
    Object? distance = freezed,
    Object? unit = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLongCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $LatLongCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ElasticGeoFilterImplCopyWith<$Res>
    implements _$ElasticGeoFilterCopyWith<$Res> {
  factory _$$_ElasticGeoFilterImplCopyWith(_$_ElasticGeoFilterImpl value,
          $Res Function(_$_ElasticGeoFilterImpl) then) =
      __$$_ElasticGeoFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_ElasticGeoFilterImplCopyWithImpl<$Res>
    extends __$ElasticGeoFilterCopyWithImpl<$Res, _$_ElasticGeoFilterImpl>
    implements _$$_ElasticGeoFilterImplCopyWith<$Res> {
  __$$_ElasticGeoFilterImplCopyWithImpl(_$_ElasticGeoFilterImpl _value,
      $Res Function(_$_ElasticGeoFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = freezed,
    Object? distance = freezed,
    Object? unit = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_ElasticGeoFilterImpl(
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as LatLong?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GeoUnit,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as double?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticGeoFilterImpl implements __ElasticGeoFilter {
  const _$_ElasticGeoFilterImpl(
      {@_LatLongConverter() this.center,
      this.distance,
      required this.unit,
      this.from,
      this.to})
      : assert(center != null, 'center is required.');

  factory _$_ElasticGeoFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticGeoFilterImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticGeoFilterImpl &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, center, distance, unit, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticGeoFilterImplCopyWith<_$_ElasticGeoFilterImpl> get copyWith =>
      __$$_ElasticGeoFilterImplCopyWithImpl<_$_ElasticGeoFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticGeoFilterImplToJson(
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
      final double? to}) = _$_ElasticGeoFilterImpl;

  factory __ElasticGeoFilter.fromJson(Map<String, dynamic> json) =
      _$_ElasticGeoFilterImpl.fromJson;

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
  _$$_ElasticGeoFilterImplCopyWith<_$_ElasticGeoFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSearchField _$ElasticSearchFieldFromJson(Map<String, dynamic> json) {
  return __ElasticSearchField.fromJson(json);
}

/// @nodoc
mixin _$ElasticSearchField {
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
      __$ElasticSearchFieldCopyWithImpl<$Res, _ElasticSearchField>;
  @useResult
  $Res call({String name, int? weight});
}

/// @nodoc
class __$ElasticSearchFieldCopyWithImpl<$Res, $Val extends _ElasticSearchField>
    implements _$ElasticSearchFieldCopyWith<$Res> {
  __$ElasticSearchFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticSearchFieldImplCopyWith<$Res>
    implements _$ElasticSearchFieldCopyWith<$Res> {
  factory _$$_ElasticSearchFieldImplCopyWith(_$_ElasticSearchFieldImpl value,
          $Res Function(_$_ElasticSearchFieldImpl) then) =
      __$$_ElasticSearchFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int? weight});
}

/// @nodoc
class __$$_ElasticSearchFieldImplCopyWithImpl<$Res>
    extends __$ElasticSearchFieldCopyWithImpl<$Res, _$_ElasticSearchFieldImpl>
    implements _$$_ElasticSearchFieldImplCopyWith<$Res> {
  __$$_ElasticSearchFieldImplCopyWithImpl(_$_ElasticSearchFieldImpl _value,
      $Res Function(_$_ElasticSearchFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? weight = freezed,
  }) {
    return _then(_$_ElasticSearchFieldImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticSearchFieldImpl implements __ElasticSearchField {
  const _$_ElasticSearchFieldImpl({required this.name, this.weight});

  factory _$_ElasticSearchFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticSearchFieldImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticSearchFieldImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticSearchFieldImplCopyWith<_$_ElasticSearchFieldImpl> get copyWith =>
      __$$_ElasticSearchFieldImplCopyWithImpl<_$_ElasticSearchFieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticSearchFieldImplToJson(
      this,
    );
  }
}

abstract class __ElasticSearchField implements _ElasticSearchField {
  const factory __ElasticSearchField(
      {required final String name,
      final int? weight}) = _$_ElasticSearchFieldImpl;

  factory __ElasticSearchField.fromJson(Map<String, dynamic> json) =
      _$_ElasticSearchFieldImpl.fromJson;

  @override

  /// The name of the field. It must exist within your Engine schema and be of type text.
  String get name;
  @override

  /// Optionnal. Apply Weights to each search field.
  /// Engine level Weight settings will be applied is none are provided.
  int? get weight;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticSearchFieldImplCopyWith<_$_ElasticSearchFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticResultField _$ElasticResultFieldFromJson(Map<String, dynamic> json) {
  return __ElasticResultField.fromJson(json);
}

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
  _$ElasticResultFieldCopyWith<_ElasticResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElasticResultFieldCopyWith<$Res> {
  factory _$ElasticResultFieldCopyWith(
          _ElasticResultField value, $Res Function(_ElasticResultField) then) =
      __$ElasticResultFieldCopyWithImpl<$Res, _ElasticResultField>;
  @useResult
  $Res call({String name, int? rawSize, int? snippetSize, bool fallback});
}

/// @nodoc
class __$ElasticResultFieldCopyWithImpl<$Res, $Val extends _ElasticResultField>
    implements _$ElasticResultFieldCopyWith<$Res> {
  __$ElasticResultFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rawSize = freezed,
    Object? snippetSize = freezed,
    Object? fallback = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rawSize: freezed == rawSize
          ? _value.rawSize
          : rawSize // ignore: cast_nullable_to_non_nullable
              as int?,
      snippetSize: freezed == snippetSize
          ? _value.snippetSize
          : snippetSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fallback: null == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticResultFieldImplCopyWith<$Res>
    implements _$ElasticResultFieldCopyWith<$Res> {
  factory _$$_ElasticResultFieldImplCopyWith(_$_ElasticResultFieldImpl value,
          $Res Function(_$_ElasticResultFieldImpl) then) =
      __$$_ElasticResultFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int? rawSize, int? snippetSize, bool fallback});
}

/// @nodoc
class __$$_ElasticResultFieldImplCopyWithImpl<$Res>
    extends __$ElasticResultFieldCopyWithImpl<$Res, _$_ElasticResultFieldImpl>
    implements _$$_ElasticResultFieldImplCopyWith<$Res> {
  __$$_ElasticResultFieldImplCopyWithImpl(_$_ElasticResultFieldImpl _value,
      $Res Function(_$_ElasticResultFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rawSize = freezed,
    Object? snippetSize = freezed,
    Object? fallback = null,
  }) {
    return _then(_$_ElasticResultFieldImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rawSize: freezed == rawSize
          ? _value.rawSize
          : rawSize // ignore: cast_nullable_to_non_nullable
              as int?,
      snippetSize: freezed == snippetSize
          ? _value.snippetSize
          : snippetSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fallback: null == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticResultFieldImpl implements __ElasticResultField {
  const _$_ElasticResultFieldImpl(
      {required this.name,
      this.rawSize,
      this.snippetSize,
      this.fallback = true});

  factory _$_ElasticResultFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticResultFieldImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticResultFieldImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rawSize, rawSize) || other.rawSize == rawSize) &&
            (identical(other.snippetSize, snippetSize) ||
                other.snippetSize == snippetSize) &&
            (identical(other.fallback, fallback) ||
                other.fallback == fallback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, rawSize, snippetSize, fallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticResultFieldImplCopyWith<_$_ElasticResultFieldImpl> get copyWith =>
      __$$_ElasticResultFieldImplCopyWithImpl<_$_ElasticResultFieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticResultFieldImplToJson(
      this,
    );
  }
}

abstract class __ElasticResultField implements _ElasticResultField {
  const factory __ElasticResultField(
      {required final String name,
      final int? rawSize,
      final int? snippetSize,
      final bool fallback}) = _$_ElasticResultFieldImpl;

  factory __ElasticResultField.fromJson(Map<String, dynamic> json) =
      _$_ElasticResultFieldImpl.fromJson;

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
  _$$_ElasticResultFieldImplCopyWith<_$_ElasticResultFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticGroup _$ElasticGroupFromJson(Map<String, dynamic> json) {
  return __ElasticGroup.fromJson(json);
}

/// @nodoc
mixin _$ElasticGroup {
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
      __$ElasticGroupCopyWithImpl<$Res, _ElasticGroup>;
  @useResult
  $Res call({String field, int? size});
}

/// @nodoc
class __$ElasticGroupCopyWithImpl<$Res, $Val extends _ElasticGroup>
    implements _$ElasticGroupCopyWith<$Res> {
  __$ElasticGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticGroupImplCopyWith<$Res>
    implements _$ElasticGroupCopyWith<$Res> {
  factory _$$_ElasticGroupImplCopyWith(
          _$_ElasticGroupImpl value, $Res Function(_$_ElasticGroupImpl) then) =
      __$$_ElasticGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, int? size});
}

/// @nodoc
class __$$_ElasticGroupImplCopyWithImpl<$Res>
    extends __$ElasticGroupCopyWithImpl<$Res, _$_ElasticGroupImpl>
    implements _$$_ElasticGroupImplCopyWith<$Res> {
  __$$_ElasticGroupImplCopyWithImpl(
      _$_ElasticGroupImpl _value, $Res Function(_$_ElasticGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? size = freezed,
  }) {
    return _then(_$_ElasticGroupImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticGroupImpl implements __ElasticGroup {
  const _$_ElasticGroupImpl({required this.field, this.size});

  factory _$_ElasticGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticGroupImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticGroupImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, field, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticGroupImplCopyWith<_$_ElasticGroupImpl> get copyWith =>
      __$$_ElasticGroupImplCopyWithImpl<_$_ElasticGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticGroupImplToJson(
      this,
    );
  }
}

abstract class __ElasticGroup implements _ElasticGroup {
  const factory __ElasticGroup({required final String field, final int? size}) =
      _$_ElasticGroupImpl;

  factory __ElasticGroup.fromJson(Map<String, dynamic> json) =
      _$_ElasticGroupImpl.fromJson;

  @override

  /// Field name to group results on.
  String get field;
  @override

  /// Number of results to be included in the _group key of the returned document.
  /// Can be between 1 and 10. Defaults to 10.
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticGroupImplCopyWith<_$_ElasticGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ElasticSort _$ElasticSortFromJson(Map<String, dynamic> json) {
  return __ElasticSort.fromJson(json);
}

/// @nodoc
mixin _$ElasticSort {
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
      __$ElasticSortCopyWithImpl<$Res, _ElasticSort>;
  @useResult
  $Res call({String field, bool descending});
}

/// @nodoc
class __$ElasticSortCopyWithImpl<$Res, $Val extends _ElasticSort>
    implements _$ElasticSortCopyWith<$Res> {
  __$ElasticSortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? descending = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      descending: null == descending
          ? _value.descending
          : descending // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElasticSortImplCopyWith<$Res>
    implements _$ElasticSortCopyWith<$Res> {
  factory _$$_ElasticSortImplCopyWith(
          _$_ElasticSortImpl value, $Res Function(_$_ElasticSortImpl) then) =
      __$$_ElasticSortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, bool descending});
}

/// @nodoc
class __$$_ElasticSortImplCopyWithImpl<$Res>
    extends __$ElasticSortCopyWithImpl<$Res, _$_ElasticSortImpl>
    implements _$$_ElasticSortImplCopyWith<$Res> {
  __$$_ElasticSortImplCopyWithImpl(
      _$_ElasticSortImpl _value, $Res Function(_$_ElasticSortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? descending = null,
  }) {
    return _then(_$_ElasticSortImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      descending: null == descending
          ? _value.descending
          : descending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ElasticSortImpl implements __ElasticSort {
  const _$_ElasticSortImpl({required this.field, this.descending = false});

  factory _$_ElasticSortImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ElasticSortImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElasticSortImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.descending, descending) ||
                other.descending == descending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, field, descending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElasticSortImplCopyWith<_$_ElasticSortImpl> get copyWith =>
      __$$_ElasticSortImplCopyWithImpl<_$_ElasticSortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElasticSortImplToJson(
      this,
    );
  }
}

abstract class __ElasticSort implements _ElasticSort {
  const factory __ElasticSort(
      {required final String field,
      final bool descending}) = _$_ElasticSortImpl;

  factory __ElasticSort.fromJson(Map<String, dynamic> json) =
      _$_ElasticSortImpl.fromJson;

  @override

  /// Field name to sort results
  String get field;
  @override
  bool get descending;
  @override
  @JsonKey(ignore: true)
  _$$_ElasticSortImplCopyWith<_$_ElasticSortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElasticSuggestionsQuery _$ElasticSuggestionsQueryFromJson(
    Map<String, dynamic> json) {
  return _ElasticSuggestionsQuery.fromJson(json);
}

/// @nodoc
mixin _$ElasticSuggestionsQuery {
  /// An object representing an Elastic engine
  @JsonKey(includeToJson: false, includeFromJson: false)
  ElasticEngine? get engine => throw _privateConstructorUsedError;

  /// String or number to match.
  String get query => throw _privateConstructorUsedError;

  /// Number of query suggestions.
  /// Must be greater than or equal to 1 and less than or equal to 1000.
  /// Defaults to 10.
  @JsonKey(name: "size")
  int? get sizeField => throw _privateConstructorUsedError;

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<_ElasticSearchField>? get searchFields =>
      throw _privateConstructorUsedError;

  /// Object to sort your results in an order other than document score.
  @_ElasticSortConverter()
  @JsonKey(name: "sort")
  List<_ElasticSort>? get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticSuggestionsQueryCopyWith<ElasticSuggestionsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticSuggestionsQueryCopyWith<$Res> {
  factory $ElasticSuggestionsQueryCopyWith(ElasticSuggestionsQuery value,
          $Res Function(ElasticSuggestionsQuery) then) =
      _$ElasticSuggestionsQueryCopyWithImpl<$Res, ElasticSuggestionsQuery>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      ElasticEngine? engine,
      String query,
      @JsonKey(name: "size") int? sizeField,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      List<_ElasticSearchField>? searchFields,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
      List<_ElasticSort>? sortBy});
}

/// @nodoc
class _$ElasticSuggestionsQueryCopyWithImpl<$Res,
        $Val extends ElasticSuggestionsQuery>
    implements $ElasticSuggestionsQueryCopyWith<$Res> {
  _$ElasticSuggestionsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engine = freezed,
    Object? query = null,
    Object? sizeField = freezed,
    Object? searchFields = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as ElasticEngine?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sizeField: freezed == sizeField
          ? _value.sizeField
          : sizeField // ignore: cast_nullable_to_non_nullable
              as int?,
      searchFields: freezed == searchFields
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchField>?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSort>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticSuggestionsQueryImplCopyWith<$Res>
    implements $ElasticSuggestionsQueryCopyWith<$Res> {
  factory _$$ElasticSuggestionsQueryImplCopyWith(
          _$ElasticSuggestionsQueryImpl value,
          $Res Function(_$ElasticSuggestionsQueryImpl) then) =
      __$$ElasticSuggestionsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      ElasticEngine? engine,
      String query,
      @JsonKey(name: "size") int? sizeField,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      List<_ElasticSearchField>? searchFields,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
      List<_ElasticSort>? sortBy});
}

/// @nodoc
class __$$ElasticSuggestionsQueryImplCopyWithImpl<$Res>
    extends _$ElasticSuggestionsQueryCopyWithImpl<$Res,
        _$ElasticSuggestionsQueryImpl>
    implements _$$ElasticSuggestionsQueryImplCopyWith<$Res> {
  __$$ElasticSuggestionsQueryImplCopyWithImpl(
      _$ElasticSuggestionsQueryImpl _value,
      $Res Function(_$ElasticSuggestionsQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engine = freezed,
    Object? query = null,
    Object? sizeField = freezed,
    Object? searchFields = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$ElasticSuggestionsQueryImpl(
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as ElasticEngine?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sizeField: freezed == sizeField
          ? _value.sizeField
          : sizeField // ignore: cast_nullable_to_non_nullable
              as int?,
      searchFields: freezed == searchFields
          ? _value._searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSearchField>?,
      sortBy: freezed == sortBy
          ? _value._sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as List<_ElasticSort>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ElasticSuggestionsQueryImpl extends _ElasticSuggestionsQuery {
  const _$ElasticSuggestionsQueryImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.engine,
      required this.query,
      @JsonKey(name: "size") this.sizeField = 10,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      final List<_ElasticSearchField>? searchFields,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
      final List<_ElasticSort>? sortBy})
      : assert(engine != null, 'An engine is required to build a query.'),
        _searchFields = searchFields,
        _sortBy = sortBy,
        super._();

  factory _$ElasticSuggestionsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticSuggestionsQueryImplFromJson(json);

  /// An object representing an Elastic engine
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final ElasticEngine? engine;

  /// String or number to match.
  @override
  final String query;

  /// Number of query suggestions.
  /// Must be greater than or equal to 1 and less than or equal to 1000.
  /// Defaults to 10.
  @override
  @JsonKey(name: "size")
  final int? sizeField;

  /// Object which restricts a query to search only specific fields.
  final List<_ElasticSearchField>? _searchFields;

  /// Object which restricts a query to search only specific fields.
  @override
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<_ElasticSearchField>? get searchFields {
    final value = _searchFields;
    if (value == null) return null;
    if (_searchFields is EqualUnmodifiableListView) return _searchFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Object to sort your results in an order other than document score.
  final List<_ElasticSort>? _sortBy;

  /// Object to sort your results in an order other than document score.
  @override
  @_ElasticSortConverter()
  @JsonKey(name: "sort")
  List<_ElasticSort>? get sortBy {
    final value = _sortBy;
    if (value == null) return null;
    if (_sortBy is EqualUnmodifiableListView) return _sortBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElasticSuggestionsQuery(engine: $engine, query: $query, sizeField: $sizeField, searchFields: $searchFields, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticSuggestionsQueryImpl &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sizeField, sizeField) ||
                other.sizeField == sizeField) &&
            const DeepCollectionEquality()
                .equals(other._searchFields, _searchFields) &&
            const DeepCollectionEquality().equals(other._sortBy, _sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      engine,
      query,
      sizeField,
      const DeepCollectionEquality().hash(_searchFields),
      const DeepCollectionEquality().hash(_sortBy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticSuggestionsQueryImplCopyWith<_$ElasticSuggestionsQueryImpl>
      get copyWith => __$$ElasticSuggestionsQueryImplCopyWithImpl<
          _$ElasticSuggestionsQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticSuggestionsQueryImplToJson(
      this,
    );
  }
}

abstract class _ElasticSuggestionsQuery extends ElasticSuggestionsQuery {
  const factory _ElasticSuggestionsQuery(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      final ElasticEngine? engine,
      required final String query,
      @JsonKey(name: "size") final int? sizeField,
      @_ElasticSearchFieldsConverter()
      @JsonKey(name: "search_fields")
      final List<_ElasticSearchField>? searchFields,
      @_ElasticSortConverter()
      @JsonKey(name: "sort")
      final List<_ElasticSort>? sortBy}) = _$ElasticSuggestionsQueryImpl;
  const _ElasticSuggestionsQuery._() : super._();

  factory _ElasticSuggestionsQuery.fromJson(Map<String, dynamic> json) =
      _$ElasticSuggestionsQueryImpl.fromJson;

  @override

  /// An object representing an Elastic engine
  @JsonKey(includeToJson: false, includeFromJson: false)
  ElasticEngine? get engine;
  @override

  /// String or number to match.
  String get query;
  @override

  /// Number of query suggestions.
  /// Must be greater than or equal to 1 and less than or equal to 1000.
  /// Defaults to 10.
  @JsonKey(name: "size")
  int? get sizeField;
  @override

  /// Object which restricts a query to search only specific fields.
  @_ElasticSearchFieldsConverter()
  @JsonKey(name: "search_fields")
  List<_ElasticSearchField>? get searchFields;
  @override

  /// Object to sort your results in an order other than document score.
  @_ElasticSortConverter()
  @JsonKey(name: "sort")
  List<_ElasticSort>? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$ElasticSuggestionsQueryImplCopyWith<_$ElasticSuggestionsQueryImpl>
      get copyWith => throw _privateConstructorUsedError;
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
      _$ElasticResponseCopyWithImpl<$Res, ElasticResponse>;
  @useResult
  $Res call(
      {ElasticResponseMeta meta,
      List<ElasticResult> results,
      @JsonKey(name: "facets") Map<String, List<ElasticFacet>>? rawFacets});

  $ElasticResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ElasticResponseCopyWithImpl<$Res, $Val extends ElasticResponse>
    implements $ElasticResponseCopyWith<$Res> {
  _$ElasticResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? results = null,
    Object? rawFacets = freezed,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMeta,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>,
      rawFacets: freezed == rawFacets
          ? _value.rawFacets
          : rawFacets // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ElasticFacet>>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ElasticResponseMetaCopyWith<$Res> get meta {
    return $ElasticResponseMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElasticResponseImplCopyWith<$Res>
    implements $ElasticResponseCopyWith<$Res> {
  factory _$$ElasticResponseImplCopyWith(_$ElasticResponseImpl value,
          $Res Function(_$ElasticResponseImpl) then) =
      __$$ElasticResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ElasticResponseMeta meta,
      List<ElasticResult> results,
      @JsonKey(name: "facets") Map<String, List<ElasticFacet>>? rawFacets});

  @override
  $ElasticResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ElasticResponseImplCopyWithImpl<$Res>
    extends _$ElasticResponseCopyWithImpl<$Res, _$ElasticResponseImpl>
    implements _$$ElasticResponseImplCopyWith<$Res> {
  __$$ElasticResponseImplCopyWithImpl(
      _$ElasticResponseImpl _value, $Res Function(_$ElasticResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? results = null,
    Object? rawFacets = freezed,
  }) {
    return _then(_$ElasticResponseImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMeta,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>,
      rawFacets: freezed == rawFacets
          ? _value._rawFacets
          : rawFacets // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ElasticFacet>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticResponseImpl extends _ElasticResponse {
  _$ElasticResponseImpl(
      {required this.meta,
      required final List<ElasticResult> results,
      @JsonKey(name: "facets")
      final Map<String, List<ElasticFacet>>? rawFacets})
      : _results = results,
        _rawFacets = rawFacets,
        super._();

  factory _$ElasticResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticResponseImplFromJson(json);

  /// Object delimiting the results meta data.
  @override
  final ElasticResponseMeta meta;

  /// Array of results matching the search.
  final List<ElasticResult> _results;

  /// Array of results matching the search.
  @override
  List<ElasticResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
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
    if (_rawFacets is EqualUnmodifiableMapView) return _rawFacets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ElasticResponse(meta: $meta, results: $results, rawFacets: $rawFacets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticResponseImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other._rawFacets, _rawFacets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      meta,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(_rawFacets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticResponseImplCopyWith<_$ElasticResponseImpl> get copyWith =>
      __$$ElasticResponseImplCopyWithImpl<_$ElasticResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticResponseImplToJson(
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
      _$ElasticResponseImpl;
  _ElasticResponse._() : super._();

  factory _ElasticResponse.fromJson(Map<String, dynamic> json) =
      _$ElasticResponseImpl.fromJson;

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
  _$$ElasticResponseImplCopyWith<_$ElasticResponseImpl> get copyWith =>
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
      _$ElasticResponseMetaCopyWithImpl<$Res, ElasticResponseMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: "request_id") String requestId,
      List<dynamic> warnings,
      List<dynamic> alerts,
      ElasticResponseMetaPage page});

  $ElasticResponseMetaPageCopyWith<$Res> get page;
}

/// @nodoc
class _$ElasticResponseMetaCopyWithImpl<$Res, $Val extends ElasticResponseMeta>
    implements $ElasticResponseMetaCopyWith<$Res> {
  _$ElasticResponseMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? warnings = null,
    Object? alerts = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      warnings: null == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMetaPage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ElasticResponseMetaPageCopyWith<$Res> get page {
    return $ElasticResponseMetaPageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElasticResponseMetaImplCopyWith<$Res>
    implements $ElasticResponseMetaCopyWith<$Res> {
  factory _$$ElasticResponseMetaImplCopyWith(_$ElasticResponseMetaImpl value,
          $Res Function(_$ElasticResponseMetaImpl) then) =
      __$$ElasticResponseMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "request_id") String requestId,
      List<dynamic> warnings,
      List<dynamic> alerts,
      ElasticResponseMetaPage page});

  @override
  $ElasticResponseMetaPageCopyWith<$Res> get page;
}

/// @nodoc
class __$$ElasticResponseMetaImplCopyWithImpl<$Res>
    extends _$ElasticResponseMetaCopyWithImpl<$Res, _$ElasticResponseMetaImpl>
    implements _$$ElasticResponseMetaImplCopyWith<$Res> {
  __$$ElasticResponseMetaImplCopyWithImpl(_$ElasticResponseMetaImpl _value,
      $Res Function(_$ElasticResponseMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? warnings = null,
    Object? alerts = null,
    Object? page = null,
  }) {
    return _then(_$ElasticResponseMetaImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      warnings: null == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ElasticResponseMetaPage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticResponseMetaImpl implements _ElasticResponseMeta {
  _$ElasticResponseMetaImpl(
      {@JsonKey(name: "request_id") required this.requestId,
      required final List<dynamic> warnings,
      required final List<dynamic> alerts,
      required this.page})
      : _warnings = warnings,
        _alerts = alerts;

  factory _$ElasticResponseMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticResponseMetaImplFromJson(json);

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
    if (_warnings is EqualUnmodifiableListView) return _warnings;
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
    if (_alerts is EqualUnmodifiableListView) return _alerts;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticResponseMetaImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      const DeepCollectionEquality().hash(_warnings),
      const DeepCollectionEquality().hash(_alerts),
      page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticResponseMetaImplCopyWith<_$ElasticResponseMetaImpl> get copyWith =>
      __$$ElasticResponseMetaImplCopyWithImpl<_$ElasticResponseMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticResponseMetaImplToJson(
      this,
    );
  }
}

abstract class _ElasticResponseMeta implements ElasticResponseMeta {
  factory _ElasticResponseMeta(
      {@JsonKey(name: "request_id") required final String requestId,
      required final List<dynamic> warnings,
      required final List<dynamic> alerts,
      required final ElasticResponseMetaPage page}) = _$ElasticResponseMetaImpl;

  factory _ElasticResponseMeta.fromJson(Map<String, dynamic> json) =
      _$ElasticResponseMetaImpl.fromJson;

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
  _$$ElasticResponseMetaImplCopyWith<_$ElasticResponseMetaImpl> get copyWith =>
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
      _$ElasticResponseMetaPageCopyWithImpl<$Res, ElasticResponseMetaPage>;
  @useResult
  $Res call(
      {int current,
      int size,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class _$ElasticResponseMetaPageCopyWithImpl<$Res,
        $Val extends ElasticResponseMetaPage>
    implements $ElasticResponseMetaPageCopyWith<$Res> {
  _$ElasticResponseMetaPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? size = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticResponseMetaPageImplCopyWith<$Res>
    implements $ElasticResponseMetaPageCopyWith<$Res> {
  factory _$$ElasticResponseMetaPageImplCopyWith(
          _$ElasticResponseMetaPageImpl value,
          $Res Function(_$ElasticResponseMetaPageImpl) then) =
      __$$ElasticResponseMetaPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int current,
      int size,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class __$$ElasticResponseMetaPageImplCopyWithImpl<$Res>
    extends _$ElasticResponseMetaPageCopyWithImpl<$Res,
        _$ElasticResponseMetaPageImpl>
    implements _$$ElasticResponseMetaPageImplCopyWith<$Res> {
  __$$ElasticResponseMetaPageImplCopyWithImpl(
      _$ElasticResponseMetaPageImpl _value,
      $Res Function(_$ElasticResponseMetaPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? size = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$ElasticResponseMetaPageImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticResponseMetaPageImpl implements _ElasticResponseMetaPage {
  _$ElasticResponseMetaPageImpl(
      {required this.current,
      required this.size,
      @JsonKey(name: "total_pages") required this.totalPages,
      @JsonKey(name: "total_results") required this.totalResults});

  factory _$ElasticResponseMetaPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticResponseMetaPageImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticResponseMetaPageImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, current, size, totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticResponseMetaPageImplCopyWith<_$ElasticResponseMetaPageImpl>
      get copyWith => __$$ElasticResponseMetaPageImplCopyWithImpl<
          _$ElasticResponseMetaPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticResponseMetaPageImplToJson(
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
      _$ElasticResponseMetaPageImpl;

  factory _ElasticResponseMetaPage.fromJson(Map<String, dynamic> json) =
      _$ElasticResponseMetaPageImpl.fromJson;

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
  _$$ElasticResponseMetaPageImplCopyWith<_$ElasticResponseMetaPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElasticQuerySuggestionResponse _$ElasticQuerySuggestionResponseFromJson(
    Map<String, dynamic> json) {
  return _ElasticQuerySuggestionResponse.fromJson(json);
}

/// @nodoc
mixin _$ElasticQuerySuggestionResponse {
  /// Documents containing the suggestions
  ElasticSuggestionResult get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticQuerySuggestionResponseCopyWith<ElasticQuerySuggestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticQuerySuggestionResponseCopyWith<$Res> {
  factory $ElasticQuerySuggestionResponseCopyWith(
          ElasticQuerySuggestionResponse value,
          $Res Function(ElasticQuerySuggestionResponse) then) =
      _$ElasticQuerySuggestionResponseCopyWithImpl<$Res,
          ElasticQuerySuggestionResponse>;
  @useResult
  $Res call({ElasticSuggestionResult results});

  $ElasticSuggestionResultCopyWith<$Res> get results;
}

/// @nodoc
class _$ElasticQuerySuggestionResponseCopyWithImpl<$Res,
        $Val extends ElasticQuerySuggestionResponse>
    implements $ElasticQuerySuggestionResponseCopyWith<$Res> {
  _$ElasticQuerySuggestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as ElasticSuggestionResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ElasticSuggestionResultCopyWith<$Res> get results {
    return $ElasticSuggestionResultCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElasticQuerySuggestionResponseImplCopyWith<$Res>
    implements $ElasticQuerySuggestionResponseCopyWith<$Res> {
  factory _$$ElasticQuerySuggestionResponseImplCopyWith(
          _$ElasticQuerySuggestionResponseImpl value,
          $Res Function(_$ElasticQuerySuggestionResponseImpl) then) =
      __$$ElasticQuerySuggestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ElasticSuggestionResult results});

  @override
  $ElasticSuggestionResultCopyWith<$Res> get results;
}

/// @nodoc
class __$$ElasticQuerySuggestionResponseImplCopyWithImpl<$Res>
    extends _$ElasticQuerySuggestionResponseCopyWithImpl<$Res,
        _$ElasticQuerySuggestionResponseImpl>
    implements _$$ElasticQuerySuggestionResponseImplCopyWith<$Res> {
  __$$ElasticQuerySuggestionResponseImplCopyWithImpl(
      _$ElasticQuerySuggestionResponseImpl _value,
      $Res Function(_$ElasticQuerySuggestionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$ElasticQuerySuggestionResponseImpl(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as ElasticSuggestionResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticQuerySuggestionResponseImpl
    extends _ElasticQuerySuggestionResponse {
  _$ElasticQuerySuggestionResponseImpl({required this.results}) : super._();

  factory _$ElasticQuerySuggestionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ElasticQuerySuggestionResponseImplFromJson(json);

  /// Documents containing the suggestions
  @override
  final ElasticSuggestionResult results;

  @override
  String toString() {
    return 'ElasticQuerySuggestionResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticQuerySuggestionResponseImpl &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticQuerySuggestionResponseImplCopyWith<
          _$ElasticQuerySuggestionResponseImpl>
      get copyWith => __$$ElasticQuerySuggestionResponseImplCopyWithImpl<
          _$ElasticQuerySuggestionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticQuerySuggestionResponseImplToJson(
      this,
    );
  }
}

abstract class _ElasticQuerySuggestionResponse
    extends ElasticQuerySuggestionResponse {
  factory _ElasticQuerySuggestionResponse(
          {required final ElasticSuggestionResult results}) =
      _$ElasticQuerySuggestionResponseImpl;
  _ElasticQuerySuggestionResponse._() : super._();

  factory _ElasticQuerySuggestionResponse.fromJson(Map<String, dynamic> json) =
      _$ElasticQuerySuggestionResponseImpl.fromJson;

  @override

  /// Documents containing the suggestions
  ElasticSuggestionResult get results;
  @override
  @JsonKey(ignore: true)
  _$$ElasticQuerySuggestionResponseImplCopyWith<
          _$ElasticQuerySuggestionResponseImpl>
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
      _$ElasticResultMetaCopyWithImpl<$Res, ElasticResultMeta>;
  @useResult
  $Res call({double? score});
}

/// @nodoc
class _$ElasticResultMetaCopyWithImpl<$Res, $Val extends ElasticResultMeta>
    implements $ElasticResultMetaCopyWith<$Res> {
  _$ElasticResultMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticResultMetaImplCopyWith<$Res>
    implements $ElasticResultMetaCopyWith<$Res> {
  factory _$$ElasticResultMetaImplCopyWith(_$ElasticResultMetaImpl value,
          $Res Function(_$ElasticResultMetaImpl) then) =
      __$$ElasticResultMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? score});
}

/// @nodoc
class __$$ElasticResultMetaImplCopyWithImpl<$Res>
    extends _$ElasticResultMetaCopyWithImpl<$Res, _$ElasticResultMetaImpl>
    implements _$$ElasticResultMetaImplCopyWith<$Res> {
  __$$ElasticResultMetaImplCopyWithImpl(_$ElasticResultMetaImpl _value,
      $Res Function(_$ElasticResultMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_$ElasticResultMetaImpl(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticResultMetaImpl implements _ElasticResultMeta {
  _$ElasticResultMetaImpl({this.score});

  factory _$ElasticResultMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticResultMetaImplFromJson(json);

  /// The relevance of the result
  @override
  final double? score;

  @override
  String toString() {
    return 'ElasticResultMeta(score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticResultMetaImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticResultMetaImplCopyWith<_$ElasticResultMetaImpl> get copyWith =>
      __$$ElasticResultMetaImplCopyWithImpl<_$ElasticResultMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticResultMetaImplToJson(
      this,
    );
  }
}

abstract class _ElasticResultMeta implements ElasticResultMeta {
  factory _ElasticResultMeta({final double? score}) = _$ElasticResultMetaImpl;

  factory _ElasticResultMeta.fromJson(Map<String, dynamic> json) =
      _$ElasticResultMetaImpl.fromJson;

  @override

  /// The relevance of the result
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$ElasticResultMetaImplCopyWith<_$ElasticResultMetaImpl> get copyWith =>
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
      _$ElasticResultCopyWithImpl<$Res, ElasticResult>;
  @useResult
  $Res call(
      {Map<String, dynamic>? data,
      Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") ElasticResultMeta meta,
      @JsonKey(name: "_group") List<ElasticResult>? group,
      @JsonKey(name: "_group_key") String? groupKey});

  $ElasticResultMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ElasticResultCopyWithImpl<$Res, $Val extends ElasticResult>
    implements $ElasticResultCopyWith<$Res> {
  _$ElasticResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? snippets = freezed,
    Object? meta = null,
    Object? group = freezed,
    Object? groupKey = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      snippets: freezed == snippets
          ? _value.snippets
          : snippets // ignore: cast_nullable_to_non_nullable
              as Map<String, ElasticResultSnippet>?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResultMeta,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>?,
      groupKey: freezed == groupKey
          ? _value.groupKey
          : groupKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ElasticResultMetaCopyWith<$Res> get meta {
    return $ElasticResultMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElasticResultImplCopyWith<$Res>
    implements $ElasticResultCopyWith<$Res> {
  factory _$$ElasticResultImplCopyWith(
          _$ElasticResultImpl value, $Res Function(_$ElasticResultImpl) then) =
      __$$ElasticResultImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$ElasticResultImplCopyWithImpl<$Res>
    extends _$ElasticResultCopyWithImpl<$Res, _$ElasticResultImpl>
    implements _$$ElasticResultImplCopyWith<$Res> {
  __$$ElasticResultImplCopyWithImpl(
      _$ElasticResultImpl _value, $Res Function(_$ElasticResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? snippets = freezed,
    Object? meta = null,
    Object? group = freezed,
    Object? groupKey = freezed,
  }) {
    return _then(_$ElasticResultImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      snippets: freezed == snippets
          ? _value._snippets
          : snippets // ignore: cast_nullable_to_non_nullable
              as Map<String, ElasticResultSnippet>?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ElasticResultMeta,
      group: freezed == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ElasticResult>?,
      groupKey: freezed == groupKey
          ? _value.groupKey
          : groupKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticResultImpl extends _ElasticResult {
  _$ElasticResultImpl(
      {final Map<String, dynamic>? data,
      final Map<String, ElasticResultSnippet>? snippets,
      @JsonKey(name: "_meta") required this.meta,
      @JsonKey(name: "_group") final List<ElasticResult>? group,
      @JsonKey(name: "_group_key") this.groupKey})
      : _data = data,
        _snippets = snippets,
        _group = group,
        super._();

  factory _$ElasticResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticResultImplFromJson(json);

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
    if (_data is EqualUnmodifiableMapView) return _data;
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
    if (_snippets is EqualUnmodifiableMapView) return _snippets;
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
    if (_group is EqualUnmodifiableListView) return _group;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticResultImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._snippets, _snippets) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._group, _group) &&
            (identical(other.groupKey, groupKey) ||
                other.groupKey == groupKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_snippets),
      meta,
      const DeepCollectionEquality().hash(_group),
      groupKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticResultImplCopyWith<_$ElasticResultImpl> get copyWith =>
      __$$ElasticResultImplCopyWithImpl<_$ElasticResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticResultImplToJson(
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
          @JsonKey(name: "_group_key") final String? groupKey}) =
      _$ElasticResultImpl;
  _ElasticResult._() : super._();

  factory _ElasticResult.fromJson(Map<String, dynamic> json) =
      _$ElasticResultImpl.fromJson;

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
  _$$ElasticResultImplCopyWith<_$ElasticResultImpl> get copyWith =>
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
      _$ElasticResultSnippetCopyWithImpl<$Res, ElasticResultSnippet>;
  @useResult
  $Res call({String fullText, List<String> textParts, List<String> highlights});
}

/// @nodoc
class _$ElasticResultSnippetCopyWithImpl<$Res,
        $Val extends ElasticResultSnippet>
    implements $ElasticResultSnippetCopyWith<$Res> {
  _$ElasticResultSnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? textParts = null,
    Object? highlights = null,
  }) {
    return _then(_value.copyWith(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      textParts: null == textParts
          ? _value.textParts
          : textParts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticResultSnippetImplCopyWith<$Res>
    implements $ElasticResultSnippetCopyWith<$Res> {
  factory _$$ElasticResultSnippetImplCopyWith(_$ElasticResultSnippetImpl value,
          $Res Function(_$ElasticResultSnippetImpl) then) =
      __$$ElasticResultSnippetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullText, List<String> textParts, List<String> highlights});
}

/// @nodoc
class __$$ElasticResultSnippetImplCopyWithImpl<$Res>
    extends _$ElasticResultSnippetCopyWithImpl<$Res, _$ElasticResultSnippetImpl>
    implements _$$ElasticResultSnippetImplCopyWith<$Res> {
  __$$ElasticResultSnippetImplCopyWithImpl(_$ElasticResultSnippetImpl _value,
      $Res Function(_$ElasticResultSnippetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? textParts = null,
    Object? highlights = null,
  }) {
    return _then(_$ElasticResultSnippetImpl(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      textParts: null == textParts
          ? _value._textParts
          : textParts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticResultSnippetImpl implements _ElasticResultSnippet {
  _$ElasticResultSnippetImpl(
      {required this.fullText,
      required final List<String> textParts,
      required final List<String> highlights})
      : _textParts = textParts,
        _highlights = highlights;

  factory _$ElasticResultSnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticResultSnippetImplFromJson(json);

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
    if (_textParts is EqualUnmodifiableListView) return _textParts;
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
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  @override
  String toString() {
    return 'ElasticResultSnippet(fullText: $fullText, textParts: $textParts, highlights: $highlights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticResultSnippetImpl &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            const DeepCollectionEquality()
                .equals(other._textParts, _textParts) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullText,
      const DeepCollectionEquality().hash(_textParts),
      const DeepCollectionEquality().hash(_highlights));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticResultSnippetImplCopyWith<_$ElasticResultSnippetImpl>
      get copyWith =>
          __$$ElasticResultSnippetImplCopyWithImpl<_$ElasticResultSnippetImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticResultSnippetImplToJson(
      this,
    );
  }
}

abstract class _ElasticResultSnippet implements ElasticResultSnippet {
  factory _ElasticResultSnippet(
      {required final String fullText,
      required final List<String> textParts,
      required final List<String> highlights}) = _$ElasticResultSnippetImpl;

  factory _ElasticResultSnippet.fromJson(Map<String, dynamic> json) =
      _$ElasticResultSnippetImpl.fromJson;

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
  _$$ElasticResultSnippetImplCopyWith<_$ElasticResultSnippetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElasticSuggestionResult _$ElasticSuggestionResultFromJson(
    Map<String, dynamic> json) {
  return _ElasticSuggestionResult.fromJson(json);
}

/// @nodoc
mixin _$ElasticSuggestionResult {
  /// A list of documents
  List<ElasticSuggestionDocument>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticSuggestionResultCopyWith<ElasticSuggestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticSuggestionResultCopyWith<$Res> {
  factory $ElasticSuggestionResultCopyWith(ElasticSuggestionResult value,
          $Res Function(ElasticSuggestionResult) then) =
      _$ElasticSuggestionResultCopyWithImpl<$Res, ElasticSuggestionResult>;
  @useResult
  $Res call({List<ElasticSuggestionDocument>? documents});
}

/// @nodoc
class _$ElasticSuggestionResultCopyWithImpl<$Res,
        $Val extends ElasticSuggestionResult>
    implements $ElasticSuggestionResultCopyWith<$Res> {
  _$ElasticSuggestionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(_value.copyWith(
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ElasticSuggestionDocument>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticSuggestionResultImplCopyWith<$Res>
    implements $ElasticSuggestionResultCopyWith<$Res> {
  factory _$$ElasticSuggestionResultImplCopyWith(
          _$ElasticSuggestionResultImpl value,
          $Res Function(_$ElasticSuggestionResultImpl) then) =
      __$$ElasticSuggestionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ElasticSuggestionDocument>? documents});
}

/// @nodoc
class __$$ElasticSuggestionResultImplCopyWithImpl<$Res>
    extends _$ElasticSuggestionResultCopyWithImpl<$Res,
        _$ElasticSuggestionResultImpl>
    implements _$$ElasticSuggestionResultImplCopyWith<$Res> {
  __$$ElasticSuggestionResultImplCopyWithImpl(
      _$ElasticSuggestionResultImpl _value,
      $Res Function(_$ElasticSuggestionResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(_$ElasticSuggestionResultImpl(
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ElasticSuggestionDocument>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticSuggestionResultImpl extends _ElasticSuggestionResult {
  _$ElasticSuggestionResultImpl(
      {final List<ElasticSuggestionDocument>? documents})
      : _documents = documents,
        super._();

  factory _$ElasticSuggestionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticSuggestionResultImplFromJson(json);

  /// A list of documents
  final List<ElasticSuggestionDocument>? _documents;

  /// A list of documents
  @override
  List<ElasticSuggestionDocument>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElasticSuggestionResult(documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticSuggestionResultImpl &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticSuggestionResultImplCopyWith<_$ElasticSuggestionResultImpl>
      get copyWith => __$$ElasticSuggestionResultImplCopyWithImpl<
          _$ElasticSuggestionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticSuggestionResultImplToJson(
      this,
    );
  }
}

abstract class _ElasticSuggestionResult extends ElasticSuggestionResult {
  factory _ElasticSuggestionResult(
          {final List<ElasticSuggestionDocument>? documents}) =
      _$ElasticSuggestionResultImpl;
  _ElasticSuggestionResult._() : super._();

  factory _ElasticSuggestionResult.fromJson(Map<String, dynamic> json) =
      _$ElasticSuggestionResultImpl.fromJson;

  @override

  /// A list of documents
  List<ElasticSuggestionDocument>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$ElasticSuggestionResultImplCopyWith<_$ElasticSuggestionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElasticSuggestionDocument _$ElasticSuggestionDocumentFromJson(
    Map<String, dynamic> json) {
  return _ElasticSuggestionDocument.fromJson(json);
}

/// @nodoc
mixin _$ElasticSuggestionDocument {
  /// The suggestion contained in the document of the query suggestion
  String get suggestion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElasticSuggestionDocumentCopyWith<ElasticSuggestionDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElasticSuggestionDocumentCopyWith<$Res> {
  factory $ElasticSuggestionDocumentCopyWith(ElasticSuggestionDocument value,
          $Res Function(ElasticSuggestionDocument) then) =
      _$ElasticSuggestionDocumentCopyWithImpl<$Res, ElasticSuggestionDocument>;
  @useResult
  $Res call({String suggestion});
}

/// @nodoc
class _$ElasticSuggestionDocumentCopyWithImpl<$Res,
        $Val extends ElasticSuggestionDocument>
    implements $ElasticSuggestionDocumentCopyWith<$Res> {
  _$ElasticSuggestionDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestion = null,
  }) {
    return _then(_value.copyWith(
      suggestion: null == suggestion
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElasticSuggestionDocumentImplCopyWith<$Res>
    implements $ElasticSuggestionDocumentCopyWith<$Res> {
  factory _$$ElasticSuggestionDocumentImplCopyWith(
          _$ElasticSuggestionDocumentImpl value,
          $Res Function(_$ElasticSuggestionDocumentImpl) then) =
      __$$ElasticSuggestionDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String suggestion});
}

/// @nodoc
class __$$ElasticSuggestionDocumentImplCopyWithImpl<$Res>
    extends _$ElasticSuggestionDocumentCopyWithImpl<$Res,
        _$ElasticSuggestionDocumentImpl>
    implements _$$ElasticSuggestionDocumentImplCopyWith<$Res> {
  __$$ElasticSuggestionDocumentImplCopyWithImpl(
      _$ElasticSuggestionDocumentImpl _value,
      $Res Function(_$ElasticSuggestionDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestion = null,
  }) {
    return _then(_$ElasticSuggestionDocumentImpl(
      suggestion: null == suggestion
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElasticSuggestionDocumentImpl extends _ElasticSuggestionDocument {
  _$ElasticSuggestionDocumentImpl({required this.suggestion}) : super._();

  factory _$ElasticSuggestionDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElasticSuggestionDocumentImplFromJson(json);

  /// The suggestion contained in the document of the query suggestion
  @override
  final String suggestion;

  @override
  String toString() {
    return 'ElasticSuggestionDocument(suggestion: $suggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElasticSuggestionDocumentImpl &&
            (identical(other.suggestion, suggestion) ||
                other.suggestion == suggestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, suggestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElasticSuggestionDocumentImplCopyWith<_$ElasticSuggestionDocumentImpl>
      get copyWith => __$$ElasticSuggestionDocumentImplCopyWithImpl<
          _$ElasticSuggestionDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElasticSuggestionDocumentImplToJson(
      this,
    );
  }
}

abstract class _ElasticSuggestionDocument extends ElasticSuggestionDocument {
  factory _ElasticSuggestionDocument({required final String suggestion}) =
      _$ElasticSuggestionDocumentImpl;
  _ElasticSuggestionDocument._() : super._();

  factory _ElasticSuggestionDocument.fromJson(Map<String, dynamic> json) =
      _$ElasticSuggestionDocumentImpl.fromJson;

  @override

  /// The suggestion contained in the document of the query suggestion
  String get suggestion;
  @override
  @JsonKey(ignore: true)
  _$$ElasticSuggestionDocumentImplCopyWith<_$ElasticSuggestionDocumentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
