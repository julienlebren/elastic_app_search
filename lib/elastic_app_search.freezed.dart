// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'elastic_app_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
_ElasticAnalytics _$ElasticAnalyticsFromJson(
  Map<String, dynamic> json
) {
    return _ElasticAnalyticsImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticAnalytics {

/// Array of strings representing the tags you’d like to apply to the query.
/// You may submit up to 16 tags, and each may be up to 64 characters in length.
 List<String> get tags;
/// Create a copy of _ElasticAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsCopyWith<_ElasticAnalytics> get copyWith => __$ElasticAnalyticsCopyWithImpl<_ElasticAnalytics>(this as _ElasticAnalytics, _$identity);

  /// Serializes this _ElasticAnalytics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalytics&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return '_ElasticAnalytics(tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsCopyWith<$Res>  {
  factory _$ElasticAnalyticsCopyWith(_ElasticAnalytics value, $Res Function(_ElasticAnalytics) _then) = __$ElasticAnalyticsCopyWithImpl;
@useResult
$Res call({
 List<String> tags
});




}
/// @nodoc
class __$ElasticAnalyticsCopyWithImpl<$Res>
    implements _$ElasticAnalyticsCopyWith<$Res> {
  __$ElasticAnalyticsCopyWithImpl(this._self, this._then);

  final _ElasticAnalytics _self;
  final $Res Function(_ElasticAnalytics) _then;

/// Create a copy of _ElasticAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tags = null,}) {
  return _then(_self.copyWith(
tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticAnalytics].
extension _ElasticAnalyticsPatterns on _ElasticAnalytics {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsImpl() when $default != null:
return $default(_that.tags);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsImpl():
return $default(_that.tags);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsImpl() when $default != null:
return $default(_that.tags);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsImpl implements _ElasticAnalytics {
  const _ElasticAnalyticsImpl({required final  List<String> tags}): _tags = tags;
  factory _ElasticAnalyticsImpl.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsImplFromJson(json);

/// Array of strings representing the tags you’d like to apply to the query.
/// You may submit up to 16 tags, and each may be up to 64 characters in length.
 final  List<String> _tags;
/// Array of strings representing the tags you’d like to apply to the query.
/// You may submit up to 16 tags, and each may be up to 64 characters in length.
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of _ElasticAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsImplCopyWith<_ElasticAnalyticsImpl> get copyWith => __$ElasticAnalyticsImplCopyWithImpl<_ElasticAnalyticsImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsImpl&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return '_ElasticAnalytics(tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsImplCopyWith<$Res> implements _$ElasticAnalyticsCopyWith<$Res> {
  factory _$ElasticAnalyticsImplCopyWith(_ElasticAnalyticsImpl value, $Res Function(_ElasticAnalyticsImpl) _then) = __$ElasticAnalyticsImplCopyWithImpl;
@override @useResult
$Res call({
 List<String> tags
});




}
/// @nodoc
class __$ElasticAnalyticsImplCopyWithImpl<$Res>
    implements _$ElasticAnalyticsImplCopyWith<$Res> {
  __$ElasticAnalyticsImplCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsImpl _self;
  final $Res Function(_ElasticAnalyticsImpl) _then;

/// Create a copy of _ElasticAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tags = null,}) {
  return _then(_ElasticAnalyticsImpl(
tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ElasticClickthroughRequest {

 String get query;@JsonKey(name: "document_id") String get documentId;@JsonKey(name: "request_id") String? get requestId; List<String>? get tags;
/// Create a copy of ElasticClickthroughRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticClickthroughRequestCopyWith<ElasticClickthroughRequest> get copyWith => _$ElasticClickthroughRequestCopyWithImpl<ElasticClickthroughRequest>(this as ElasticClickthroughRequest, _$identity);

  /// Serializes this ElasticClickthroughRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticClickthroughRequest&&(identical(other.query, query) || other.query == query)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,documentId,requestId,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'ElasticClickthroughRequest(query: $query, documentId: $documentId, requestId: $requestId, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ElasticClickthroughRequestCopyWith<$Res>  {
  factory $ElasticClickthroughRequestCopyWith(ElasticClickthroughRequest value, $Res Function(ElasticClickthroughRequest) _then) = _$ElasticClickthroughRequestCopyWithImpl;
@useResult
$Res call({
 String query,@JsonKey(name: "document_id") String documentId,@JsonKey(name: "request_id") String? requestId, List<String>? tags
});




}
/// @nodoc
class _$ElasticClickthroughRequestCopyWithImpl<$Res>
    implements $ElasticClickthroughRequestCopyWith<$Res> {
  _$ElasticClickthroughRequestCopyWithImpl(this._self, this._then);

  final ElasticClickthroughRequest _self;
  final $Res Function(ElasticClickthroughRequest) _then;

/// Create a copy of ElasticClickthroughRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? documentId = null,Object? requestId = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticClickthroughRequest].
extension ElasticClickthroughRequestPatterns on ElasticClickthroughRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticClickthroughRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticClickthroughRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticClickthroughRequest value)  $default,){
final _that = this;
switch (_that) {
case _ElasticClickthroughRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticClickthroughRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticClickthroughRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query, @JsonKey(name: "document_id")  String documentId, @JsonKey(name: "request_id")  String? requestId,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticClickthroughRequest() when $default != null:
return $default(_that.query,_that.documentId,_that.requestId,_that.tags);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query, @JsonKey(name: "document_id")  String documentId, @JsonKey(name: "request_id")  String? requestId,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _ElasticClickthroughRequest():
return $default(_that.query,_that.documentId,_that.requestId,_that.tags);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query, @JsonKey(name: "document_id")  String documentId, @JsonKey(name: "request_id")  String? requestId,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _ElasticClickthroughRequest() when $default != null:
return $default(_that.query,_that.documentId,_that.requestId,_that.tags);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticClickthroughRequest extends ElasticClickthroughRequest {
  const _ElasticClickthroughRequest({required this.query, @JsonKey(name: "document_id") required this.documentId, @JsonKey(name: "request_id") this.requestId, final  List<String>? tags}): _tags = tags,super._();
  factory _ElasticClickthroughRequest.fromJson(Map<String, dynamic> json) => _$ElasticClickthroughRequestFromJson(json);

@override final  String query;
@override@JsonKey(name: "document_id") final  String documentId;
@override@JsonKey(name: "request_id") final  String? requestId;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ElasticClickthroughRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticClickthroughRequestCopyWith<_ElasticClickthroughRequest> get copyWith => __$ElasticClickthroughRequestCopyWithImpl<_ElasticClickthroughRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticClickthroughRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticClickthroughRequest&&(identical(other.query, query) || other.query == query)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,documentId,requestId,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ElasticClickthroughRequest(query: $query, documentId: $documentId, requestId: $requestId, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ElasticClickthroughRequestCopyWith<$Res> implements $ElasticClickthroughRequestCopyWith<$Res> {
  factory _$ElasticClickthroughRequestCopyWith(_ElasticClickthroughRequest value, $Res Function(_ElasticClickthroughRequest) _then) = __$ElasticClickthroughRequestCopyWithImpl;
@override @useResult
$Res call({
 String query,@JsonKey(name: "document_id") String documentId,@JsonKey(name: "request_id") String? requestId, List<String>? tags
});




}
/// @nodoc
class __$ElasticClickthroughRequestCopyWithImpl<$Res>
    implements _$ElasticClickthroughRequestCopyWith<$Res> {
  __$ElasticClickthroughRequestCopyWithImpl(this._self, this._then);

  final _ElasticClickthroughRequest _self;
  final $Res Function(_ElasticClickthroughRequest) _then;

/// Create a copy of ElasticClickthroughRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? documentId = null,Object? requestId = freezed,Object? tags = freezed,}) {
  return _then(_ElasticClickthroughRequest(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$ElasticAnalyticsDateFilter {

 String? get from; String? get to;
/// Create a copy of ElasticAnalyticsDateFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsDateFilterCopyWith<ElasticAnalyticsDateFilter> get copyWith => _$ElasticAnalyticsDateFilterCopyWithImpl<ElasticAnalyticsDateFilter>(this as ElasticAnalyticsDateFilter, _$identity);

  /// Serializes this ElasticAnalyticsDateFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsDateFilter&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'ElasticAnalyticsDateFilter(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsDateFilterCopyWith<$Res>  {
  factory $ElasticAnalyticsDateFilterCopyWith(ElasticAnalyticsDateFilter value, $Res Function(ElasticAnalyticsDateFilter) _then) = _$ElasticAnalyticsDateFilterCopyWithImpl;
@useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class _$ElasticAnalyticsDateFilterCopyWithImpl<$Res>
    implements $ElasticAnalyticsDateFilterCopyWith<$Res> {
  _$ElasticAnalyticsDateFilterCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsDateFilter _self;
  final $Res Function(ElasticAnalyticsDateFilter) _then;

/// Create a copy of ElasticAnalyticsDateFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticAnalyticsDateFilter].
extension ElasticAnalyticsDateFilterPatterns on ElasticAnalyticsDateFilter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsDateFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsDateFilter() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsDateFilter value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsDateFilter():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsDateFilter value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsDateFilter() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? from,  String? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsDateFilter() when $default != null:
return $default(_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? from,  String? to)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsDateFilter():
return $default(_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? from,  String? to)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsDateFilter() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsDateFilter extends ElasticAnalyticsDateFilter {
  const _ElasticAnalyticsDateFilter({this.from, this.to}): super._();
  factory _ElasticAnalyticsDateFilter.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsDateFilterFromJson(json);

@override final  String? from;
@override final  String? to;

/// Create a copy of ElasticAnalyticsDateFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsDateFilterCopyWith<_ElasticAnalyticsDateFilter> get copyWith => __$ElasticAnalyticsDateFilterCopyWithImpl<_ElasticAnalyticsDateFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsDateFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsDateFilter&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'ElasticAnalyticsDateFilter(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsDateFilterCopyWith<$Res> implements $ElasticAnalyticsDateFilterCopyWith<$Res> {
  factory _$ElasticAnalyticsDateFilterCopyWith(_ElasticAnalyticsDateFilter value, $Res Function(_ElasticAnalyticsDateFilter) _then) = __$ElasticAnalyticsDateFilterCopyWithImpl;
@override @useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class __$ElasticAnalyticsDateFilterCopyWithImpl<$Res>
    implements _$ElasticAnalyticsDateFilterCopyWith<$Res> {
  __$ElasticAnalyticsDateFilterCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsDateFilter _self;
  final $Res Function(_ElasticAnalyticsDateFilter) _then;

/// Create a copy of ElasticAnalyticsDateFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_ElasticAnalyticsDateFilter(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ElasticAnalyticsFilter {

 String? get query; bool? get clicks; bool? get results;@JsonKey(name: "document_id") Object? get documentId;@_AnalyticsTagFilterConverter() List<String>? get tag; ElasticAnalyticsDateFilter? get date; List<ElasticAnalyticsFilter>? get all;
/// Create a copy of ElasticAnalyticsFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsFilterCopyWith<ElasticAnalyticsFilter> get copyWith => _$ElasticAnalyticsFilterCopyWithImpl<ElasticAnalyticsFilter>(this as ElasticAnalyticsFilter, _$identity);

  /// Serializes this ElasticAnalyticsFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsFilter&&(identical(other.query, query) || other.query == query)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.results, results) || other.results == results)&&const DeepCollectionEquality().equals(other.documentId, documentId)&&const DeepCollectionEquality().equals(other.tag, tag)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.all, all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,clicks,results,const DeepCollectionEquality().hash(documentId),const DeepCollectionEquality().hash(tag),date,const DeepCollectionEquality().hash(all));

@override
String toString() {
  return 'ElasticAnalyticsFilter(query: $query, clicks: $clicks, results: $results, documentId: $documentId, tag: $tag, date: $date, all: $all)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsFilterCopyWith<$Res>  {
  factory $ElasticAnalyticsFilterCopyWith(ElasticAnalyticsFilter value, $Res Function(ElasticAnalyticsFilter) _then) = _$ElasticAnalyticsFilterCopyWithImpl;
@useResult
$Res call({
 String? query, bool? clicks, bool? results,@JsonKey(name: "document_id") Object? documentId,@_AnalyticsTagFilterConverter() List<String>? tag, ElasticAnalyticsDateFilter? date, List<ElasticAnalyticsFilter>? all
});


$ElasticAnalyticsDateFilterCopyWith<$Res>? get date;

}
/// @nodoc
class _$ElasticAnalyticsFilterCopyWithImpl<$Res>
    implements $ElasticAnalyticsFilterCopyWith<$Res> {
  _$ElasticAnalyticsFilterCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsFilter _self;
  final $Res Function(ElasticAnalyticsFilter) _then;

/// Create a copy of ElasticAnalyticsFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? clicks = freezed,Object? results = freezed,Object? documentId = freezed,Object? tag = freezed,Object? date = freezed,Object? all = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,clicks: freezed == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as bool?,documentId: freezed == documentId ? _self.documentId : documentId ,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as List<String>?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsDateFilter?,all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsFilter>?,
  ));
}
/// Create a copy of ElasticAnalyticsFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsDateFilterCopyWith<$Res>? get date {
    if (_self.date == null) {
    return null;
  }

  return $ElasticAnalyticsDateFilterCopyWith<$Res>(_self.date!, (value) {
    return _then(_self.copyWith(date: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticAnalyticsFilter].
extension ElasticAnalyticsFilterPatterns on ElasticAnalyticsFilter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsFilter() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsFilter value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsFilter():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsFilter value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsFilter() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  bool? clicks,  bool? results, @JsonKey(name: "document_id")  Object? documentId, @_AnalyticsTagFilterConverter()  List<String>? tag,  ElasticAnalyticsDateFilter? date,  List<ElasticAnalyticsFilter>? all)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsFilter() when $default != null:
return $default(_that.query,_that.clicks,_that.results,_that.documentId,_that.tag,_that.date,_that.all);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  bool? clicks,  bool? results, @JsonKey(name: "document_id")  Object? documentId, @_AnalyticsTagFilterConverter()  List<String>? tag,  ElasticAnalyticsDateFilter? date,  List<ElasticAnalyticsFilter>? all)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsFilter():
return $default(_that.query,_that.clicks,_that.results,_that.documentId,_that.tag,_that.date,_that.all);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  bool? clicks,  bool? results, @JsonKey(name: "document_id")  Object? documentId, @_AnalyticsTagFilterConverter()  List<String>? tag,  ElasticAnalyticsDateFilter? date,  List<ElasticAnalyticsFilter>? all)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsFilter() when $default != null:
return $default(_that.query,_that.clicks,_that.results,_that.documentId,_that.tag,_that.date,_that.all);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsFilter extends ElasticAnalyticsFilter {
  const _ElasticAnalyticsFilter({this.query, this.clicks, this.results, @JsonKey(name: "document_id") this.documentId, @_AnalyticsTagFilterConverter() final  List<String>? tag, this.date, final  List<ElasticAnalyticsFilter>? all}): _tag = tag,_all = all,super._();
  factory _ElasticAnalyticsFilter.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsFilterFromJson(json);

@override final  String? query;
@override final  bool? clicks;
@override final  bool? results;
@override@JsonKey(name: "document_id") final  Object? documentId;
 final  List<String>? _tag;
@override@_AnalyticsTagFilterConverter() List<String>? get tag {
  final value = _tag;
  if (value == null) return null;
  if (_tag is EqualUnmodifiableListView) return _tag;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ElasticAnalyticsDateFilter? date;
 final  List<ElasticAnalyticsFilter>? _all;
@override List<ElasticAnalyticsFilter>? get all {
  final value = _all;
  if (value == null) return null;
  if (_all is EqualUnmodifiableListView) return _all;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ElasticAnalyticsFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsFilterCopyWith<_ElasticAnalyticsFilter> get copyWith => __$ElasticAnalyticsFilterCopyWithImpl<_ElasticAnalyticsFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsFilter&&(identical(other.query, query) || other.query == query)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.results, results) || other.results == results)&&const DeepCollectionEquality().equals(other.documentId, documentId)&&const DeepCollectionEquality().equals(other._tag, _tag)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._all, _all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,clicks,results,const DeepCollectionEquality().hash(documentId),const DeepCollectionEquality().hash(_tag),date,const DeepCollectionEquality().hash(_all));

@override
String toString() {
  return 'ElasticAnalyticsFilter(query: $query, clicks: $clicks, results: $results, documentId: $documentId, tag: $tag, date: $date, all: $all)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsFilterCopyWith<$Res> implements $ElasticAnalyticsFilterCopyWith<$Res> {
  factory _$ElasticAnalyticsFilterCopyWith(_ElasticAnalyticsFilter value, $Res Function(_ElasticAnalyticsFilter) _then) = __$ElasticAnalyticsFilterCopyWithImpl;
@override @useResult
$Res call({
 String? query, bool? clicks, bool? results,@JsonKey(name: "document_id") Object? documentId,@_AnalyticsTagFilterConverter() List<String>? tag, ElasticAnalyticsDateFilter? date, List<ElasticAnalyticsFilter>? all
});


@override $ElasticAnalyticsDateFilterCopyWith<$Res>? get date;

}
/// @nodoc
class __$ElasticAnalyticsFilterCopyWithImpl<$Res>
    implements _$ElasticAnalyticsFilterCopyWith<$Res> {
  __$ElasticAnalyticsFilterCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsFilter _self;
  final $Res Function(_ElasticAnalyticsFilter) _then;

/// Create a copy of ElasticAnalyticsFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? clicks = freezed,Object? results = freezed,Object? documentId = freezed,Object? tag = freezed,Object? date = freezed,Object? all = freezed,}) {
  return _then(_ElasticAnalyticsFilter(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,clicks: freezed == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as bool?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as bool?,documentId: freezed == documentId ? _self.documentId : documentId ,tag: freezed == tag ? _self._tag : tag // ignore: cast_nullable_to_non_nullable
as List<String>?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsDateFilter?,all: freezed == all ? _self._all : all // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsFilter>?,
  ));
}

/// Create a copy of ElasticAnalyticsFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsDateFilterCopyWith<$Res>? get date {
    if (_self.date == null) {
    return null;
  }

  return $ElasticAnalyticsDateFilterCopyWith<$Res>(_self.date!, (value) {
    return _then(_self.copyWith(date: value));
  });
}
}


/// @nodoc
mixin _$ElasticAnalyticsQueriesRequest {

 ElasticPageRequest? get page; ElasticAnalyticsFilter? get filters;
/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsQueriesRequestCopyWith<ElasticAnalyticsQueriesRequest> get copyWith => _$ElasticAnalyticsQueriesRequestCopyWithImpl<ElasticAnalyticsQueriesRequest>(this as ElasticAnalyticsQueriesRequest, _$identity);

  /// Serializes this ElasticAnalyticsQueriesRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsQueriesRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,filters);

@override
String toString() {
  return 'ElasticAnalyticsQueriesRequest(page: $page, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsQueriesRequestCopyWith<$Res>  {
  factory $ElasticAnalyticsQueriesRequestCopyWith(ElasticAnalyticsQueriesRequest value, $Res Function(ElasticAnalyticsQueriesRequest) _then) = _$ElasticAnalyticsQueriesRequestCopyWithImpl;
@useResult
$Res call({
 ElasticPageRequest? page, ElasticAnalyticsFilter? filters
});


$ElasticPageRequestCopyWith<$Res>? get page;$ElasticAnalyticsFilterCopyWith<$Res>? get filters;

}
/// @nodoc
class _$ElasticAnalyticsQueriesRequestCopyWithImpl<$Res>
    implements $ElasticAnalyticsQueriesRequestCopyWith<$Res> {
  _$ElasticAnalyticsQueriesRequestCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsQueriesRequest _self;
  final $Res Function(ElasticAnalyticsQueriesRequest) _then;

/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? filters = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticPageRequest?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsFilter?,
  ));
}
/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticPageRequestCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $ElasticPageRequestCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsFilterCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $ElasticAnalyticsFilterCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticAnalyticsQueriesRequest].
extension ElasticAnalyticsQueriesRequestPatterns on ElasticAnalyticsQueriesRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsQueriesRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsQueriesRequest value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsQueriesRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticPageRequest? page,  ElasticAnalyticsFilter? filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesRequest() when $default != null:
return $default(_that.page,_that.filters);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticPageRequest? page,  ElasticAnalyticsFilter? filters)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesRequest():
return $default(_that.page,_that.filters);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticPageRequest? page,  ElasticAnalyticsFilter? filters)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesRequest() when $default != null:
return $default(_that.page,_that.filters);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsQueriesRequest extends ElasticAnalyticsQueriesRequest {
  const _ElasticAnalyticsQueriesRequest({this.page, this.filters}): super._();
  factory _ElasticAnalyticsQueriesRequest.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsQueriesRequestFromJson(json);

@override final  ElasticPageRequest? page;
@override final  ElasticAnalyticsFilter? filters;

/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsQueriesRequestCopyWith<_ElasticAnalyticsQueriesRequest> get copyWith => __$ElasticAnalyticsQueriesRequestCopyWithImpl<_ElasticAnalyticsQueriesRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsQueriesRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsQueriesRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,filters);

@override
String toString() {
  return 'ElasticAnalyticsQueriesRequest(page: $page, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsQueriesRequestCopyWith<$Res> implements $ElasticAnalyticsQueriesRequestCopyWith<$Res> {
  factory _$ElasticAnalyticsQueriesRequestCopyWith(_ElasticAnalyticsQueriesRequest value, $Res Function(_ElasticAnalyticsQueriesRequest) _then) = __$ElasticAnalyticsQueriesRequestCopyWithImpl;
@override @useResult
$Res call({
 ElasticPageRequest? page, ElasticAnalyticsFilter? filters
});


@override $ElasticPageRequestCopyWith<$Res>? get page;@override $ElasticAnalyticsFilterCopyWith<$Res>? get filters;

}
/// @nodoc
class __$ElasticAnalyticsQueriesRequestCopyWithImpl<$Res>
    implements _$ElasticAnalyticsQueriesRequestCopyWith<$Res> {
  __$ElasticAnalyticsQueriesRequestCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsQueriesRequest _self;
  final $Res Function(_ElasticAnalyticsQueriesRequest) _then;

/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? filters = freezed,}) {
  return _then(_ElasticAnalyticsQueriesRequest(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticPageRequest?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsFilter?,
  ));
}

/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticPageRequestCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $ElasticPageRequestCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}/// Create a copy of ElasticAnalyticsQueriesRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsFilterCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $ElasticAnalyticsFilterCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// @nodoc
mixin _$ElasticAnalyticsClicksRequest {

 String? get query; ElasticPageRequest? get page; ElasticAnalyticsFilter? get filters;
/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsClicksRequestCopyWith<ElasticAnalyticsClicksRequest> get copyWith => _$ElasticAnalyticsClicksRequestCopyWithImpl<ElasticAnalyticsClicksRequest>(this as ElasticAnalyticsClicksRequest, _$identity);

  /// Serializes this ElasticAnalyticsClicksRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsClicksRequest&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,page,filters);

@override
String toString() {
  return 'ElasticAnalyticsClicksRequest(query: $query, page: $page, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsClicksRequestCopyWith<$Res>  {
  factory $ElasticAnalyticsClicksRequestCopyWith(ElasticAnalyticsClicksRequest value, $Res Function(ElasticAnalyticsClicksRequest) _then) = _$ElasticAnalyticsClicksRequestCopyWithImpl;
@useResult
$Res call({
 String? query, ElasticPageRequest? page, ElasticAnalyticsFilter? filters
});


$ElasticPageRequestCopyWith<$Res>? get page;$ElasticAnalyticsFilterCopyWith<$Res>? get filters;

}
/// @nodoc
class _$ElasticAnalyticsClicksRequestCopyWithImpl<$Res>
    implements $ElasticAnalyticsClicksRequestCopyWith<$Res> {
  _$ElasticAnalyticsClicksRequestCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsClicksRequest _self;
  final $Res Function(ElasticAnalyticsClicksRequest) _then;

/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? page = freezed,Object? filters = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticPageRequest?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsFilter?,
  ));
}
/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticPageRequestCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $ElasticPageRequestCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsFilterCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $ElasticAnalyticsFilterCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticAnalyticsClicksRequest].
extension ElasticAnalyticsClicksRequestPatterns on ElasticAnalyticsClicksRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsClicksRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsClicksRequest value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsClicksRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  ElasticPageRequest? page,  ElasticAnalyticsFilter? filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksRequest() when $default != null:
return $default(_that.query,_that.page,_that.filters);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  ElasticPageRequest? page,  ElasticAnalyticsFilter? filters)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksRequest():
return $default(_that.query,_that.page,_that.filters);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  ElasticPageRequest? page,  ElasticAnalyticsFilter? filters)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksRequest() when $default != null:
return $default(_that.query,_that.page,_that.filters);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsClicksRequest extends ElasticAnalyticsClicksRequest {
  const _ElasticAnalyticsClicksRequest({this.query, this.page, this.filters}): super._();
  factory _ElasticAnalyticsClicksRequest.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsClicksRequestFromJson(json);

@override final  String? query;
@override final  ElasticPageRequest? page;
@override final  ElasticAnalyticsFilter? filters;

/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsClicksRequestCopyWith<_ElasticAnalyticsClicksRequest> get copyWith => __$ElasticAnalyticsClicksRequestCopyWithImpl<_ElasticAnalyticsClicksRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsClicksRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsClicksRequest&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,page,filters);

@override
String toString() {
  return 'ElasticAnalyticsClicksRequest(query: $query, page: $page, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsClicksRequestCopyWith<$Res> implements $ElasticAnalyticsClicksRequestCopyWith<$Res> {
  factory _$ElasticAnalyticsClicksRequestCopyWith(_ElasticAnalyticsClicksRequest value, $Res Function(_ElasticAnalyticsClicksRequest) _then) = __$ElasticAnalyticsClicksRequestCopyWithImpl;
@override @useResult
$Res call({
 String? query, ElasticPageRequest? page, ElasticAnalyticsFilter? filters
});


@override $ElasticPageRequestCopyWith<$Res>? get page;@override $ElasticAnalyticsFilterCopyWith<$Res>? get filters;

}
/// @nodoc
class __$ElasticAnalyticsClicksRequestCopyWithImpl<$Res>
    implements _$ElasticAnalyticsClicksRequestCopyWith<$Res> {
  __$ElasticAnalyticsClicksRequestCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsClicksRequest _self;
  final $Res Function(_ElasticAnalyticsClicksRequest) _then;

/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? page = freezed,Object? filters = freezed,}) {
  return _then(_ElasticAnalyticsClicksRequest(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticPageRequest?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsFilter?,
  ));
}

/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticPageRequestCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $ElasticPageRequestCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}/// Create a copy of ElasticAnalyticsClicksRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsFilterCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $ElasticAnalyticsFilterCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// @nodoc
mixin _$ElasticAnalyticsCountsRequest {

 ElasticAnalyticsFilter? get filters; ElasticAnalyticsInterval? get interval;
/// Create a copy of ElasticAnalyticsCountsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsCountsRequestCopyWith<ElasticAnalyticsCountsRequest> get copyWith => _$ElasticAnalyticsCountsRequestCopyWithImpl<ElasticAnalyticsCountsRequest>(this as ElasticAnalyticsCountsRequest, _$identity);

  /// Serializes this ElasticAnalyticsCountsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsCountsRequest&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.interval, interval) || other.interval == interval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filters,interval);

@override
String toString() {
  return 'ElasticAnalyticsCountsRequest(filters: $filters, interval: $interval)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsCountsRequestCopyWith<$Res>  {
  factory $ElasticAnalyticsCountsRequestCopyWith(ElasticAnalyticsCountsRequest value, $Res Function(ElasticAnalyticsCountsRequest) _then) = _$ElasticAnalyticsCountsRequestCopyWithImpl;
@useResult
$Res call({
 ElasticAnalyticsFilter? filters, ElasticAnalyticsInterval? interval
});


$ElasticAnalyticsFilterCopyWith<$Res>? get filters;

}
/// @nodoc
class _$ElasticAnalyticsCountsRequestCopyWithImpl<$Res>
    implements $ElasticAnalyticsCountsRequestCopyWith<$Res> {
  _$ElasticAnalyticsCountsRequestCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsCountsRequest _self;
  final $Res Function(ElasticAnalyticsCountsRequest) _then;

/// Create a copy of ElasticAnalyticsCountsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filters = freezed,Object? interval = freezed,}) {
  return _then(_self.copyWith(
filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsFilter?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsInterval?,
  ));
}
/// Create a copy of ElasticAnalyticsCountsRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsFilterCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $ElasticAnalyticsFilterCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticAnalyticsCountsRequest].
extension ElasticAnalyticsCountsRequestPatterns on ElasticAnalyticsCountsRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsCountsRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsCountsRequest value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsCountsRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticAnalyticsFilter? filters,  ElasticAnalyticsInterval? interval)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsRequest() when $default != null:
return $default(_that.filters,_that.interval);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticAnalyticsFilter? filters,  ElasticAnalyticsInterval? interval)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsRequest():
return $default(_that.filters,_that.interval);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticAnalyticsFilter? filters,  ElasticAnalyticsInterval? interval)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsRequest() when $default != null:
return $default(_that.filters,_that.interval);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsCountsRequest extends ElasticAnalyticsCountsRequest {
  const _ElasticAnalyticsCountsRequest({this.filters, this.interval}): super._();
  factory _ElasticAnalyticsCountsRequest.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsCountsRequestFromJson(json);

@override final  ElasticAnalyticsFilter? filters;
@override final  ElasticAnalyticsInterval? interval;

/// Create a copy of ElasticAnalyticsCountsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsCountsRequestCopyWith<_ElasticAnalyticsCountsRequest> get copyWith => __$ElasticAnalyticsCountsRequestCopyWithImpl<_ElasticAnalyticsCountsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsCountsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsCountsRequest&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.interval, interval) || other.interval == interval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filters,interval);

@override
String toString() {
  return 'ElasticAnalyticsCountsRequest(filters: $filters, interval: $interval)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsCountsRequestCopyWith<$Res> implements $ElasticAnalyticsCountsRequestCopyWith<$Res> {
  factory _$ElasticAnalyticsCountsRequestCopyWith(_ElasticAnalyticsCountsRequest value, $Res Function(_ElasticAnalyticsCountsRequest) _then) = __$ElasticAnalyticsCountsRequestCopyWithImpl;
@override @useResult
$Res call({
 ElasticAnalyticsFilter? filters, ElasticAnalyticsInterval? interval
});


@override $ElasticAnalyticsFilterCopyWith<$Res>? get filters;

}
/// @nodoc
class __$ElasticAnalyticsCountsRequestCopyWithImpl<$Res>
    implements _$ElasticAnalyticsCountsRequestCopyWith<$Res> {
  __$ElasticAnalyticsCountsRequestCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsCountsRequest _self;
  final $Res Function(_ElasticAnalyticsCountsRequest) _then;

/// Create a copy of ElasticAnalyticsCountsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filters = freezed,Object? interval = freezed,}) {
  return _then(_ElasticAnalyticsCountsRequest(
filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsFilter?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsInterval?,
  ));
}

/// Create a copy of ElasticAnalyticsCountsRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsFilterCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $ElasticAnalyticsFilterCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// @nodoc
mixin _$ElasticAnalyticsMeta {

 ElasticPageRequest get page;
/// Create a copy of ElasticAnalyticsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsMetaCopyWith<ElasticAnalyticsMeta> get copyWith => _$ElasticAnalyticsMetaCopyWithImpl<ElasticAnalyticsMeta>(this as ElasticAnalyticsMeta, _$identity);

  /// Serializes this ElasticAnalyticsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsMeta&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ElasticAnalyticsMeta(page: $page)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsMetaCopyWith<$Res>  {
  factory $ElasticAnalyticsMetaCopyWith(ElasticAnalyticsMeta value, $Res Function(ElasticAnalyticsMeta) _then) = _$ElasticAnalyticsMetaCopyWithImpl;
@useResult
$Res call({
 ElasticPageRequest page
});


$ElasticPageRequestCopyWith<$Res> get page;

}
/// @nodoc
class _$ElasticAnalyticsMetaCopyWithImpl<$Res>
    implements $ElasticAnalyticsMetaCopyWith<$Res> {
  _$ElasticAnalyticsMetaCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsMeta _self;
  final $Res Function(ElasticAnalyticsMeta) _then;

/// Create a copy of ElasticAnalyticsMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticPageRequest,
  ));
}
/// Create a copy of ElasticAnalyticsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticPageRequestCopyWith<$Res> get page {
  
  return $ElasticPageRequestCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticAnalyticsMeta].
extension ElasticAnalyticsMetaPatterns on ElasticAnalyticsMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsMeta value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticPageRequest page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsMeta() when $default != null:
return $default(_that.page);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticPageRequest page)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsMeta():
return $default(_that.page);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticPageRequest page)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsMeta() when $default != null:
return $default(_that.page);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsMeta extends ElasticAnalyticsMeta {
  const _ElasticAnalyticsMeta({required this.page}): super._();
  factory _ElasticAnalyticsMeta.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsMetaFromJson(json);

@override final  ElasticPageRequest page;

/// Create a copy of ElasticAnalyticsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsMetaCopyWith<_ElasticAnalyticsMeta> get copyWith => __$ElasticAnalyticsMetaCopyWithImpl<_ElasticAnalyticsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsMeta&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ElasticAnalyticsMeta(page: $page)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsMetaCopyWith<$Res> implements $ElasticAnalyticsMetaCopyWith<$Res> {
  factory _$ElasticAnalyticsMetaCopyWith(_ElasticAnalyticsMeta value, $Res Function(_ElasticAnalyticsMeta) _then) = __$ElasticAnalyticsMetaCopyWithImpl;
@override @useResult
$Res call({
 ElasticPageRequest page
});


@override $ElasticPageRequestCopyWith<$Res> get page;

}
/// @nodoc
class __$ElasticAnalyticsMetaCopyWithImpl<$Res>
    implements _$ElasticAnalyticsMetaCopyWith<$Res> {
  __$ElasticAnalyticsMetaCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsMeta _self;
  final $Res Function(_ElasticAnalyticsMeta) _then;

/// Create a copy of ElasticAnalyticsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_ElasticAnalyticsMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticPageRequest,
  ));
}

/// Create a copy of ElasticAnalyticsMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticPageRequestCopyWith<$Res> get page {
  
  return $ElasticPageRequestCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// @nodoc
mixin _$ElasticAnalyticsQueryResult {

 String get term; int get clicks; int get queries;
/// Create a copy of ElasticAnalyticsQueryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsQueryResultCopyWith<ElasticAnalyticsQueryResult> get copyWith => _$ElasticAnalyticsQueryResultCopyWithImpl<ElasticAnalyticsQueryResult>(this as ElasticAnalyticsQueryResult, _$identity);

  /// Serializes this ElasticAnalyticsQueryResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsQueryResult&&(identical(other.term, term) || other.term == term)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.queries, queries) || other.queries == queries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,term,clicks,queries);

@override
String toString() {
  return 'ElasticAnalyticsQueryResult(term: $term, clicks: $clicks, queries: $queries)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsQueryResultCopyWith<$Res>  {
  factory $ElasticAnalyticsQueryResultCopyWith(ElasticAnalyticsQueryResult value, $Res Function(ElasticAnalyticsQueryResult) _then) = _$ElasticAnalyticsQueryResultCopyWithImpl;
@useResult
$Res call({
 String term, int clicks, int queries
});




}
/// @nodoc
class _$ElasticAnalyticsQueryResultCopyWithImpl<$Res>
    implements $ElasticAnalyticsQueryResultCopyWith<$Res> {
  _$ElasticAnalyticsQueryResultCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsQueryResult _self;
  final $Res Function(ElasticAnalyticsQueryResult) _then;

/// Create a copy of ElasticAnalyticsQueryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? term = null,Object? clicks = null,Object? queries = null,}) {
  return _then(_self.copyWith(
term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,queries: null == queries ? _self.queries : queries // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticAnalyticsQueryResult].
extension ElasticAnalyticsQueryResultPatterns on ElasticAnalyticsQueryResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsQueryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueryResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsQueryResult value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueryResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsQueryResult value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueryResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String term,  int clicks,  int queries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueryResult() when $default != null:
return $default(_that.term,_that.clicks,_that.queries);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String term,  int clicks,  int queries)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueryResult():
return $default(_that.term,_that.clicks,_that.queries);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String term,  int clicks,  int queries)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueryResult() when $default != null:
return $default(_that.term,_that.clicks,_that.queries);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsQueryResult extends ElasticAnalyticsQueryResult {
  const _ElasticAnalyticsQueryResult({required this.term, required this.clicks, required this.queries}): super._();
  factory _ElasticAnalyticsQueryResult.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsQueryResultFromJson(json);

@override final  String term;
@override final  int clicks;
@override final  int queries;

/// Create a copy of ElasticAnalyticsQueryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsQueryResultCopyWith<_ElasticAnalyticsQueryResult> get copyWith => __$ElasticAnalyticsQueryResultCopyWithImpl<_ElasticAnalyticsQueryResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsQueryResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsQueryResult&&(identical(other.term, term) || other.term == term)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.queries, queries) || other.queries == queries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,term,clicks,queries);

@override
String toString() {
  return 'ElasticAnalyticsQueryResult(term: $term, clicks: $clicks, queries: $queries)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsQueryResultCopyWith<$Res> implements $ElasticAnalyticsQueryResultCopyWith<$Res> {
  factory _$ElasticAnalyticsQueryResultCopyWith(_ElasticAnalyticsQueryResult value, $Res Function(_ElasticAnalyticsQueryResult) _then) = __$ElasticAnalyticsQueryResultCopyWithImpl;
@override @useResult
$Res call({
 String term, int clicks, int queries
});




}
/// @nodoc
class __$ElasticAnalyticsQueryResultCopyWithImpl<$Res>
    implements _$ElasticAnalyticsQueryResultCopyWith<$Res> {
  __$ElasticAnalyticsQueryResultCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsQueryResult _self;
  final $Res Function(_ElasticAnalyticsQueryResult) _then;

/// Create a copy of ElasticAnalyticsQueryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? term = null,Object? clicks = null,Object? queries = null,}) {
  return _then(_ElasticAnalyticsQueryResult(
term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,queries: null == queries ? _self.queries : queries // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ElasticAnalyticsQueriesResponse {

 ElasticAnalyticsMeta get meta; List<ElasticAnalyticsQueryResult> get results;
/// Create a copy of ElasticAnalyticsQueriesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsQueriesResponseCopyWith<ElasticAnalyticsQueriesResponse> get copyWith => _$ElasticAnalyticsQueriesResponseCopyWithImpl<ElasticAnalyticsQueriesResponse>(this as ElasticAnalyticsQueriesResponse, _$identity);

  /// Serializes this ElasticAnalyticsQueriesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsQueriesResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ElasticAnalyticsQueriesResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsQueriesResponseCopyWith<$Res>  {
  factory $ElasticAnalyticsQueriesResponseCopyWith(ElasticAnalyticsQueriesResponse value, $Res Function(ElasticAnalyticsQueriesResponse) _then) = _$ElasticAnalyticsQueriesResponseCopyWithImpl;
@useResult
$Res call({
 ElasticAnalyticsMeta meta, List<ElasticAnalyticsQueryResult> results
});


$ElasticAnalyticsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticAnalyticsQueriesResponseCopyWithImpl<$Res>
    implements $ElasticAnalyticsQueriesResponseCopyWith<$Res> {
  _$ElasticAnalyticsQueriesResponseCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsQueriesResponse _self;
  final $Res Function(ElasticAnalyticsQueriesResponse) _then;

/// Create a copy of ElasticAnalyticsQueriesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsMeta,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsQueryResult>,
  ));
}
/// Create a copy of ElasticAnalyticsQueriesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsMetaCopyWith<$Res> get meta {
  
  return $ElasticAnalyticsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticAnalyticsQueriesResponse].
extension ElasticAnalyticsQueriesResponsePatterns on ElasticAnalyticsQueriesResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsQueriesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsQueriesResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsQueriesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticAnalyticsMeta meta,  List<ElasticAnalyticsQueryResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticAnalyticsMeta meta,  List<ElasticAnalyticsQueryResult> results)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesResponse():
return $default(_that.meta,_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticAnalyticsMeta meta,  List<ElasticAnalyticsQueryResult> results)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsQueriesResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsQueriesResponse extends ElasticAnalyticsQueriesResponse {
  const _ElasticAnalyticsQueriesResponse({required this.meta, required final  List<ElasticAnalyticsQueryResult> results}): _results = results,super._();
  factory _ElasticAnalyticsQueriesResponse.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsQueriesResponseFromJson(json);

@override final  ElasticAnalyticsMeta meta;
 final  List<ElasticAnalyticsQueryResult> _results;
@override List<ElasticAnalyticsQueryResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ElasticAnalyticsQueriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsQueriesResponseCopyWith<_ElasticAnalyticsQueriesResponse> get copyWith => __$ElasticAnalyticsQueriesResponseCopyWithImpl<_ElasticAnalyticsQueriesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsQueriesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsQueriesResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ElasticAnalyticsQueriesResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsQueriesResponseCopyWith<$Res> implements $ElasticAnalyticsQueriesResponseCopyWith<$Res> {
  factory _$ElasticAnalyticsQueriesResponseCopyWith(_ElasticAnalyticsQueriesResponse value, $Res Function(_ElasticAnalyticsQueriesResponse) _then) = __$ElasticAnalyticsQueriesResponseCopyWithImpl;
@override @useResult
$Res call({
 ElasticAnalyticsMeta meta, List<ElasticAnalyticsQueryResult> results
});


@override $ElasticAnalyticsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticAnalyticsQueriesResponseCopyWithImpl<$Res>
    implements _$ElasticAnalyticsQueriesResponseCopyWith<$Res> {
  __$ElasticAnalyticsQueriesResponseCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsQueriesResponse _self;
  final $Res Function(_ElasticAnalyticsQueriesResponse) _then;

/// Create a copy of ElasticAnalyticsQueriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_ElasticAnalyticsQueriesResponse(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsMeta,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsQueryResult>,
  ));
}

/// Create a copy of ElasticAnalyticsQueriesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsMetaCopyWith<$Res> get meta {
  
  return $ElasticAnalyticsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticAnalyticsClickResult {

@JsonKey(name: "document_id") String get documentId; int get clicks;
/// Create a copy of ElasticAnalyticsClickResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsClickResultCopyWith<ElasticAnalyticsClickResult> get copyWith => _$ElasticAnalyticsClickResultCopyWithImpl<ElasticAnalyticsClickResult>(this as ElasticAnalyticsClickResult, _$identity);

  /// Serializes this ElasticAnalyticsClickResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsClickResult&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.clicks, clicks) || other.clicks == clicks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,documentId,clicks);

@override
String toString() {
  return 'ElasticAnalyticsClickResult(documentId: $documentId, clicks: $clicks)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsClickResultCopyWith<$Res>  {
  factory $ElasticAnalyticsClickResultCopyWith(ElasticAnalyticsClickResult value, $Res Function(ElasticAnalyticsClickResult) _then) = _$ElasticAnalyticsClickResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "document_id") String documentId, int clicks
});




}
/// @nodoc
class _$ElasticAnalyticsClickResultCopyWithImpl<$Res>
    implements $ElasticAnalyticsClickResultCopyWith<$Res> {
  _$ElasticAnalyticsClickResultCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsClickResult _self;
  final $Res Function(ElasticAnalyticsClickResult) _then;

/// Create a copy of ElasticAnalyticsClickResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = null,Object? clicks = null,}) {
  return _then(_self.copyWith(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticAnalyticsClickResult].
extension ElasticAnalyticsClickResultPatterns on ElasticAnalyticsClickResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsClickResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClickResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsClickResult value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClickResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsClickResult value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClickResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "document_id")  String documentId,  int clicks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClickResult() when $default != null:
return $default(_that.documentId,_that.clicks);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "document_id")  String documentId,  int clicks)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClickResult():
return $default(_that.documentId,_that.clicks);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "document_id")  String documentId,  int clicks)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClickResult() when $default != null:
return $default(_that.documentId,_that.clicks);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsClickResult extends ElasticAnalyticsClickResult {
  const _ElasticAnalyticsClickResult({@JsonKey(name: "document_id") required this.documentId, required this.clicks}): super._();
  factory _ElasticAnalyticsClickResult.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsClickResultFromJson(json);

@override@JsonKey(name: "document_id") final  String documentId;
@override final  int clicks;

/// Create a copy of ElasticAnalyticsClickResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsClickResultCopyWith<_ElasticAnalyticsClickResult> get copyWith => __$ElasticAnalyticsClickResultCopyWithImpl<_ElasticAnalyticsClickResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsClickResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsClickResult&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.clicks, clicks) || other.clicks == clicks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,documentId,clicks);

@override
String toString() {
  return 'ElasticAnalyticsClickResult(documentId: $documentId, clicks: $clicks)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsClickResultCopyWith<$Res> implements $ElasticAnalyticsClickResultCopyWith<$Res> {
  factory _$ElasticAnalyticsClickResultCopyWith(_ElasticAnalyticsClickResult value, $Res Function(_ElasticAnalyticsClickResult) _then) = __$ElasticAnalyticsClickResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "document_id") String documentId, int clicks
});




}
/// @nodoc
class __$ElasticAnalyticsClickResultCopyWithImpl<$Res>
    implements _$ElasticAnalyticsClickResultCopyWith<$Res> {
  __$ElasticAnalyticsClickResultCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsClickResult _self;
  final $Res Function(_ElasticAnalyticsClickResult) _then;

/// Create a copy of ElasticAnalyticsClickResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = null,Object? clicks = null,}) {
  return _then(_ElasticAnalyticsClickResult(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ElasticAnalyticsClicksResponse {

 ElasticAnalyticsMeta get meta; List<ElasticAnalyticsClickResult> get results;
/// Create a copy of ElasticAnalyticsClicksResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsClicksResponseCopyWith<ElasticAnalyticsClicksResponse> get copyWith => _$ElasticAnalyticsClicksResponseCopyWithImpl<ElasticAnalyticsClicksResponse>(this as ElasticAnalyticsClicksResponse, _$identity);

  /// Serializes this ElasticAnalyticsClicksResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsClicksResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ElasticAnalyticsClicksResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsClicksResponseCopyWith<$Res>  {
  factory $ElasticAnalyticsClicksResponseCopyWith(ElasticAnalyticsClicksResponse value, $Res Function(ElasticAnalyticsClicksResponse) _then) = _$ElasticAnalyticsClicksResponseCopyWithImpl;
@useResult
$Res call({
 ElasticAnalyticsMeta meta, List<ElasticAnalyticsClickResult> results
});


$ElasticAnalyticsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticAnalyticsClicksResponseCopyWithImpl<$Res>
    implements $ElasticAnalyticsClicksResponseCopyWith<$Res> {
  _$ElasticAnalyticsClicksResponseCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsClicksResponse _self;
  final $Res Function(ElasticAnalyticsClicksResponse) _then;

/// Create a copy of ElasticAnalyticsClicksResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsMeta,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsClickResult>,
  ));
}
/// Create a copy of ElasticAnalyticsClicksResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsMetaCopyWith<$Res> get meta {
  
  return $ElasticAnalyticsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticAnalyticsClicksResponse].
extension ElasticAnalyticsClicksResponsePatterns on ElasticAnalyticsClicksResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsClicksResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsClicksResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsClicksResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticAnalyticsMeta meta,  List<ElasticAnalyticsClickResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticAnalyticsMeta meta,  List<ElasticAnalyticsClickResult> results)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksResponse():
return $default(_that.meta,_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticAnalyticsMeta meta,  List<ElasticAnalyticsClickResult> results)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsClicksResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsClicksResponse extends ElasticAnalyticsClicksResponse {
  const _ElasticAnalyticsClicksResponse({required this.meta, required final  List<ElasticAnalyticsClickResult> results}): _results = results,super._();
  factory _ElasticAnalyticsClicksResponse.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsClicksResponseFromJson(json);

@override final  ElasticAnalyticsMeta meta;
 final  List<ElasticAnalyticsClickResult> _results;
@override List<ElasticAnalyticsClickResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ElasticAnalyticsClicksResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsClicksResponseCopyWith<_ElasticAnalyticsClicksResponse> get copyWith => __$ElasticAnalyticsClicksResponseCopyWithImpl<_ElasticAnalyticsClicksResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsClicksResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsClicksResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ElasticAnalyticsClicksResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsClicksResponseCopyWith<$Res> implements $ElasticAnalyticsClicksResponseCopyWith<$Res> {
  factory _$ElasticAnalyticsClicksResponseCopyWith(_ElasticAnalyticsClicksResponse value, $Res Function(_ElasticAnalyticsClicksResponse) _then) = __$ElasticAnalyticsClicksResponseCopyWithImpl;
@override @useResult
$Res call({
 ElasticAnalyticsMeta meta, List<ElasticAnalyticsClickResult> results
});


@override $ElasticAnalyticsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticAnalyticsClicksResponseCopyWithImpl<$Res>
    implements _$ElasticAnalyticsClicksResponseCopyWith<$Res> {
  __$ElasticAnalyticsClicksResponseCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsClicksResponse _self;
  final $Res Function(_ElasticAnalyticsClicksResponse) _then;

/// Create a copy of ElasticAnalyticsClicksResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_ElasticAnalyticsClicksResponse(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticAnalyticsMeta,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsClickResult>,
  ));
}

/// Create a copy of ElasticAnalyticsClicksResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticAnalyticsMetaCopyWith<$Res> get meta {
  
  return $ElasticAnalyticsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticAnalyticsCountResult {

 int get clicks; int get queries; String get from; String get to;
/// Create a copy of ElasticAnalyticsCountResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsCountResultCopyWith<ElasticAnalyticsCountResult> get copyWith => _$ElasticAnalyticsCountResultCopyWithImpl<ElasticAnalyticsCountResult>(this as ElasticAnalyticsCountResult, _$identity);

  /// Serializes this ElasticAnalyticsCountResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsCountResult&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.queries, queries) || other.queries == queries)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clicks,queries,from,to);

@override
String toString() {
  return 'ElasticAnalyticsCountResult(clicks: $clicks, queries: $queries, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsCountResultCopyWith<$Res>  {
  factory $ElasticAnalyticsCountResultCopyWith(ElasticAnalyticsCountResult value, $Res Function(ElasticAnalyticsCountResult) _then) = _$ElasticAnalyticsCountResultCopyWithImpl;
@useResult
$Res call({
 int clicks, int queries, String from, String to
});




}
/// @nodoc
class _$ElasticAnalyticsCountResultCopyWithImpl<$Res>
    implements $ElasticAnalyticsCountResultCopyWith<$Res> {
  _$ElasticAnalyticsCountResultCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsCountResult _self;
  final $Res Function(ElasticAnalyticsCountResult) _then;

/// Create a copy of ElasticAnalyticsCountResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clicks = null,Object? queries = null,Object? from = null,Object? to = null,}) {
  return _then(_self.copyWith(
clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,queries: null == queries ? _self.queries : queries // ignore: cast_nullable_to_non_nullable
as int,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticAnalyticsCountResult].
extension ElasticAnalyticsCountResultPatterns on ElasticAnalyticsCountResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsCountResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsCountResult value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsCountResult value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int clicks,  int queries,  String from,  String to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountResult() when $default != null:
return $default(_that.clicks,_that.queries,_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int clicks,  int queries,  String from,  String to)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountResult():
return $default(_that.clicks,_that.queries,_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int clicks,  int queries,  String from,  String to)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountResult() when $default != null:
return $default(_that.clicks,_that.queries,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsCountResult extends ElasticAnalyticsCountResult {
  const _ElasticAnalyticsCountResult({required this.clicks, required this.queries, required this.from, required this.to}): super._();
  factory _ElasticAnalyticsCountResult.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsCountResultFromJson(json);

@override final  int clicks;
@override final  int queries;
@override final  String from;
@override final  String to;

/// Create a copy of ElasticAnalyticsCountResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsCountResultCopyWith<_ElasticAnalyticsCountResult> get copyWith => __$ElasticAnalyticsCountResultCopyWithImpl<_ElasticAnalyticsCountResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsCountResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsCountResult&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.queries, queries) || other.queries == queries)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clicks,queries,from,to);

@override
String toString() {
  return 'ElasticAnalyticsCountResult(clicks: $clicks, queries: $queries, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsCountResultCopyWith<$Res> implements $ElasticAnalyticsCountResultCopyWith<$Res> {
  factory _$ElasticAnalyticsCountResultCopyWith(_ElasticAnalyticsCountResult value, $Res Function(_ElasticAnalyticsCountResult) _then) = __$ElasticAnalyticsCountResultCopyWithImpl;
@override @useResult
$Res call({
 int clicks, int queries, String from, String to
});




}
/// @nodoc
class __$ElasticAnalyticsCountResultCopyWithImpl<$Res>
    implements _$ElasticAnalyticsCountResultCopyWith<$Res> {
  __$ElasticAnalyticsCountResultCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsCountResult _self;
  final $Res Function(_ElasticAnalyticsCountResult) _then;

/// Create a copy of ElasticAnalyticsCountResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clicks = null,Object? queries = null,Object? from = null,Object? to = null,}) {
  return _then(_ElasticAnalyticsCountResult(
clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,queries: null == queries ? _self.queries : queries // ignore: cast_nullable_to_non_nullable
as int,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ElasticAnalyticsCountsResponse {

 List<ElasticAnalyticsCountResult> get results;
/// Create a copy of ElasticAnalyticsCountsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticAnalyticsCountsResponseCopyWith<ElasticAnalyticsCountsResponse> get copyWith => _$ElasticAnalyticsCountsResponseCopyWithImpl<ElasticAnalyticsCountsResponse>(this as ElasticAnalyticsCountsResponse, _$identity);

  /// Serializes this ElasticAnalyticsCountsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticAnalyticsCountsResponse&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ElasticAnalyticsCountsResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class $ElasticAnalyticsCountsResponseCopyWith<$Res>  {
  factory $ElasticAnalyticsCountsResponseCopyWith(ElasticAnalyticsCountsResponse value, $Res Function(ElasticAnalyticsCountsResponse) _then) = _$ElasticAnalyticsCountsResponseCopyWithImpl;
@useResult
$Res call({
 List<ElasticAnalyticsCountResult> results
});




}
/// @nodoc
class _$ElasticAnalyticsCountsResponseCopyWithImpl<$Res>
    implements $ElasticAnalyticsCountsResponseCopyWith<$Res> {
  _$ElasticAnalyticsCountsResponseCopyWithImpl(this._self, this._then);

  final ElasticAnalyticsCountsResponse _self;
  final $Res Function(ElasticAnalyticsCountsResponse) _then;

/// Create a copy of ElasticAnalyticsCountsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsCountResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticAnalyticsCountsResponse].
extension ElasticAnalyticsCountsResponsePatterns on ElasticAnalyticsCountsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticAnalyticsCountsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticAnalyticsCountsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticAnalyticsCountsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ElasticAnalyticsCountResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsResponse() when $default != null:
return $default(_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ElasticAnalyticsCountResult> results)  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsResponse():
return $default(_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ElasticAnalyticsCountResult> results)?  $default,) {final _that = this;
switch (_that) {
case _ElasticAnalyticsCountsResponse() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticAnalyticsCountsResponse extends ElasticAnalyticsCountsResponse {
  const _ElasticAnalyticsCountsResponse({required final  List<ElasticAnalyticsCountResult> results}): _results = results,super._();
  factory _ElasticAnalyticsCountsResponse.fromJson(Map<String, dynamic> json) => _$ElasticAnalyticsCountsResponseFromJson(json);

 final  List<ElasticAnalyticsCountResult> _results;
@override List<ElasticAnalyticsCountResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ElasticAnalyticsCountsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticAnalyticsCountsResponseCopyWith<_ElasticAnalyticsCountsResponse> get copyWith => __$ElasticAnalyticsCountsResponseCopyWithImpl<_ElasticAnalyticsCountsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticAnalyticsCountsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticAnalyticsCountsResponse&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ElasticAnalyticsCountsResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class _$ElasticAnalyticsCountsResponseCopyWith<$Res> implements $ElasticAnalyticsCountsResponseCopyWith<$Res> {
  factory _$ElasticAnalyticsCountsResponseCopyWith(_ElasticAnalyticsCountsResponse value, $Res Function(_ElasticAnalyticsCountsResponse) _then) = __$ElasticAnalyticsCountsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ElasticAnalyticsCountResult> results
});




}
/// @nodoc
class __$ElasticAnalyticsCountsResponseCopyWithImpl<$Res>
    implements _$ElasticAnalyticsCountsResponseCopyWith<$Res> {
  __$ElasticAnalyticsCountsResponseCopyWithImpl(this._self, this._then);

  final _ElasticAnalyticsCountsResponse _self;
  final $Res Function(_ElasticAnalyticsCountsResponse) _then;

/// Create a copy of ElasticAnalyticsCountsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_ElasticAnalyticsCountsResponse(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticAnalyticsCountResult>,
  ));
}


}

_ElasticBoost _$ElasticBoostFromJson(
  Map<String, dynamic> json
) {
    return _ElasticBoostImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticBoost {

/// Type of boost
 BoostType get type;/// The value to exact match on. Use an array to match on multiple values.
 Object? get value;/// Function used to calculate the boost value for functional/proximity boosts.
 BoostFunction? get function;/// Center value used for proximity/recency boosts.
 Object? get center;/// The arithmetic operation used to combine the original document score with your boost value.
/// Can be add or multiply. Defaults to add.
 BoostOperation? get operation;/// Factor to alter the impact of a boost on the score of a document.
/// Must be between 0 and 10. Defaults to 1.0.
/// A negative factor or fractional factor will not deboost a result.
 double? get factor;
/// Create a copy of _ElasticBoost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticBoostCopyWith<_ElasticBoost> get copyWith => __$ElasticBoostCopyWithImpl<_ElasticBoost>(this as _ElasticBoost, _$identity);

  /// Serializes this _ElasticBoost to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticBoost&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.function, function) || other.function == function)&&const DeepCollectionEquality().equals(other.center, center)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.factor, factor) || other.factor == factor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(value),function,const DeepCollectionEquality().hash(center),operation,factor);

@override
String toString() {
  return '_ElasticBoost(type: $type, value: $value, function: $function, center: $center, operation: $operation, factor: $factor)';
}


}

/// @nodoc
abstract mixin class _$ElasticBoostCopyWith<$Res>  {
  factory _$ElasticBoostCopyWith(_ElasticBoost value, $Res Function(_ElasticBoost) _then) = __$ElasticBoostCopyWithImpl;
@useResult
$Res call({
 BoostType type, Object? value, BoostFunction? function, Object? center, BoostOperation? operation, double? factor
});




}
/// @nodoc
class __$ElasticBoostCopyWithImpl<$Res>
    implements _$ElasticBoostCopyWith<$Res> {
  __$ElasticBoostCopyWithImpl(this._self, this._then);

  final _ElasticBoost _self;
  final $Res Function(_ElasticBoost) _then;

/// Create a copy of _ElasticBoost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = freezed,Object? function = freezed,Object? center = freezed,Object? operation = freezed,Object? factor = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BoostType,value: freezed == value ? _self.value : value ,function: freezed == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as BoostFunction?,center: freezed == center ? _self.center : center ,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as BoostOperation?,factor: freezed == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticBoost].
extension _ElasticBoostPatterns on _ElasticBoost {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticBoostImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticBoostImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticBoostImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticBoostImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticBoostImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticBoostImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BoostType type,  Object? value,  BoostFunction? function,  Object? center,  BoostOperation? operation,  double? factor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticBoostImpl() when $default != null:
return $default(_that.type,_that.value,_that.function,_that.center,_that.operation,_that.factor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BoostType type,  Object? value,  BoostFunction? function,  Object? center,  BoostOperation? operation,  double? factor)  $default,) {final _that = this;
switch (_that) {
case _ElasticBoostImpl():
return $default(_that.type,_that.value,_that.function,_that.center,_that.operation,_that.factor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BoostType type,  Object? value,  BoostFunction? function,  Object? center,  BoostOperation? operation,  double? factor)?  $default,) {final _that = this;
switch (_that) {
case _ElasticBoostImpl() when $default != null:
return $default(_that.type,_that.value,_that.function,_that.center,_that.operation,_that.factor);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticBoostImpl implements _ElasticBoost {
  const _ElasticBoostImpl({required this.type, this.value, this.function, this.center, this.operation, this.factor});
  factory _ElasticBoostImpl.fromJson(Map<String, dynamic> json) => _$ElasticBoostImplFromJson(json);

/// Type of boost
@override final  BoostType type;
/// The value to exact match on. Use an array to match on multiple values.
@override final  Object? value;
/// Function used to calculate the boost value for functional/proximity boosts.
@override final  BoostFunction? function;
/// Center value used for proximity/recency boosts.
@override final  Object? center;
/// The arithmetic operation used to combine the original document score with your boost value.
/// Can be add or multiply. Defaults to add.
@override final  BoostOperation? operation;
/// Factor to alter the impact of a boost on the score of a document.
/// Must be between 0 and 10. Defaults to 1.0.
/// A negative factor or fractional factor will not deboost a result.
@override final  double? factor;

/// Create a copy of _ElasticBoost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticBoostImplCopyWith<_ElasticBoostImpl> get copyWith => __$ElasticBoostImplCopyWithImpl<_ElasticBoostImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticBoostImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticBoostImpl&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.function, function) || other.function == function)&&const DeepCollectionEquality().equals(other.center, center)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.factor, factor) || other.factor == factor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(value),function,const DeepCollectionEquality().hash(center),operation,factor);

@override
String toString() {
  return '_ElasticBoost(type: $type, value: $value, function: $function, center: $center, operation: $operation, factor: $factor)';
}


}

/// @nodoc
abstract mixin class _$ElasticBoostImplCopyWith<$Res> implements _$ElasticBoostCopyWith<$Res> {
  factory _$ElasticBoostImplCopyWith(_ElasticBoostImpl value, $Res Function(_ElasticBoostImpl) _then) = __$ElasticBoostImplCopyWithImpl;
@override @useResult
$Res call({
 BoostType type, Object? value, BoostFunction? function, Object? center, BoostOperation? operation, double? factor
});




}
/// @nodoc
class __$ElasticBoostImplCopyWithImpl<$Res>
    implements _$ElasticBoostImplCopyWith<$Res> {
  __$ElasticBoostImplCopyWithImpl(this._self, this._then);

  final _ElasticBoostImpl _self;
  final $Res Function(_ElasticBoostImpl) _then;

/// Create a copy of _ElasticBoost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = freezed,Object? function = freezed,Object? center = freezed,Object? operation = freezed,Object? factor = freezed,}) {
  return _then(_ElasticBoostImpl(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BoostType,value: freezed == value ? _self.value : value ,function: freezed == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as BoostFunction?,center: freezed == center ? _self.center : center ,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as BoostOperation?,factor: freezed == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

_ElasticQueryFacet _$ElasticQueryFacetFromJson(
  Map<String, dynamic> json
) {
    return _ElasticQueryFacetImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticQueryFacet {

 String get type; String? get name; List<_ElasticRangeFacet>? get ranges; int? get size;@_LatLongConverter() LatLong? get center; GeoUnit? get unit;
/// Create a copy of _ElasticQueryFacet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticQueryFacetCopyWith<_ElasticQueryFacet> get copyWith => __$ElasticQueryFacetCopyWithImpl<_ElasticQueryFacet>(this as _ElasticQueryFacet, _$identity);

  /// Serializes this _ElasticQueryFacet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticQueryFacet&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.ranges, ranges)&&(identical(other.size, size) || other.size == size)&&(identical(other.center, center) || other.center == center)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(ranges),size,center,unit);

@override
String toString() {
  return '_ElasticQueryFacet(type: $type, name: $name, ranges: $ranges, size: $size, center: $center, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$ElasticQueryFacetCopyWith<$Res>  {
  factory _$ElasticQueryFacetCopyWith(_ElasticQueryFacet value, $Res Function(_ElasticQueryFacet) _then) = __$ElasticQueryFacetCopyWithImpl;
@useResult
$Res call({
 String type, String? name, List<_ElasticRangeFacet>? ranges, int? size,@_LatLongConverter() LatLong? center, GeoUnit? unit
});


$LatLongCopyWith<$Res>? get center;

}
/// @nodoc
class __$ElasticQueryFacetCopyWithImpl<$Res>
    implements _$ElasticQueryFacetCopyWith<$Res> {
  __$ElasticQueryFacetCopyWithImpl(this._self, this._then);

  final _ElasticQueryFacet _self;
  final $Res Function(_ElasticQueryFacet) _then;

/// Create a copy of _ElasticQueryFacet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = freezed,Object? ranges = freezed,Object? size = freezed,Object? center = freezed,Object? unit = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ranges: freezed == ranges ? _self.ranges : ranges // ignore: cast_nullable_to_non_nullable
as List<_ElasticRangeFacet>?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLong?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as GeoUnit?,
  ));
}
/// Create a copy of _ElasticQueryFacet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLongCopyWith<$Res>? get center {
    if (_self.center == null) {
    return null;
  }

  return $LatLongCopyWith<$Res>(_self.center!, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}


/// Adds pattern-matching-related methods to [_ElasticQueryFacet].
extension _ElasticQueryFacetPatterns on _ElasticQueryFacet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticQueryFacetImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticQueryFacetImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticQueryFacetImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticQueryFacetImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticQueryFacetImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticQueryFacetImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String? name,  List<_ElasticRangeFacet>? ranges,  int? size, @_LatLongConverter()  LatLong? center,  GeoUnit? unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticQueryFacetImpl() when $default != null:
return $default(_that.type,_that.name,_that.ranges,_that.size,_that.center,_that.unit);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String? name,  List<_ElasticRangeFacet>? ranges,  int? size, @_LatLongConverter()  LatLong? center,  GeoUnit? unit)  $default,) {final _that = this;
switch (_that) {
case _ElasticQueryFacetImpl():
return $default(_that.type,_that.name,_that.ranges,_that.size,_that.center,_that.unit);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String? name,  List<_ElasticRangeFacet>? ranges,  int? size, @_LatLongConverter()  LatLong? center,  GeoUnit? unit)?  $default,) {final _that = this;
switch (_that) {
case _ElasticQueryFacetImpl() when $default != null:
return $default(_that.type,_that.name,_that.ranges,_that.size,_that.center,_that.unit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticQueryFacetImpl implements _ElasticQueryFacet {
  const _ElasticQueryFacetImpl({required this.type, this.name, final  List<_ElasticRangeFacet>? ranges, this.size, @_LatLongConverter() this.center, this.unit}): _ranges = ranges;
  factory _ElasticQueryFacetImpl.fromJson(Map<String, dynamic> json) => _$ElasticQueryFacetImplFromJson(json);

@override final  String type;
@override final  String? name;
 final  List<_ElasticRangeFacet>? _ranges;
@override List<_ElasticRangeFacet>? get ranges {
  final value = _ranges;
  if (value == null) return null;
  if (_ranges is EqualUnmodifiableListView) return _ranges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? size;
@override@_LatLongConverter() final  LatLong? center;
@override final  GeoUnit? unit;

/// Create a copy of _ElasticQueryFacet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticQueryFacetImplCopyWith<_ElasticQueryFacetImpl> get copyWith => __$ElasticQueryFacetImplCopyWithImpl<_ElasticQueryFacetImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticQueryFacetImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticQueryFacetImpl&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._ranges, _ranges)&&(identical(other.size, size) || other.size == size)&&(identical(other.center, center) || other.center == center)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(_ranges),size,center,unit);

@override
String toString() {
  return '_ElasticQueryFacet(type: $type, name: $name, ranges: $ranges, size: $size, center: $center, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$ElasticQueryFacetImplCopyWith<$Res> implements _$ElasticQueryFacetCopyWith<$Res> {
  factory _$ElasticQueryFacetImplCopyWith(_ElasticQueryFacetImpl value, $Res Function(_ElasticQueryFacetImpl) _then) = __$ElasticQueryFacetImplCopyWithImpl;
@override @useResult
$Res call({
 String type, String? name, List<_ElasticRangeFacet>? ranges, int? size,@_LatLongConverter() LatLong? center, GeoUnit? unit
});


@override $LatLongCopyWith<$Res>? get center;

}
/// @nodoc
class __$ElasticQueryFacetImplCopyWithImpl<$Res>
    implements _$ElasticQueryFacetImplCopyWith<$Res> {
  __$ElasticQueryFacetImplCopyWithImpl(this._self, this._then);

  final _ElasticQueryFacetImpl _self;
  final $Res Function(_ElasticQueryFacetImpl) _then;

/// Create a copy of _ElasticQueryFacet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = freezed,Object? ranges = freezed,Object? size = freezed,Object? center = freezed,Object? unit = freezed,}) {
  return _then(_ElasticQueryFacetImpl(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ranges: freezed == ranges ? _self._ranges : ranges // ignore: cast_nullable_to_non_nullable
as List<_ElasticRangeFacet>?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLong?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as GeoUnit?,
  ));
}

/// Create a copy of _ElasticQueryFacet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLongCopyWith<$Res>? get center {
    if (_self.center == null) {
    return null;
  }

  return $LatLongCopyWith<$Res>(_self.center!, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}

_ElasticRangeFacet _$ElasticRangeFacetFromJson(
  Map<String, dynamic> json
) {
    return _ElasticRangeFacetImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticRangeFacet {

 String? get name; Object? get from; Object? get to; int? get count;
/// Create a copy of _ElasticRangeFacet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticRangeFacetCopyWith<_ElasticRangeFacet> get copyWith => __$ElasticRangeFacetCopyWithImpl<_ElasticRangeFacet>(this as _ElasticRangeFacet, _$identity);

  /// Serializes this _ElasticRangeFacet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticRangeFacet&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.from, from)&&const DeepCollectionEquality().equals(other.to, to)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(from),const DeepCollectionEquality().hash(to),count);

@override
String toString() {
  return '_ElasticRangeFacet(name: $name, from: $from, to: $to, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ElasticRangeFacetCopyWith<$Res>  {
  factory _$ElasticRangeFacetCopyWith(_ElasticRangeFacet value, $Res Function(_ElasticRangeFacet) _then) = __$ElasticRangeFacetCopyWithImpl;
@useResult
$Res call({
 String? name, Object? from, Object? to, int? count
});




}
/// @nodoc
class __$ElasticRangeFacetCopyWithImpl<$Res>
    implements _$ElasticRangeFacetCopyWith<$Res> {
  __$ElasticRangeFacetCopyWithImpl(this._self, this._then);

  final _ElasticRangeFacet _self;
  final $Res Function(_ElasticRangeFacet) _then;

/// Create a copy of _ElasticRangeFacet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? from = freezed,Object? to = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from ,to: freezed == to ? _self.to : to ,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticRangeFacet].
extension _ElasticRangeFacetPatterns on _ElasticRangeFacet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticRangeFacetImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticRangeFacetImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticRangeFacetImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticRangeFacetImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticRangeFacetImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticRangeFacetImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  Object? from,  Object? to,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticRangeFacetImpl() when $default != null:
return $default(_that.name,_that.from,_that.to,_that.count);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  Object? from,  Object? to,  int? count)  $default,) {final _that = this;
switch (_that) {
case _ElasticRangeFacetImpl():
return $default(_that.name,_that.from,_that.to,_that.count);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  Object? from,  Object? to,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _ElasticRangeFacetImpl() when $default != null:
return $default(_that.name,_that.from,_that.to,_that.count);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticRangeFacetImpl implements _ElasticRangeFacet {
  const _ElasticRangeFacetImpl({this.name, this.from, this.to, this.count});
  factory _ElasticRangeFacetImpl.fromJson(Map<String, dynamic> json) => _$ElasticRangeFacetImplFromJson(json);

@override final  String? name;
@override final  Object? from;
@override final  Object? to;
@override final  int? count;

/// Create a copy of _ElasticRangeFacet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticRangeFacetImplCopyWith<_ElasticRangeFacetImpl> get copyWith => __$ElasticRangeFacetImplCopyWithImpl<_ElasticRangeFacetImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticRangeFacetImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticRangeFacetImpl&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.from, from)&&const DeepCollectionEquality().equals(other.to, to)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(from),const DeepCollectionEquality().hash(to),count);

@override
String toString() {
  return '_ElasticRangeFacet(name: $name, from: $from, to: $to, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ElasticRangeFacetImplCopyWith<$Res> implements _$ElasticRangeFacetCopyWith<$Res> {
  factory _$ElasticRangeFacetImplCopyWith(_ElasticRangeFacetImpl value, $Res Function(_ElasticRangeFacetImpl) _then) = __$ElasticRangeFacetImplCopyWithImpl;
@override @useResult
$Res call({
 String? name, Object? from, Object? to, int? count
});




}
/// @nodoc
class __$ElasticRangeFacetImplCopyWithImpl<$Res>
    implements _$ElasticRangeFacetImplCopyWith<$Res> {
  __$ElasticRangeFacetImplCopyWithImpl(this._self, this._then);

  final _ElasticRangeFacetImpl _self;
  final $Res Function(_ElasticRangeFacetImpl) _then;

/// Create a copy of _ElasticRangeFacet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? from = freezed,Object? to = freezed,Object? count = freezed,}) {
  return _then(_ElasticRangeFacetImpl(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from ,to: freezed == to ? _self.to : to ,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ElasticFacet {

 ElasticFacetType get type; String? get name; List<ElasticFacetData>? get data;
/// Create a copy of ElasticFacet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticFacetCopyWith<ElasticFacet> get copyWith => _$ElasticFacetCopyWithImpl<ElasticFacet>(this as ElasticFacet, _$identity);

  /// Serializes this ElasticFacet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticFacet&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ElasticFacet(type: $type, name: $name, data: $data)';
}


}

/// @nodoc
abstract mixin class $ElasticFacetCopyWith<$Res>  {
  factory $ElasticFacetCopyWith(ElasticFacet value, $Res Function(ElasticFacet) _then) = _$ElasticFacetCopyWithImpl;
@useResult
$Res call({
 ElasticFacetType type, String? name, List<ElasticFacetData>? data
});




}
/// @nodoc
class _$ElasticFacetCopyWithImpl<$Res>
    implements $ElasticFacetCopyWith<$Res> {
  _$ElasticFacetCopyWithImpl(this._self, this._then);

  final ElasticFacet _self;
  final $Res Function(ElasticFacet) _then;

/// Create a copy of ElasticFacet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ElasticFacetType,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ElasticFacetData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticFacet].
extension ElasticFacetPatterns on ElasticFacet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticFacet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticFacet() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticFacet value)  $default,){
final _that = this;
switch (_that) {
case _ElasticFacet():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticFacet value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticFacet() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticFacetType type,  String? name,  List<ElasticFacetData>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticFacet() when $default != null:
return $default(_that.type,_that.name,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticFacetType type,  String? name,  List<ElasticFacetData>? data)  $default,) {final _that = this;
switch (_that) {
case _ElasticFacet():
return $default(_that.type,_that.name,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticFacetType type,  String? name,  List<ElasticFacetData>? data)?  $default,) {final _that = this;
switch (_that) {
case _ElasticFacet() when $default != null:
return $default(_that.type,_that.name,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticFacet extends ElasticFacet {
  const _ElasticFacet({required this.type, this.name, final  List<ElasticFacetData>? data}): _data = data,super._();
  factory _ElasticFacet.fromJson(Map<String, dynamic> json) => _$ElasticFacetFromJson(json);

@override final  ElasticFacetType type;
@override final  String? name;
 final  List<ElasticFacetData>? _data;
@override List<ElasticFacetData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ElasticFacet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticFacetCopyWith<_ElasticFacet> get copyWith => __$ElasticFacetCopyWithImpl<_ElasticFacet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticFacetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticFacet&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ElasticFacet(type: $type, name: $name, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ElasticFacetCopyWith<$Res> implements $ElasticFacetCopyWith<$Res> {
  factory _$ElasticFacetCopyWith(_ElasticFacet value, $Res Function(_ElasticFacet) _then) = __$ElasticFacetCopyWithImpl;
@override @useResult
$Res call({
 ElasticFacetType type, String? name, List<ElasticFacetData>? data
});




}
/// @nodoc
class __$ElasticFacetCopyWithImpl<$Res>
    implements _$ElasticFacetCopyWith<$Res> {
  __$ElasticFacetCopyWithImpl(this._self, this._then);

  final _ElasticFacet _self;
  final $Res Function(_ElasticFacet) _then;

/// Create a copy of ElasticFacet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = freezed,Object? data = freezed,}) {
  return _then(_ElasticFacet(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ElasticFacetType,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ElasticFacetData>?,
  ));
}


}


/// @nodoc
mixin _$ElasticFacetData {

 String? get name; Object? get value; Object? get from; Object? get to; int get count;
/// Create a copy of ElasticFacetData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticFacetDataCopyWith<ElasticFacetData> get copyWith => _$ElasticFacetDataCopyWithImpl<ElasticFacetData>(this as ElasticFacetData, _$identity);

  /// Serializes this ElasticFacetData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticFacetData&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.value, value)&&const DeepCollectionEquality().equals(other.from, from)&&const DeepCollectionEquality().equals(other.to, to)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(value),const DeepCollectionEquality().hash(from),const DeepCollectionEquality().hash(to),count);

@override
String toString() {
  return 'ElasticFacetData(name: $name, value: $value, from: $from, to: $to, count: $count)';
}


}

/// @nodoc
abstract mixin class $ElasticFacetDataCopyWith<$Res>  {
  factory $ElasticFacetDataCopyWith(ElasticFacetData value, $Res Function(ElasticFacetData) _then) = _$ElasticFacetDataCopyWithImpl;
@useResult
$Res call({
 String? name, Object? value, Object? from, Object? to, int count
});




}
/// @nodoc
class _$ElasticFacetDataCopyWithImpl<$Res>
    implements $ElasticFacetDataCopyWith<$Res> {
  _$ElasticFacetDataCopyWithImpl(this._self, this._then);

  final ElasticFacetData _self;
  final $Res Function(ElasticFacetData) _then;

/// Create a copy of ElasticFacetData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? value = freezed,Object? from = freezed,Object? to = freezed,Object? count = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value ,from: freezed == from ? _self.from : from ,to: freezed == to ? _self.to : to ,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticFacetData].
extension ElasticFacetDataPatterns on ElasticFacetData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticFacetData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticFacetData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticFacetData value)  $default,){
final _that = this;
switch (_that) {
case _ElasticFacetData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticFacetData value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticFacetData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  Object? value,  Object? from,  Object? to,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticFacetData() when $default != null:
return $default(_that.name,_that.value,_that.from,_that.to,_that.count);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  Object? value,  Object? from,  Object? to,  int count)  $default,) {final _that = this;
switch (_that) {
case _ElasticFacetData():
return $default(_that.name,_that.value,_that.from,_that.to,_that.count);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  Object? value,  Object? from,  Object? to,  int count)?  $default,) {final _that = this;
switch (_that) {
case _ElasticFacetData() when $default != null:
return $default(_that.name,_that.value,_that.from,_that.to,_that.count);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticFacetData implements ElasticFacetData {
  const _ElasticFacetData({this.name, this.value, this.from, this.to, required this.count});
  factory _ElasticFacetData.fromJson(Map<String, dynamic> json) => _$ElasticFacetDataFromJson(json);

@override final  String? name;
@override final  Object? value;
@override final  Object? from;
@override final  Object? to;
@override final  int count;

/// Create a copy of ElasticFacetData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticFacetDataCopyWith<_ElasticFacetData> get copyWith => __$ElasticFacetDataCopyWithImpl<_ElasticFacetData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticFacetDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticFacetData&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.value, value)&&const DeepCollectionEquality().equals(other.from, from)&&const DeepCollectionEquality().equals(other.to, to)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(value),const DeepCollectionEquality().hash(from),const DeepCollectionEquality().hash(to),count);

@override
String toString() {
  return 'ElasticFacetData(name: $name, value: $value, from: $from, to: $to, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ElasticFacetDataCopyWith<$Res> implements $ElasticFacetDataCopyWith<$Res> {
  factory _$ElasticFacetDataCopyWith(_ElasticFacetData value, $Res Function(_ElasticFacetData) _then) = __$ElasticFacetDataCopyWithImpl;
@override @useResult
$Res call({
 String? name, Object? value, Object? from, Object? to, int count
});




}
/// @nodoc
class __$ElasticFacetDataCopyWithImpl<$Res>
    implements _$ElasticFacetDataCopyWith<$Res> {
  __$ElasticFacetDataCopyWithImpl(this._self, this._then);

  final _ElasticFacetData _self;
  final $Res Function(_ElasticFacetData) _then;

/// Create a copy of ElasticFacetData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? value = freezed,Object? from = freezed,Object? to = freezed,Object? count = null,}) {
  return _then(_ElasticFacetData(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value ,from: freezed == from ? _self.from : from ,to: freezed == to ? _self.to : to ,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ElasticRange {

 String? get name; Object? get from; Object? get to;
/// Create a copy of ElasticRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticRangeCopyWith<ElasticRange> get copyWith => _$ElasticRangeCopyWithImpl<ElasticRange>(this as ElasticRange, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticRange&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.from, from)&&const DeepCollectionEquality().equals(other.to, to));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(from),const DeepCollectionEquality().hash(to));

@override
String toString() {
  return 'ElasticRange(name: $name, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $ElasticRangeCopyWith<$Res>  {
  factory $ElasticRangeCopyWith(ElasticRange value, $Res Function(ElasticRange) _then) = _$ElasticRangeCopyWithImpl;
@useResult
$Res call({
 String? name, Object? from, Object? to
});




}
/// @nodoc
class _$ElasticRangeCopyWithImpl<$Res>
    implements $ElasticRangeCopyWith<$Res> {
  _$ElasticRangeCopyWithImpl(this._self, this._then);

  final ElasticRange _self;
  final $Res Function(ElasticRange) _then;

/// Create a copy of ElasticRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from ,to: freezed == to ? _self.to : to ,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticRange].
extension ElasticRangePatterns on ElasticRange {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticRange() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticRange value)  $default,){
final _that = this;
switch (_that) {
case _ElasticRange():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticRange value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticRange() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  Object? from,  Object? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticRange() when $default != null:
return $default(_that.name,_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  Object? from,  Object? to)  $default,) {final _that = this;
switch (_that) {
case _ElasticRange():
return $default(_that.name,_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  Object? from,  Object? to)?  $default,) {final _that = this;
switch (_that) {
case _ElasticRange() when $default != null:
return $default(_that.name,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc


class _ElasticRange implements ElasticRange {
  const _ElasticRange({this.name, this.from, this.to});
  

@override final  String? name;
@override final  Object? from;
@override final  Object? to;

/// Create a copy of ElasticRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticRangeCopyWith<_ElasticRange> get copyWith => __$ElasticRangeCopyWithImpl<_ElasticRange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticRange&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.from, from)&&const DeepCollectionEquality().equals(other.to, to));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(from),const DeepCollectionEquality().hash(to));

@override
String toString() {
  return 'ElasticRange(name: $name, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticRangeCopyWith<$Res> implements $ElasticRangeCopyWith<$Res> {
  factory _$ElasticRangeCopyWith(_ElasticRange value, $Res Function(_ElasticRange) _then) = __$ElasticRangeCopyWithImpl;
@override @useResult
$Res call({
 String? name, Object? from, Object? to
});




}
/// @nodoc
class __$ElasticRangeCopyWithImpl<$Res>
    implements _$ElasticRangeCopyWith<$Res> {
  __$ElasticRangeCopyWithImpl(this._self, this._then);

  final _ElasticRange _self;
  final $Res Function(_ElasticRange) _then;

/// Create a copy of ElasticRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_ElasticRange(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from ,to: freezed == to ? _self.to : to ,
  ));
}


}

/// @nodoc
mixin _$LatLong {

 double get latitude; double get longitude;
/// Create a copy of LatLong
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatLongCopyWith<LatLong> get copyWith => _$LatLongCopyWithImpl<LatLong>(this as LatLong, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatLong&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'LatLong(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $LatLongCopyWith<$Res>  {
  factory $LatLongCopyWith(LatLong value, $Res Function(LatLong) _then) = _$LatLongCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class _$LatLongCopyWithImpl<$Res>
    implements $LatLongCopyWith<$Res> {
  _$LatLongCopyWithImpl(this._self, this._then);

  final LatLong _self;
  final $Res Function(LatLong) _then;

/// Create a copy of LatLong
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LatLong].
extension LatLongPatterns on LatLong {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatLong value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatLong() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatLong value)  $default,){
final _that = this;
switch (_that) {
case _LatLong():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatLong value)?  $default,){
final _that = this;
switch (_that) {
case _LatLong() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatLong() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _LatLong():
return $default(_that.latitude,_that.longitude);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _LatLong() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _LatLong implements LatLong {
  const _LatLong(this.latitude, this.longitude);
  

@override final  double latitude;
@override final  double longitude;

/// Create a copy of LatLong
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatLongCopyWith<_LatLong> get copyWith => __$LatLongCopyWithImpl<_LatLong>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatLong&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'LatLong(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$LatLongCopyWith<$Res> implements $LatLongCopyWith<$Res> {
  factory _$LatLongCopyWith(_LatLong value, $Res Function(_LatLong) _then) = __$LatLongCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class __$LatLongCopyWithImpl<$Res>
    implements _$LatLongCopyWith<$Res> {
  __$LatLongCopyWithImpl(this._self, this._then);

  final _LatLong _self;
  final $Res Function(_LatLong) _then;

/// Create a copy of LatLong
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_LatLong(
null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ElasticPageRequest {

 int get current; int get size;
/// Create a copy of ElasticPageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticPageRequestCopyWith<ElasticPageRequest> get copyWith => _$ElasticPageRequestCopyWithImpl<ElasticPageRequest>(this as ElasticPageRequest, _$identity);

  /// Serializes this ElasticPageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticPageRequest&&(identical(other.current, current) || other.current == current)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,size);

@override
String toString() {
  return 'ElasticPageRequest(current: $current, size: $size)';
}


}

/// @nodoc
abstract mixin class $ElasticPageRequestCopyWith<$Res>  {
  factory $ElasticPageRequestCopyWith(ElasticPageRequest value, $Res Function(ElasticPageRequest) _then) = _$ElasticPageRequestCopyWithImpl;
@useResult
$Res call({
 int current, int size
});




}
/// @nodoc
class _$ElasticPageRequestCopyWithImpl<$Res>
    implements $ElasticPageRequestCopyWith<$Res> {
  _$ElasticPageRequestCopyWithImpl(this._self, this._then);

  final ElasticPageRequest _self;
  final $Res Function(ElasticPageRequest) _then;

/// Create a copy of ElasticPageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? size = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticPageRequest].
extension ElasticPageRequestPatterns on ElasticPageRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticPageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticPageRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticPageRequest value)  $default,){
final _that = this;
switch (_that) {
case _ElasticPageRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticPageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticPageRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int current,  int size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticPageRequest() when $default != null:
return $default(_that.current,_that.size);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int current,  int size)  $default,) {final _that = this;
switch (_that) {
case _ElasticPageRequest():
return $default(_that.current,_that.size);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int current,  int size)?  $default,) {final _that = this;
switch (_that) {
case _ElasticPageRequest() when $default != null:
return $default(_that.current,_that.size);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticPageRequest extends ElasticPageRequest {
  const _ElasticPageRequest({this.current = 1, this.size = 10}): super._();
  factory _ElasticPageRequest.fromJson(Map<String, dynamic> json) => _$ElasticPageRequestFromJson(json);

@override@JsonKey() final  int current;
@override@JsonKey() final  int size;

/// Create a copy of ElasticPageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticPageRequestCopyWith<_ElasticPageRequest> get copyWith => __$ElasticPageRequestCopyWithImpl<_ElasticPageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticPageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticPageRequest&&(identical(other.current, current) || other.current == current)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,size);

@override
String toString() {
  return 'ElasticPageRequest(current: $current, size: $size)';
}


}

/// @nodoc
abstract mixin class _$ElasticPageRequestCopyWith<$Res> implements $ElasticPageRequestCopyWith<$Res> {
  factory _$ElasticPageRequestCopyWith(_ElasticPageRequest value, $Res Function(_ElasticPageRequest) _then) = __$ElasticPageRequestCopyWithImpl;
@override @useResult
$Res call({
 int current, int size
});




}
/// @nodoc
class __$ElasticPageRequestCopyWithImpl<$Res>
    implements _$ElasticPageRequestCopyWith<$Res> {
  __$ElasticPageRequestCopyWithImpl(this._self, this._then);

  final _ElasticPageRequest _self;
  final $Res Function(_ElasticPageRequest) _then;

/// Create a copy of ElasticPageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? size = null,}) {
  return _then(_ElasticPageRequest(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ElasticQuery {

/// An object representing an Elastic engine
@JsonKey(includeToJson: false, includeFromJson: false) ElasticEngine? get engine;/// String or number to match.
 String get query;/// Use the precision parameter of the search API to tune precision
/// and recall for a query. Learn more in Precision tuning (beta).
/// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
///
/// The value of the precision parameter must be an integer between 1 and 11, inclusive.
/// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
/// Lower values favor recall, while higher values favor precision.
@protected@JsonKey(name: "precision") int? get precisionTuning;/// Object to delimit the pagination parameters.
@JsonKey(name: "page") _ElasticSearchPage? get searchPage;/// Object to filter documents that contain a specific field value.
/// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
@_ElasticSearchFiltersConverter() List<_ElasticSearchFilter>? get filters;/// Object which restricts a query to search only specific fields.
@_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields") List<_ElasticSearchField>? get searchFields;/// Object used to boost documents according to specific field values.
@_ElasticBoostsConverter()@JsonKey(name: "boosts") Map<String, List<_ElasticBoost>>? get boosts;/// Object to define the fields which appear in search results and how their values are rendered.
@_ElasticResultFieldsConverter()@JsonKey(name: "result_fields") List<_ElasticResultField>? get resultFields;/// Facets are objects which provide the counts of each value or range of values for a field.
/// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
@protected Map<String, _ElasticQueryFacet>? get facets;/// Disjunctive facets are useful when you have many filters in your form, and especially
/// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
/// it will return all the available facets as if that filter was not applied.
/// This is not a native part of Elastic App Search, this is a workaround. In fact, multiple queries are
/// passed to Elastic and the package concatenates all responses in one response.
@JsonKey(includeToJson: false) List<String>? get disjunctiveFacets;/// Tags can be used to enrich each query with unique information.
/// See [https://www.elastic.co/guide/en/app-search/current/tags.html]
 _ElasticAnalytics? get analytics;/// If true, generates an analytics query event for the search request.
/// Defaults to true on the App Search API side.
@JsonKey(name: "record_analytics") bool? get recordAnalytics;/// Grouped results based on shared fields
@protected@JsonKey(name: "group") _ElasticGroup? get groupBy;/// Object to sort your results in an order other than document score.
@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? get sortBy;
/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticQueryCopyWith<ElasticQuery> get copyWith => _$ElasticQueryCopyWithImpl<ElasticQuery>(this as ElasticQuery, _$identity);

  /// Serializes this ElasticQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticQuery&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.query, query) || other.query == query)&&(identical(other.precisionTuning, precisionTuning) || other.precisionTuning == precisionTuning)&&(identical(other.searchPage, searchPage) || other.searchPage == searchPage)&&const DeepCollectionEquality().equals(other.filters, filters)&&const DeepCollectionEquality().equals(other.searchFields, searchFields)&&const DeepCollectionEquality().equals(other.boosts, boosts)&&const DeepCollectionEquality().equals(other.resultFields, resultFields)&&const DeepCollectionEquality().equals(other.facets, facets)&&const DeepCollectionEquality().equals(other.disjunctiveFacets, disjunctiveFacets)&&(identical(other.analytics, analytics) || other.analytics == analytics)&&(identical(other.recordAnalytics, recordAnalytics) || other.recordAnalytics == recordAnalytics)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy)&&const DeepCollectionEquality().equals(other.sortBy, sortBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,engine,query,precisionTuning,searchPage,const DeepCollectionEquality().hash(filters),const DeepCollectionEquality().hash(searchFields),const DeepCollectionEquality().hash(boosts),const DeepCollectionEquality().hash(resultFields),const DeepCollectionEquality().hash(facets),const DeepCollectionEquality().hash(disjunctiveFacets),analytics,recordAnalytics,groupBy,const DeepCollectionEquality().hash(sortBy));

@override
String toString() {
  return 'ElasticQuery(engine: $engine, query: $query, precisionTuning: $precisionTuning, searchPage: $searchPage, filters: $filters, searchFields: $searchFields, boosts: $boosts, resultFields: $resultFields, facets: $facets, disjunctiveFacets: $disjunctiveFacets, analytics: $analytics, recordAnalytics: $recordAnalytics, groupBy: $groupBy, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class $ElasticQueryCopyWith<$Res>  {
  factory $ElasticQueryCopyWith(ElasticQuery value, $Res Function(ElasticQuery) _then) = _$ElasticQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) ElasticEngine? engine, String query,@protected@JsonKey(name: "precision") int? precisionTuning,@JsonKey(name: "page") _ElasticSearchPage? searchPage,@_ElasticSearchFiltersConverter() List<_ElasticSearchFilter>? filters,@_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields") List<_ElasticSearchField>? searchFields,@_ElasticBoostsConverter()@JsonKey(name: "boosts") Map<String, List<_ElasticBoost>>? boosts,@_ElasticResultFieldsConverter()@JsonKey(name: "result_fields") List<_ElasticResultField>? resultFields,@protected Map<String, _ElasticQueryFacet>? facets,@JsonKey(includeToJson: false) List<String>? disjunctiveFacets, _ElasticAnalytics? analytics,@JsonKey(name: "record_analytics") bool? recordAnalytics,@protected@JsonKey(name: "group") _ElasticGroup? groupBy,@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? sortBy
});


_$ElasticSearchPageCopyWith<$Res>? get searchPage;_$ElasticAnalyticsCopyWith<$Res>? get analytics;_$ElasticGroupCopyWith<$Res>? get groupBy;

}
/// @nodoc
class _$ElasticQueryCopyWithImpl<$Res>
    implements $ElasticQueryCopyWith<$Res> {
  _$ElasticQueryCopyWithImpl(this._self, this._then);

  final ElasticQuery _self;
  final $Res Function(ElasticQuery) _then;

/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? engine = freezed,Object? query = null,Object? precisionTuning = freezed,Object? searchPage = freezed,Object? filters = freezed,Object? searchFields = freezed,Object? boosts = freezed,Object? resultFields = freezed,Object? facets = freezed,Object? disjunctiveFacets = freezed,Object? analytics = freezed,Object? recordAnalytics = freezed,Object? groupBy = freezed,Object? sortBy = freezed,}) {
  return _then(_self.copyWith(
engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as ElasticEngine?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,precisionTuning: freezed == precisionTuning ? _self.precisionTuning : precisionTuning // ignore: cast_nullable_to_non_nullable
as int?,searchPage: freezed == searchPage ? _self.searchPage : searchPage // ignore: cast_nullable_to_non_nullable
as _ElasticSearchPage?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as List<_ElasticSearchFilter>?,searchFields: freezed == searchFields ? _self.searchFields : searchFields // ignore: cast_nullable_to_non_nullable
as List<_ElasticSearchField>?,boosts: freezed == boosts ? _self.boosts : boosts // ignore: cast_nullable_to_non_nullable
as Map<String, List<_ElasticBoost>>?,resultFields: freezed == resultFields ? _self.resultFields : resultFields // ignore: cast_nullable_to_non_nullable
as List<_ElasticResultField>?,facets: freezed == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as Map<String, _ElasticQueryFacet>?,disjunctiveFacets: freezed == disjunctiveFacets ? _self.disjunctiveFacets : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
as List<String>?,analytics: freezed == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as _ElasticAnalytics?,recordAnalytics: freezed == recordAnalytics ? _self.recordAnalytics : recordAnalytics // ignore: cast_nullable_to_non_nullable
as bool?,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as _ElasticGroup?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as List<_ElasticSort>?,
  ));
}
/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
_$ElasticSearchPageCopyWith<$Res>? get searchPage {
    if (_self.searchPage == null) {
    return null;
  }

  return _$ElasticSearchPageCopyWith<$Res>(_self.searchPage!, (value) {
    return _then(_self.copyWith(searchPage: value));
  });
}/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
_$ElasticAnalyticsCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
    return null;
  }

  return _$ElasticAnalyticsCopyWith<$Res>(_self.analytics!, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
_$ElasticGroupCopyWith<$Res>? get groupBy {
    if (_self.groupBy == null) {
    return null;
  }

  return _$ElasticGroupCopyWith<$Res>(_self.groupBy!, (value) {
    return _then(_self.copyWith(groupBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticQuery].
extension ElasticQueryPatterns on ElasticQuery {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticQuery() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticQuery value)  $default,){
final _that = this;
switch (_that) {
case _ElasticQuery():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticQuery() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  ElasticEngine? engine,  String query, @protected@JsonKey(name: "precision")  int? precisionTuning, @JsonKey(name: "page")  _ElasticSearchPage? searchPage, @_ElasticSearchFiltersConverter()  List<_ElasticSearchFilter>? filters, @_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields")  List<_ElasticSearchField>? searchFields, @_ElasticBoostsConverter()@JsonKey(name: "boosts")  Map<String, List<_ElasticBoost>>? boosts, @_ElasticResultFieldsConverter()@JsonKey(name: "result_fields")  List<_ElasticResultField>? resultFields, @protected  Map<String, _ElasticQueryFacet>? facets, @JsonKey(includeToJson: false)  List<String>? disjunctiveFacets,  _ElasticAnalytics? analytics, @JsonKey(name: "record_analytics")  bool? recordAnalytics, @protected@JsonKey(name: "group")  _ElasticGroup? groupBy, @_ElasticSortConverter()@JsonKey(name: "sort")  List<_ElasticSort>? sortBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticQuery() when $default != null:
return $default(_that.engine,_that.query,_that.precisionTuning,_that.searchPage,_that.filters,_that.searchFields,_that.boosts,_that.resultFields,_that.facets,_that.disjunctiveFacets,_that.analytics,_that.recordAnalytics,_that.groupBy,_that.sortBy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  ElasticEngine? engine,  String query, @protected@JsonKey(name: "precision")  int? precisionTuning, @JsonKey(name: "page")  _ElasticSearchPage? searchPage, @_ElasticSearchFiltersConverter()  List<_ElasticSearchFilter>? filters, @_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields")  List<_ElasticSearchField>? searchFields, @_ElasticBoostsConverter()@JsonKey(name: "boosts")  Map<String, List<_ElasticBoost>>? boosts, @_ElasticResultFieldsConverter()@JsonKey(name: "result_fields")  List<_ElasticResultField>? resultFields, @protected  Map<String, _ElasticQueryFacet>? facets, @JsonKey(includeToJson: false)  List<String>? disjunctiveFacets,  _ElasticAnalytics? analytics, @JsonKey(name: "record_analytics")  bool? recordAnalytics, @protected@JsonKey(name: "group")  _ElasticGroup? groupBy, @_ElasticSortConverter()@JsonKey(name: "sort")  List<_ElasticSort>? sortBy)  $default,) {final _that = this;
switch (_that) {
case _ElasticQuery():
return $default(_that.engine,_that.query,_that.precisionTuning,_that.searchPage,_that.filters,_that.searchFields,_that.boosts,_that.resultFields,_that.facets,_that.disjunctiveFacets,_that.analytics,_that.recordAnalytics,_that.groupBy,_that.sortBy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false, includeFromJson: false)  ElasticEngine? engine,  String query, @protected@JsonKey(name: "precision")  int? precisionTuning, @JsonKey(name: "page")  _ElasticSearchPage? searchPage, @_ElasticSearchFiltersConverter()  List<_ElasticSearchFilter>? filters, @_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields")  List<_ElasticSearchField>? searchFields, @_ElasticBoostsConverter()@JsonKey(name: "boosts")  Map<String, List<_ElasticBoost>>? boosts, @_ElasticResultFieldsConverter()@JsonKey(name: "result_fields")  List<_ElasticResultField>? resultFields, @protected  Map<String, _ElasticQueryFacet>? facets, @JsonKey(includeToJson: false)  List<String>? disjunctiveFacets,  _ElasticAnalytics? analytics, @JsonKey(name: "record_analytics")  bool? recordAnalytics, @protected@JsonKey(name: "group")  _ElasticGroup? groupBy, @_ElasticSortConverter()@JsonKey(name: "sort")  List<_ElasticSort>? sortBy)?  $default,) {final _that = this;
switch (_that) {
case _ElasticQuery() when $default != null:
return $default(_that.engine,_that.query,_that.precisionTuning,_that.searchPage,_that.filters,_that.searchFields,_that.boosts,_that.resultFields,_that.facets,_that.disjunctiveFacets,_that.analytics,_that.recordAnalytics,_that.groupBy,_that.sortBy);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticQuery extends ElasticQuery {
  const _ElasticQuery({@JsonKey(includeToJson: false, includeFromJson: false) this.engine, required this.query, @protected@JsonKey(name: "precision") this.precisionTuning, @JsonKey(name: "page") this.searchPage, @_ElasticSearchFiltersConverter() final  List<_ElasticSearchFilter>? filters, @_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields") final  List<_ElasticSearchField>? searchFields, @_ElasticBoostsConverter()@JsonKey(name: "boosts") final  Map<String, List<_ElasticBoost>>? boosts, @_ElasticResultFieldsConverter()@JsonKey(name: "result_fields") final  List<_ElasticResultField>? resultFields, @protected final  Map<String, _ElasticQueryFacet>? facets, @JsonKey(includeToJson: false) final  List<String>? disjunctiveFacets, this.analytics, @JsonKey(name: "record_analytics") this.recordAnalytics, @protected@JsonKey(name: "group") this.groupBy, @_ElasticSortConverter()@JsonKey(name: "sort") final  List<_ElasticSort>? sortBy}): _filters = filters,_searchFields = searchFields,_boosts = boosts,_resultFields = resultFields,_facets = facets,_disjunctiveFacets = disjunctiveFacets,_sortBy = sortBy,super._();
  factory _ElasticQuery.fromJson(Map<String, dynamic> json) => _$ElasticQueryFromJson(json);

/// An object representing an Elastic engine
@override@JsonKey(includeToJson: false, includeFromJson: false) final  ElasticEngine? engine;
/// String or number to match.
@override final  String query;
/// Use the precision parameter of the search API to tune precision
/// and recall for a query. Learn more in Precision tuning (beta).
/// See [https://www.elastic.co/guide/en/app-search/current/search-api-precision.html]
///
/// The value of the precision parameter must be an integer between 1 and 11, inclusive.
/// The range of values represents a sliding scale that manages the inherent tradeoff between precision and recall.
/// Lower values favor recall, while higher values favor precision.
@override@protected@JsonKey(name: "precision") final  int? precisionTuning;
/// Object to delimit the pagination parameters.
@override@JsonKey(name: "page") final  _ElasticSearchPage? searchPage;
/// Object to filter documents that contain a specific field value.
/// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
 final  List<_ElasticSearchFilter>? _filters;
/// Object to filter documents that contain a specific field value.
/// See [https://www.elastic.co/guide/en/app-search/current/filters.html]
@override@_ElasticSearchFiltersConverter() List<_ElasticSearchFilter>? get filters {
  final value = _filters;
  if (value == null) return null;
  if (_filters is EqualUnmodifiableListView) return _filters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Object which restricts a query to search only specific fields.
 final  List<_ElasticSearchField>? _searchFields;
/// Object which restricts a query to search only specific fields.
@override@_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields") List<_ElasticSearchField>? get searchFields {
  final value = _searchFields;
  if (value == null) return null;
  if (_searchFields is EqualUnmodifiableListView) return _searchFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Object used to boost documents according to specific field values.
 final  Map<String, List<_ElasticBoost>>? _boosts;
/// Object used to boost documents according to specific field values.
@override@_ElasticBoostsConverter()@JsonKey(name: "boosts") Map<String, List<_ElasticBoost>>? get boosts {
  final value = _boosts;
  if (value == null) return null;
  if (_boosts is EqualUnmodifiableMapView) return _boosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Object to define the fields which appear in search results and how their values are rendered.
 final  List<_ElasticResultField>? _resultFields;
/// Object to define the fields which appear in search results and how their values are rendered.
@override@_ElasticResultFieldsConverter()@JsonKey(name: "result_fields") List<_ElasticResultField>? get resultFields {
  final value = _resultFields;
  if (value == null) return null;
  if (_resultFields is EqualUnmodifiableListView) return _resultFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Facets are objects which provide the counts of each value or range of values for a field.
/// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
 final  Map<String, _ElasticQueryFacet>? _facets;
/// Facets are objects which provide the counts of each value or range of values for a field.
/// See [https://www.elastic.co/guide/en/app-search/current/facets.html]
@override@protected Map<String, _ElasticQueryFacet>? get facets {
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
 final  List<String>? _disjunctiveFacets;
/// Disjunctive facets are useful when you have many filters in your form, and especially
/// when you filter your query with a value that corresponds to a facet: if a disjunctive facet is set,
/// it will return all the available facets as if that filter was not applied.
/// This is not a native part of Elastic App Search, this is a workaround. In fact, multiple queries are
/// passed to Elastic and the package concatenates all responses in one response.
@override@JsonKey(includeToJson: false) List<String>? get disjunctiveFacets {
  final value = _disjunctiveFacets;
  if (value == null) return null;
  if (_disjunctiveFacets is EqualUnmodifiableListView) return _disjunctiveFacets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Tags can be used to enrich each query with unique information.
/// See [https://www.elastic.co/guide/en/app-search/current/tags.html]
@override final  _ElasticAnalytics? analytics;
/// If true, generates an analytics query event for the search request.
/// Defaults to true on the App Search API side.
@override@JsonKey(name: "record_analytics") final  bool? recordAnalytics;
/// Grouped results based on shared fields
@override@protected@JsonKey(name: "group") final  _ElasticGroup? groupBy;
/// Object to sort your results in an order other than document score.
 final  List<_ElasticSort>? _sortBy;
/// Object to sort your results in an order other than document score.
@override@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? get sortBy {
  final value = _sortBy;
  if (value == null) return null;
  if (_sortBy is EqualUnmodifiableListView) return _sortBy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticQueryCopyWith<_ElasticQuery> get copyWith => __$ElasticQueryCopyWithImpl<_ElasticQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticQuery&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.query, query) || other.query == query)&&(identical(other.precisionTuning, precisionTuning) || other.precisionTuning == precisionTuning)&&(identical(other.searchPage, searchPage) || other.searchPage == searchPage)&&const DeepCollectionEquality().equals(other._filters, _filters)&&const DeepCollectionEquality().equals(other._searchFields, _searchFields)&&const DeepCollectionEquality().equals(other._boosts, _boosts)&&const DeepCollectionEquality().equals(other._resultFields, _resultFields)&&const DeepCollectionEquality().equals(other._facets, _facets)&&const DeepCollectionEquality().equals(other._disjunctiveFacets, _disjunctiveFacets)&&(identical(other.analytics, analytics) || other.analytics == analytics)&&(identical(other.recordAnalytics, recordAnalytics) || other.recordAnalytics == recordAnalytics)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy)&&const DeepCollectionEquality().equals(other._sortBy, _sortBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,engine,query,precisionTuning,searchPage,const DeepCollectionEquality().hash(_filters),const DeepCollectionEquality().hash(_searchFields),const DeepCollectionEquality().hash(_boosts),const DeepCollectionEquality().hash(_resultFields),const DeepCollectionEquality().hash(_facets),const DeepCollectionEquality().hash(_disjunctiveFacets),analytics,recordAnalytics,groupBy,const DeepCollectionEquality().hash(_sortBy));

@override
String toString() {
  return 'ElasticQuery(engine: $engine, query: $query, precisionTuning: $precisionTuning, searchPage: $searchPage, filters: $filters, searchFields: $searchFields, boosts: $boosts, resultFields: $resultFields, facets: $facets, disjunctiveFacets: $disjunctiveFacets, analytics: $analytics, recordAnalytics: $recordAnalytics, groupBy: $groupBy, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class _$ElasticQueryCopyWith<$Res> implements $ElasticQueryCopyWith<$Res> {
  factory _$ElasticQueryCopyWith(_ElasticQuery value, $Res Function(_ElasticQuery) _then) = __$ElasticQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) ElasticEngine? engine, String query,@protected@JsonKey(name: "precision") int? precisionTuning,@JsonKey(name: "page") _ElasticSearchPage? searchPage,@_ElasticSearchFiltersConverter() List<_ElasticSearchFilter>? filters,@_ElasticSearchFieldsConverter()@JsonKey(name: "search_fields") List<_ElasticSearchField>? searchFields,@_ElasticBoostsConverter()@JsonKey(name: "boosts") Map<String, List<_ElasticBoost>>? boosts,@_ElasticResultFieldsConverter()@JsonKey(name: "result_fields") List<_ElasticResultField>? resultFields,@protected Map<String, _ElasticQueryFacet>? facets,@JsonKey(includeToJson: false) List<String>? disjunctiveFacets, _ElasticAnalytics? analytics,@JsonKey(name: "record_analytics") bool? recordAnalytics,@protected@JsonKey(name: "group") _ElasticGroup? groupBy,@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? sortBy
});


@override _$ElasticSearchPageCopyWith<$Res>? get searchPage;@override _$ElasticAnalyticsCopyWith<$Res>? get analytics;@override _$ElasticGroupCopyWith<$Res>? get groupBy;

}
/// @nodoc
class __$ElasticQueryCopyWithImpl<$Res>
    implements _$ElasticQueryCopyWith<$Res> {
  __$ElasticQueryCopyWithImpl(this._self, this._then);

  final _ElasticQuery _self;
  final $Res Function(_ElasticQuery) _then;

/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? engine = freezed,Object? query = null,Object? precisionTuning = freezed,Object? searchPage = freezed,Object? filters = freezed,Object? searchFields = freezed,Object? boosts = freezed,Object? resultFields = freezed,Object? facets = freezed,Object? disjunctiveFacets = freezed,Object? analytics = freezed,Object? recordAnalytics = freezed,Object? groupBy = freezed,Object? sortBy = freezed,}) {
  return _then(_ElasticQuery(
engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as ElasticEngine?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,precisionTuning: freezed == precisionTuning ? _self.precisionTuning : precisionTuning // ignore: cast_nullable_to_non_nullable
as int?,searchPage: freezed == searchPage ? _self.searchPage : searchPage // ignore: cast_nullable_to_non_nullable
as _ElasticSearchPage?,filters: freezed == filters ? _self._filters : filters // ignore: cast_nullable_to_non_nullable
as List<_ElasticSearchFilter>?,searchFields: freezed == searchFields ? _self._searchFields : searchFields // ignore: cast_nullable_to_non_nullable
as List<_ElasticSearchField>?,boosts: freezed == boosts ? _self._boosts : boosts // ignore: cast_nullable_to_non_nullable
as Map<String, List<_ElasticBoost>>?,resultFields: freezed == resultFields ? _self._resultFields : resultFields // ignore: cast_nullable_to_non_nullable
as List<_ElasticResultField>?,facets: freezed == facets ? _self._facets : facets // ignore: cast_nullable_to_non_nullable
as Map<String, _ElasticQueryFacet>?,disjunctiveFacets: freezed == disjunctiveFacets ? _self._disjunctiveFacets : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
as List<String>?,analytics: freezed == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as _ElasticAnalytics?,recordAnalytics: freezed == recordAnalytics ? _self.recordAnalytics : recordAnalytics // ignore: cast_nullable_to_non_nullable
as bool?,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as _ElasticGroup?,sortBy: freezed == sortBy ? _self._sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as List<_ElasticSort>?,
  ));
}

/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
_$ElasticSearchPageCopyWith<$Res>? get searchPage {
    if (_self.searchPage == null) {
    return null;
  }

  return _$ElasticSearchPageCopyWith<$Res>(_self.searchPage!, (value) {
    return _then(_self.copyWith(searchPage: value));
  });
}/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
_$ElasticAnalyticsCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
    return null;
  }

  return _$ElasticAnalyticsCopyWith<$Res>(_self.analytics!, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}/// Create a copy of ElasticQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
_$ElasticGroupCopyWith<$Res>? get groupBy {
    if (_self.groupBy == null) {
    return null;
  }

  return _$ElasticGroupCopyWith<$Res>(_self.groupBy!, (value) {
    return _then(_self.copyWith(groupBy: value));
  });
}
}

_ElasticSearchPage _$ElasticSearchPageFromJson(
  Map<String, dynamic> json
) {
    return _ElasticSearchPageImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticSearchPage {

/// Number of results per page.
/// Must be greater than or equal to 1 and less than or equal to 1000.
/// Defaults to 10.
 int? get size;/// Page number of results to return.
/// Must be greater than or equal to 1 and less than or equal to 100.
/// Defaults to 1.
 int? get current;
/// Create a copy of _ElasticSearchPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchPageCopyWith<_ElasticSearchPage> get copyWith => __$ElasticSearchPageCopyWithImpl<_ElasticSearchPage>(this as _ElasticSearchPage, _$identity);

  /// Serializes this _ElasticSearchPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchPage&&(identical(other.size, size) || other.size == size)&&(identical(other.current, current) || other.current == current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,size,current);

@override
String toString() {
  return '_ElasticSearchPage(size: $size, current: $current)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchPageCopyWith<$Res>  {
  factory _$ElasticSearchPageCopyWith(_ElasticSearchPage value, $Res Function(_ElasticSearchPage) _then) = __$ElasticSearchPageCopyWithImpl;
@useResult
$Res call({
 int? size, int? current
});




}
/// @nodoc
class __$ElasticSearchPageCopyWithImpl<$Res>
    implements _$ElasticSearchPageCopyWith<$Res> {
  __$ElasticSearchPageCopyWithImpl(this._self, this._then);

  final _ElasticSearchPage _self;
  final $Res Function(_ElasticSearchPage) _then;

/// Create a copy of _ElasticSearchPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? size = freezed,Object? current = freezed,}) {
  return _then(_self.copyWith(
size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticSearchPage].
extension _ElasticSearchPagePatterns on _ElasticSearchPage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSearchPageImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSearchPageImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSearchPageImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchPageImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSearchPageImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchPageImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? size,  int? current)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSearchPageImpl() when $default != null:
return $default(_that.size,_that.current);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? size,  int? current)  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchPageImpl():
return $default(_that.size,_that.current);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? size,  int? current)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchPageImpl() when $default != null:
return $default(_that.size,_that.current);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSearchPageImpl implements _ElasticSearchPage {
  const _ElasticSearchPageImpl({this.size = 10, this.current = 1});
  factory _ElasticSearchPageImpl.fromJson(Map<String, dynamic> json) => _$ElasticSearchPageImplFromJson(json);

/// Number of results per page.
/// Must be greater than or equal to 1 and less than or equal to 1000.
/// Defaults to 10.
@override@JsonKey() final  int? size;
/// Page number of results to return.
/// Must be greater than or equal to 1 and less than or equal to 100.
/// Defaults to 1.
@override@JsonKey() final  int? current;

/// Create a copy of _ElasticSearchPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchPageImplCopyWith<_ElasticSearchPageImpl> get copyWith => __$ElasticSearchPageImplCopyWithImpl<_ElasticSearchPageImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSearchPageImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchPageImpl&&(identical(other.size, size) || other.size == size)&&(identical(other.current, current) || other.current == current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,size,current);

@override
String toString() {
  return '_ElasticSearchPage(size: $size, current: $current)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchPageImplCopyWith<$Res> implements _$ElasticSearchPageCopyWith<$Res> {
  factory _$ElasticSearchPageImplCopyWith(_ElasticSearchPageImpl value, $Res Function(_ElasticSearchPageImpl) _then) = __$ElasticSearchPageImplCopyWithImpl;
@override @useResult
$Res call({
 int? size, int? current
});




}
/// @nodoc
class __$ElasticSearchPageImplCopyWithImpl<$Res>
    implements _$ElasticSearchPageImplCopyWith<$Res> {
  __$ElasticSearchPageImplCopyWithImpl(this._self, this._then);

  final _ElasticSearchPageImpl _self;
  final $Res Function(_ElasticSearchPageImpl) _then;

/// Create a copy of _ElasticSearchPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? size = freezed,Object? current = freezed,}) {
  return _then(_ElasticSearchPageImpl(
size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

_ElasticSearchFilter _$ElasticSearchFilterFromJson(
  Map<String, dynamic> json
) {
    return _ElasticSearchFilterImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticSearchFilter {

/// The type of the filter, which will determine if it's an 'OR', 'AND' or 'NOT' condition.
 _ElasticFilterType get type;/// The field from your schema upon which to apply your filter.
 String get name;/// The value upon which to filter. The value must be an exact match,
/// and can be a String, a boolean, a number, or an array of these types.
 dynamic get value;
/// Create a copy of _ElasticSearchFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchFilterCopyWith<_ElasticSearchFilter> get copyWith => __$ElasticSearchFilterCopyWithImpl<_ElasticSearchFilter>(this as _ElasticSearchFilter, _$identity);

  /// Serializes this _ElasticSearchFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchFilter&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return '_ElasticSearchFilter(type: $type, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchFilterCopyWith<$Res>  {
  factory _$ElasticSearchFilterCopyWith(_ElasticSearchFilter value, $Res Function(_ElasticSearchFilter) _then) = __$ElasticSearchFilterCopyWithImpl;
@useResult
$Res call({
 _ElasticFilterType type, String name, dynamic value
});




}
/// @nodoc
class __$ElasticSearchFilterCopyWithImpl<$Res>
    implements _$ElasticSearchFilterCopyWith<$Res> {
  __$ElasticSearchFilterCopyWithImpl(this._self, this._then);

  final _ElasticSearchFilter _self;
  final $Res Function(_ElasticSearchFilter) _then;

/// Create a copy of _ElasticSearchFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as _ElasticFilterType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticSearchFilter].
extension _ElasticSearchFilterPatterns on _ElasticSearchFilter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSearchFilterImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSearchFilterImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSearchFilterImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchFilterImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSearchFilterImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchFilterImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( _ElasticFilterType type,  String name,  dynamic value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSearchFilterImpl() when $default != null:
return $default(_that.type,_that.name,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( _ElasticFilterType type,  String name,  dynamic value)  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchFilterImpl():
return $default(_that.type,_that.name,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( _ElasticFilterType type,  String name,  dynamic value)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchFilterImpl() when $default != null:
return $default(_that.type,_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSearchFilterImpl implements _ElasticSearchFilter {
  const _ElasticSearchFilterImpl({this.type = _ElasticFilterType.all, required this.name, required this.value});
  factory _ElasticSearchFilterImpl.fromJson(Map<String, dynamic> json) => _$ElasticSearchFilterImplFromJson(json);

/// The type of the filter, which will determine if it's an 'OR', 'AND' or 'NOT' condition.
@override@JsonKey() final  _ElasticFilterType type;
/// The field from your schema upon which to apply your filter.
@override final  String name;
/// The value upon which to filter. The value must be an exact match,
/// and can be a String, a boolean, a number, or an array of these types.
@override final  dynamic value;

/// Create a copy of _ElasticSearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchFilterImplCopyWith<_ElasticSearchFilterImpl> get copyWith => __$ElasticSearchFilterImplCopyWithImpl<_ElasticSearchFilterImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSearchFilterImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchFilterImpl&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return '_ElasticSearchFilter(type: $type, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchFilterImplCopyWith<$Res> implements _$ElasticSearchFilterCopyWith<$Res> {
  factory _$ElasticSearchFilterImplCopyWith(_ElasticSearchFilterImpl value, $Res Function(_ElasticSearchFilterImpl) _then) = __$ElasticSearchFilterImplCopyWithImpl;
@override @useResult
$Res call({
 _ElasticFilterType type, String name, dynamic value
});




}
/// @nodoc
class __$ElasticSearchFilterImplCopyWithImpl<$Res>
    implements _$ElasticSearchFilterImplCopyWith<$Res> {
  __$ElasticSearchFilterImplCopyWithImpl(this._self, this._then);

  final _ElasticSearchFilterImpl _self;
  final $Res Function(_ElasticSearchFilterImpl) _then;

/// Create a copy of _ElasticSearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? value = freezed,}) {
  return _then(_ElasticSearchFilterImpl(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as _ElasticFilterType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

_ElasticDateRangeFilter _$ElasticDateRangeFilterFromJson(
  Map<String, dynamic> json
) {
    return _ElasticDateRangeFilterImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticDateRangeFilter {

 String? get from; String? get to;
/// Create a copy of _ElasticDateRangeFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticDateRangeFilterCopyWith<_ElasticDateRangeFilter> get copyWith => __$ElasticDateRangeFilterCopyWithImpl<_ElasticDateRangeFilter>(this as _ElasticDateRangeFilter, _$identity);

  /// Serializes this _ElasticDateRangeFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticDateRangeFilter&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return '_ElasticDateRangeFilter(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticDateRangeFilterCopyWith<$Res>  {
  factory _$ElasticDateRangeFilterCopyWith(_ElasticDateRangeFilter value, $Res Function(_ElasticDateRangeFilter) _then) = __$ElasticDateRangeFilterCopyWithImpl;
@useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class __$ElasticDateRangeFilterCopyWithImpl<$Res>
    implements _$ElasticDateRangeFilterCopyWith<$Res> {
  __$ElasticDateRangeFilterCopyWithImpl(this._self, this._then);

  final _ElasticDateRangeFilter _self;
  final $Res Function(_ElasticDateRangeFilter) _then;

/// Create a copy of _ElasticDateRangeFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticDateRangeFilter].
extension _ElasticDateRangeFilterPatterns on _ElasticDateRangeFilter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticDateRangeFilterImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticDateRangeFilterImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticDateRangeFilterImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticDateRangeFilterImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticDateRangeFilterImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticDateRangeFilterImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? from,  String? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticDateRangeFilterImpl() when $default != null:
return $default(_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? from,  String? to)  $default,) {final _that = this;
switch (_that) {
case _ElasticDateRangeFilterImpl():
return $default(_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? from,  String? to)?  $default,) {final _that = this;
switch (_that) {
case _ElasticDateRangeFilterImpl() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticDateRangeFilterImpl implements _ElasticDateRangeFilter {
  const _ElasticDateRangeFilterImpl({this.from, this.to});
  factory _ElasticDateRangeFilterImpl.fromJson(Map<String, dynamic> json) => _$ElasticDateRangeFilterImplFromJson(json);

@override final  String? from;
@override final  String? to;

/// Create a copy of _ElasticDateRangeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticDateRangeFilterImplCopyWith<_ElasticDateRangeFilterImpl> get copyWith => __$ElasticDateRangeFilterImplCopyWithImpl<_ElasticDateRangeFilterImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticDateRangeFilterImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticDateRangeFilterImpl&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return '_ElasticDateRangeFilter(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticDateRangeFilterImplCopyWith<$Res> implements _$ElasticDateRangeFilterCopyWith<$Res> {
  factory _$ElasticDateRangeFilterImplCopyWith(_ElasticDateRangeFilterImpl value, $Res Function(_ElasticDateRangeFilterImpl) _then) = __$ElasticDateRangeFilterImplCopyWithImpl;
@override @useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class __$ElasticDateRangeFilterImplCopyWithImpl<$Res>
    implements _$ElasticDateRangeFilterImplCopyWith<$Res> {
  __$ElasticDateRangeFilterImplCopyWithImpl(this._self, this._then);

  final _ElasticDateRangeFilterImpl _self;
  final $Res Function(_ElasticDateRangeFilterImpl) _then;

/// Create a copy of _ElasticDateRangeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_ElasticDateRangeFilterImpl(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

_ElasticNumberRangeFilter _$ElasticNumberRangeFilterFromJson(
  Map<String, dynamic> json
) {
    return _ElasticNumberRangeFilterImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticNumberRangeFilter {

 double? get from; double? get to;
/// Create a copy of _ElasticNumberRangeFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticNumberRangeFilterCopyWith<_ElasticNumberRangeFilter> get copyWith => __$ElasticNumberRangeFilterCopyWithImpl<_ElasticNumberRangeFilter>(this as _ElasticNumberRangeFilter, _$identity);

  /// Serializes this _ElasticNumberRangeFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticNumberRangeFilter&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return '_ElasticNumberRangeFilter(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticNumberRangeFilterCopyWith<$Res>  {
  factory _$ElasticNumberRangeFilterCopyWith(_ElasticNumberRangeFilter value, $Res Function(_ElasticNumberRangeFilter) _then) = __$ElasticNumberRangeFilterCopyWithImpl;
@useResult
$Res call({
 double? from, double? to
});




}
/// @nodoc
class __$ElasticNumberRangeFilterCopyWithImpl<$Res>
    implements _$ElasticNumberRangeFilterCopyWith<$Res> {
  __$ElasticNumberRangeFilterCopyWithImpl(this._self, this._then);

  final _ElasticNumberRangeFilter _self;
  final $Res Function(_ElasticNumberRangeFilter) _then;

/// Create a copy of _ElasticNumberRangeFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as double?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticNumberRangeFilter].
extension _ElasticNumberRangeFilterPatterns on _ElasticNumberRangeFilter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticNumberRangeFilterImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticNumberRangeFilterImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticNumberRangeFilterImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticNumberRangeFilterImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticNumberRangeFilterImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticNumberRangeFilterImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? from,  double? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticNumberRangeFilterImpl() when $default != null:
return $default(_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? from,  double? to)  $default,) {final _that = this;
switch (_that) {
case _ElasticNumberRangeFilterImpl():
return $default(_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? from,  double? to)?  $default,) {final _that = this;
switch (_that) {
case _ElasticNumberRangeFilterImpl() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticNumberRangeFilterImpl implements _ElasticNumberRangeFilter {
  const _ElasticNumberRangeFilterImpl({this.from, this.to});
  factory _ElasticNumberRangeFilterImpl.fromJson(Map<String, dynamic> json) => _$ElasticNumberRangeFilterImplFromJson(json);

@override final  double? from;
@override final  double? to;

/// Create a copy of _ElasticNumberRangeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticNumberRangeFilterImplCopyWith<_ElasticNumberRangeFilterImpl> get copyWith => __$ElasticNumberRangeFilterImplCopyWithImpl<_ElasticNumberRangeFilterImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticNumberRangeFilterImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticNumberRangeFilterImpl&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return '_ElasticNumberRangeFilter(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticNumberRangeFilterImplCopyWith<$Res> implements _$ElasticNumberRangeFilterCopyWith<$Res> {
  factory _$ElasticNumberRangeFilterImplCopyWith(_ElasticNumberRangeFilterImpl value, $Res Function(_ElasticNumberRangeFilterImpl) _then) = __$ElasticNumberRangeFilterImplCopyWithImpl;
@override @useResult
$Res call({
 double? from, double? to
});




}
/// @nodoc
class __$ElasticNumberRangeFilterImplCopyWithImpl<$Res>
    implements _$ElasticNumberRangeFilterImplCopyWith<$Res> {
  __$ElasticNumberRangeFilterImplCopyWithImpl(this._self, this._then);

  final _ElasticNumberRangeFilterImpl _self;
  final $Res Function(_ElasticNumberRangeFilterImpl) _then;

/// Create a copy of _ElasticNumberRangeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_ElasticNumberRangeFilterImpl(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as double?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

_ElasticGeoFilter _$ElasticGeoFilterFromJson(
  Map<String, dynamic> json
) {
    return _ElasticGeoFilterImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticGeoFilter {

@_LatLongConverter() LatLong? get center; double? get distance; GeoUnit get unit; double? get from; double? get to;
/// Create a copy of _ElasticGeoFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticGeoFilterCopyWith<_ElasticGeoFilter> get copyWith => __$ElasticGeoFilterCopyWithImpl<_ElasticGeoFilter>(this as _ElasticGeoFilter, _$identity);

  /// Serializes this _ElasticGeoFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticGeoFilter&&(identical(other.center, center) || other.center == center)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,center,distance,unit,from,to);

@override
String toString() {
  return '_ElasticGeoFilter(center: $center, distance: $distance, unit: $unit, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticGeoFilterCopyWith<$Res>  {
  factory _$ElasticGeoFilterCopyWith(_ElasticGeoFilter value, $Res Function(_ElasticGeoFilter) _then) = __$ElasticGeoFilterCopyWithImpl;
@useResult
$Res call({
@_LatLongConverter() LatLong? center, double? distance, GeoUnit unit, double? from, double? to
});


$LatLongCopyWith<$Res>? get center;

}
/// @nodoc
class __$ElasticGeoFilterCopyWithImpl<$Res>
    implements _$ElasticGeoFilterCopyWith<$Res> {
  __$ElasticGeoFilterCopyWithImpl(this._self, this._then);

  final _ElasticGeoFilter _self;
  final $Res Function(_ElasticGeoFilter) _then;

/// Create a copy of _ElasticGeoFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? center = freezed,Object? distance = freezed,Object? unit = null,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLong?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as GeoUnit,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as double?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of _ElasticGeoFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLongCopyWith<$Res>? get center {
    if (_self.center == null) {
    return null;
  }

  return $LatLongCopyWith<$Res>(_self.center!, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}


/// Adds pattern-matching-related methods to [_ElasticGeoFilter].
extension _ElasticGeoFilterPatterns on _ElasticGeoFilter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticGeoFilterImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticGeoFilterImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticGeoFilterImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticGeoFilterImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticGeoFilterImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticGeoFilterImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@_LatLongConverter()  LatLong? center,  double? distance,  GeoUnit unit,  double? from,  double? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticGeoFilterImpl() when $default != null:
return $default(_that.center,_that.distance,_that.unit,_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@_LatLongConverter()  LatLong? center,  double? distance,  GeoUnit unit,  double? from,  double? to)  $default,) {final _that = this;
switch (_that) {
case _ElasticGeoFilterImpl():
return $default(_that.center,_that.distance,_that.unit,_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@_LatLongConverter()  LatLong? center,  double? distance,  GeoUnit unit,  double? from,  double? to)?  $default,) {final _that = this;
switch (_that) {
case _ElasticGeoFilterImpl() when $default != null:
return $default(_that.center,_that.distance,_that.unit,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticGeoFilterImpl implements _ElasticGeoFilter {
  const _ElasticGeoFilterImpl({@_LatLongConverter() this.center, this.distance, required this.unit, this.from, this.to});
  factory _ElasticGeoFilterImpl.fromJson(Map<String, dynamic> json) => _$ElasticGeoFilterImplFromJson(json);

@override@_LatLongConverter() final  LatLong? center;
@override final  double? distance;
@override final  GeoUnit unit;
@override final  double? from;
@override final  double? to;

/// Create a copy of _ElasticGeoFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticGeoFilterImplCopyWith<_ElasticGeoFilterImpl> get copyWith => __$ElasticGeoFilterImplCopyWithImpl<_ElasticGeoFilterImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticGeoFilterImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticGeoFilterImpl&&(identical(other.center, center) || other.center == center)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,center,distance,unit,from,to);

@override
String toString() {
  return '_ElasticGeoFilter(center: $center, distance: $distance, unit: $unit, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ElasticGeoFilterImplCopyWith<$Res> implements _$ElasticGeoFilterCopyWith<$Res> {
  factory _$ElasticGeoFilterImplCopyWith(_ElasticGeoFilterImpl value, $Res Function(_ElasticGeoFilterImpl) _then) = __$ElasticGeoFilterImplCopyWithImpl;
@override @useResult
$Res call({
@_LatLongConverter() LatLong? center, double? distance, GeoUnit unit, double? from, double? to
});


@override $LatLongCopyWith<$Res>? get center;

}
/// @nodoc
class __$ElasticGeoFilterImplCopyWithImpl<$Res>
    implements _$ElasticGeoFilterImplCopyWith<$Res> {
  __$ElasticGeoFilterImplCopyWithImpl(this._self, this._then);

  final _ElasticGeoFilterImpl _self;
  final $Res Function(_ElasticGeoFilterImpl) _then;

/// Create a copy of _ElasticGeoFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? center = freezed,Object? distance = freezed,Object? unit = null,Object? from = freezed,Object? to = freezed,}) {
  return _then(_ElasticGeoFilterImpl(
center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLong?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as GeoUnit,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as double?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of _ElasticGeoFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLongCopyWith<$Res>? get center {
    if (_self.center == null) {
    return null;
  }

  return $LatLongCopyWith<$Res>(_self.center!, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}

_ElasticSearchField _$ElasticSearchFieldFromJson(
  Map<String, dynamic> json
) {
    return _ElasticSearchFieldImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticSearchField {

/// The name of the field. It must exist within your Engine schema and be of type text.
 String get name;/// Optionnal. Apply Weights to each search field.
/// Engine level Weight settings will be applied is none are provided.
 int? get weight;
/// Create a copy of _ElasticSearchField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchFieldCopyWith<_ElasticSearchField> get copyWith => __$ElasticSearchFieldCopyWithImpl<_ElasticSearchField>(this as _ElasticSearchField, _$identity);

  /// Serializes this _ElasticSearchField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchField&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,weight);

@override
String toString() {
  return '_ElasticSearchField(name: $name, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchFieldCopyWith<$Res>  {
  factory _$ElasticSearchFieldCopyWith(_ElasticSearchField value, $Res Function(_ElasticSearchField) _then) = __$ElasticSearchFieldCopyWithImpl;
@useResult
$Res call({
 String name, int? weight
});




}
/// @nodoc
class __$ElasticSearchFieldCopyWithImpl<$Res>
    implements _$ElasticSearchFieldCopyWith<$Res> {
  __$ElasticSearchFieldCopyWithImpl(this._self, this._then);

  final _ElasticSearchField _self;
  final $Res Function(_ElasticSearchField) _then;

/// Create a copy of _ElasticSearchField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? weight = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticSearchField].
extension _ElasticSearchFieldPatterns on _ElasticSearchField {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSearchFieldImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSearchFieldImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSearchFieldImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchFieldImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSearchFieldImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchFieldImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int? weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSearchFieldImpl() when $default != null:
return $default(_that.name,_that.weight);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int? weight)  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchFieldImpl():
return $default(_that.name,_that.weight);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int? weight)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchFieldImpl() when $default != null:
return $default(_that.name,_that.weight);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSearchFieldImpl implements _ElasticSearchField {
  const _ElasticSearchFieldImpl({required this.name, this.weight});
  factory _ElasticSearchFieldImpl.fromJson(Map<String, dynamic> json) => _$ElasticSearchFieldImplFromJson(json);

/// The name of the field. It must exist within your Engine schema and be of type text.
@override final  String name;
/// Optionnal. Apply Weights to each search field.
/// Engine level Weight settings will be applied is none are provided.
@override final  int? weight;

/// Create a copy of _ElasticSearchField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchFieldImplCopyWith<_ElasticSearchFieldImpl> get copyWith => __$ElasticSearchFieldImplCopyWithImpl<_ElasticSearchFieldImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSearchFieldImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchFieldImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,weight);

@override
String toString() {
  return '_ElasticSearchField(name: $name, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchFieldImplCopyWith<$Res> implements _$ElasticSearchFieldCopyWith<$Res> {
  factory _$ElasticSearchFieldImplCopyWith(_ElasticSearchFieldImpl value, $Res Function(_ElasticSearchFieldImpl) _then) = __$ElasticSearchFieldImplCopyWithImpl;
@override @useResult
$Res call({
 String name, int? weight
});




}
/// @nodoc
class __$ElasticSearchFieldImplCopyWithImpl<$Res>
    implements _$ElasticSearchFieldImplCopyWith<$Res> {
  __$ElasticSearchFieldImplCopyWithImpl(this._self, this._then);

  final _ElasticSearchFieldImpl _self;
  final $Res Function(_ElasticSearchFieldImpl) _then;

/// Create a copy of _ElasticSearchField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? weight = freezed,}) {
  return _then(_ElasticSearchFieldImpl(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

_ElasticResultField _$ElasticResultFieldFromJson(
  Map<String, dynamic> json
) {
    return _ElasticResultFieldImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticResultField {

/// The name of the field. It must exist within your Engine schema and be of type text.
 String get name;/// Length of the return value.
/// Must be at least 20; defaults to the entire text field.
/// If given for a different field type other than text, it will be silently ignored.
 int? get rawSize;/// Length of the snippet returned.
/// Must be at least 20; defaults to 100.
 int? get snippetSize;/// If true, return the raw text field if no snippet is found. If false, only use snippets.
 bool get fallback;
/// Create a copy of _ElasticResultField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResultFieldCopyWith<_ElasticResultField> get copyWith => __$ElasticResultFieldCopyWithImpl<_ElasticResultField>(this as _ElasticResultField, _$identity);

  /// Serializes this _ElasticResultField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResultField&&(identical(other.name, name) || other.name == name)&&(identical(other.rawSize, rawSize) || other.rawSize == rawSize)&&(identical(other.snippetSize, snippetSize) || other.snippetSize == snippetSize)&&(identical(other.fallback, fallback) || other.fallback == fallback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,rawSize,snippetSize,fallback);

@override
String toString() {
  return '_ElasticResultField(name: $name, rawSize: $rawSize, snippetSize: $snippetSize, fallback: $fallback)';
}


}

/// @nodoc
abstract mixin class _$ElasticResultFieldCopyWith<$Res>  {
  factory _$ElasticResultFieldCopyWith(_ElasticResultField value, $Res Function(_ElasticResultField) _then) = __$ElasticResultFieldCopyWithImpl;
@useResult
$Res call({
 String name, int? rawSize, int? snippetSize, bool fallback
});




}
/// @nodoc
class __$ElasticResultFieldCopyWithImpl<$Res>
    implements _$ElasticResultFieldCopyWith<$Res> {
  __$ElasticResultFieldCopyWithImpl(this._self, this._then);

  final _ElasticResultField _self;
  final $Res Function(_ElasticResultField) _then;

/// Create a copy of _ElasticResultField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? rawSize = freezed,Object? snippetSize = freezed,Object? fallback = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rawSize: freezed == rawSize ? _self.rawSize : rawSize // ignore: cast_nullable_to_non_nullable
as int?,snippetSize: freezed == snippetSize ? _self.snippetSize : snippetSize // ignore: cast_nullable_to_non_nullable
as int?,fallback: null == fallback ? _self.fallback : fallback // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticResultField].
extension _ElasticResultFieldPatterns on _ElasticResultField {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticResultFieldImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticResultFieldImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticResultFieldImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticResultFieldImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticResultFieldImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticResultFieldImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int? rawSize,  int? snippetSize,  bool fallback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticResultFieldImpl() when $default != null:
return $default(_that.name,_that.rawSize,_that.snippetSize,_that.fallback);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int? rawSize,  int? snippetSize,  bool fallback)  $default,) {final _that = this;
switch (_that) {
case _ElasticResultFieldImpl():
return $default(_that.name,_that.rawSize,_that.snippetSize,_that.fallback);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int? rawSize,  int? snippetSize,  bool fallback)?  $default,) {final _that = this;
switch (_that) {
case _ElasticResultFieldImpl() when $default != null:
return $default(_that.name,_that.rawSize,_that.snippetSize,_that.fallback);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticResultFieldImpl implements _ElasticResultField {
  const _ElasticResultFieldImpl({required this.name, this.rawSize, this.snippetSize, this.fallback = true});
  factory _ElasticResultFieldImpl.fromJson(Map<String, dynamic> json) => _$ElasticResultFieldImplFromJson(json);

/// The name of the field. It must exist within your Engine schema and be of type text.
@override final  String name;
/// Length of the return value.
/// Must be at least 20; defaults to the entire text field.
/// If given for a different field type other than text, it will be silently ignored.
@override final  int? rawSize;
/// Length of the snippet returned.
/// Must be at least 20; defaults to 100.
@override final  int? snippetSize;
/// If true, return the raw text field if no snippet is found. If false, only use snippets.
@override@JsonKey() final  bool fallback;

/// Create a copy of _ElasticResultField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResultFieldImplCopyWith<_ElasticResultFieldImpl> get copyWith => __$ElasticResultFieldImplCopyWithImpl<_ElasticResultFieldImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticResultFieldImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResultFieldImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.rawSize, rawSize) || other.rawSize == rawSize)&&(identical(other.snippetSize, snippetSize) || other.snippetSize == snippetSize)&&(identical(other.fallback, fallback) || other.fallback == fallback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,rawSize,snippetSize,fallback);

@override
String toString() {
  return '_ElasticResultField(name: $name, rawSize: $rawSize, snippetSize: $snippetSize, fallback: $fallback)';
}


}

/// @nodoc
abstract mixin class _$ElasticResultFieldImplCopyWith<$Res> implements _$ElasticResultFieldCopyWith<$Res> {
  factory _$ElasticResultFieldImplCopyWith(_ElasticResultFieldImpl value, $Res Function(_ElasticResultFieldImpl) _then) = __$ElasticResultFieldImplCopyWithImpl;
@override @useResult
$Res call({
 String name, int? rawSize, int? snippetSize, bool fallback
});




}
/// @nodoc
class __$ElasticResultFieldImplCopyWithImpl<$Res>
    implements _$ElasticResultFieldImplCopyWith<$Res> {
  __$ElasticResultFieldImplCopyWithImpl(this._self, this._then);

  final _ElasticResultFieldImpl _self;
  final $Res Function(_ElasticResultFieldImpl) _then;

/// Create a copy of _ElasticResultField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? rawSize = freezed,Object? snippetSize = freezed,Object? fallback = null,}) {
  return _then(_ElasticResultFieldImpl(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rawSize: freezed == rawSize ? _self.rawSize : rawSize // ignore: cast_nullable_to_non_nullable
as int?,snippetSize: freezed == snippetSize ? _self.snippetSize : snippetSize // ignore: cast_nullable_to_non_nullable
as int?,fallback: null == fallback ? _self.fallback : fallback // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

_ElasticGroup _$ElasticGroupFromJson(
  Map<String, dynamic> json
) {
    return _ElasticGroupImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticGroup {

/// Field name to group results on.
 String get field;/// Number of results to be included in the _group key of the returned document.
/// Can be between 1 and 10. Defaults to 10.
 int? get size;
/// Create a copy of _ElasticGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticGroupCopyWith<_ElasticGroup> get copyWith => __$ElasticGroupCopyWithImpl<_ElasticGroup>(this as _ElasticGroup, _$identity);

  /// Serializes this _ElasticGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticGroup&&(identical(other.field, field) || other.field == field)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,size);

@override
String toString() {
  return '_ElasticGroup(field: $field, size: $size)';
}


}

/// @nodoc
abstract mixin class _$ElasticGroupCopyWith<$Res>  {
  factory _$ElasticGroupCopyWith(_ElasticGroup value, $Res Function(_ElasticGroup) _then) = __$ElasticGroupCopyWithImpl;
@useResult
$Res call({
 String field, int? size
});




}
/// @nodoc
class __$ElasticGroupCopyWithImpl<$Res>
    implements _$ElasticGroupCopyWith<$Res> {
  __$ElasticGroupCopyWithImpl(this._self, this._then);

  final _ElasticGroup _self;
  final $Res Function(_ElasticGroup) _then;

/// Create a copy of _ElasticGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = null,Object? size = freezed,}) {
  return _then(_self.copyWith(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticGroup].
extension _ElasticGroupPatterns on _ElasticGroup {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticGroupImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticGroupImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticGroupImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticGroupImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticGroupImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticGroupImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String field,  int? size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticGroupImpl() when $default != null:
return $default(_that.field,_that.size);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String field,  int? size)  $default,) {final _that = this;
switch (_that) {
case _ElasticGroupImpl():
return $default(_that.field,_that.size);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String field,  int? size)?  $default,) {final _that = this;
switch (_that) {
case _ElasticGroupImpl() when $default != null:
return $default(_that.field,_that.size);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticGroupImpl implements _ElasticGroup {
  const _ElasticGroupImpl({required this.field, this.size});
  factory _ElasticGroupImpl.fromJson(Map<String, dynamic> json) => _$ElasticGroupImplFromJson(json);

/// Field name to group results on.
@override final  String field;
/// Number of results to be included in the _group key of the returned document.
/// Can be between 1 and 10. Defaults to 10.
@override final  int? size;

/// Create a copy of _ElasticGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticGroupImplCopyWith<_ElasticGroupImpl> get copyWith => __$ElasticGroupImplCopyWithImpl<_ElasticGroupImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticGroupImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticGroupImpl&&(identical(other.field, field) || other.field == field)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,size);

@override
String toString() {
  return '_ElasticGroup(field: $field, size: $size)';
}


}

/// @nodoc
abstract mixin class _$ElasticGroupImplCopyWith<$Res> implements _$ElasticGroupCopyWith<$Res> {
  factory _$ElasticGroupImplCopyWith(_ElasticGroupImpl value, $Res Function(_ElasticGroupImpl) _then) = __$ElasticGroupImplCopyWithImpl;
@override @useResult
$Res call({
 String field, int? size
});




}
/// @nodoc
class __$ElasticGroupImplCopyWithImpl<$Res>
    implements _$ElasticGroupImplCopyWith<$Res> {
  __$ElasticGroupImplCopyWithImpl(this._self, this._then);

  final _ElasticGroupImpl _self;
  final $Res Function(_ElasticGroupImpl) _then;

/// Create a copy of _ElasticGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = null,Object? size = freezed,}) {
  return _then(_ElasticGroupImpl(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

_ElasticSort _$ElasticSortFromJson(
  Map<String, dynamic> json
) {
    return _ElasticSortImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ElasticSort {

/// Field name to sort results
 String get field; bool get descending;
/// Create a copy of _ElasticSort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSortCopyWith<_ElasticSort> get copyWith => __$ElasticSortCopyWithImpl<_ElasticSort>(this as _ElasticSort, _$identity);

  /// Serializes this _ElasticSort to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSort&&(identical(other.field, field) || other.field == field)&&(identical(other.descending, descending) || other.descending == descending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,descending);

@override
String toString() {
  return '_ElasticSort(field: $field, descending: $descending)';
}


}

/// @nodoc
abstract mixin class _$ElasticSortCopyWith<$Res>  {
  factory _$ElasticSortCopyWith(_ElasticSort value, $Res Function(_ElasticSort) _then) = __$ElasticSortCopyWithImpl;
@useResult
$Res call({
 String field, bool descending
});




}
/// @nodoc
class __$ElasticSortCopyWithImpl<$Res>
    implements _$ElasticSortCopyWith<$Res> {
  __$ElasticSortCopyWithImpl(this._self, this._then);

  final _ElasticSort _self;
  final $Res Function(_ElasticSort) _then;

/// Create a copy of _ElasticSort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = null,Object? descending = null,}) {
  return _then(_self.copyWith(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,descending: null == descending ? _self.descending : descending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [_ElasticSort].
extension _ElasticSortPatterns on _ElasticSort {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSortImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSortImpl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSortImpl value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSortImpl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSortImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSortImpl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String field,  bool descending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSortImpl() when $default != null:
return $default(_that.field,_that.descending);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String field,  bool descending)  $default,) {final _that = this;
switch (_that) {
case _ElasticSortImpl():
return $default(_that.field,_that.descending);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String field,  bool descending)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSortImpl() when $default != null:
return $default(_that.field,_that.descending);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSortImpl implements _ElasticSort {
  const _ElasticSortImpl({required this.field, this.descending = false});
  factory _ElasticSortImpl.fromJson(Map<String, dynamic> json) => _$ElasticSortImplFromJson(json);

/// Field name to sort results
@override final  String field;
@override@JsonKey() final  bool descending;

/// Create a copy of _ElasticSort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSortImplCopyWith<_ElasticSortImpl> get copyWith => __$ElasticSortImplCopyWithImpl<_ElasticSortImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSortImplToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSortImpl&&(identical(other.field, field) || other.field == field)&&(identical(other.descending, descending) || other.descending == descending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,descending);

@override
String toString() {
  return '_ElasticSort(field: $field, descending: $descending)';
}


}

/// @nodoc
abstract mixin class _$ElasticSortImplCopyWith<$Res> implements _$ElasticSortCopyWith<$Res> {
  factory _$ElasticSortImplCopyWith(_ElasticSortImpl value, $Res Function(_ElasticSortImpl) _then) = __$ElasticSortImplCopyWithImpl;
@override @useResult
$Res call({
 String field, bool descending
});




}
/// @nodoc
class __$ElasticSortImplCopyWithImpl<$Res>
    implements _$ElasticSortImplCopyWith<$Res> {
  __$ElasticSortImplCopyWithImpl(this._self, this._then);

  final _ElasticSortImpl _self;
  final $Res Function(_ElasticSortImpl) _then;

/// Create a copy of _ElasticSort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = null,Object? descending = null,}) {
  return _then(_ElasticSortImpl(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,descending: null == descending ? _self.descending : descending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ElasticSuggestionsQuery {

/// An object representing an Elastic engine
@JsonKey(includeToJson: false, includeFromJson: false) ElasticEngine? get engine;/// String or number to match.
 String get query;/// Number of query suggestions.
/// Must be greater than or equal to 1 and less than or equal to 20.
/// Defaults to 10.
@JsonKey(name: "size") int? get size;/// Object which restricts a suggestion query to specific text fields.
/// Serialized as `types.documents.fields` in App Search.
@_ElasticSuggestionTypesConverter()@JsonKey(name: "types") List<_ElasticSearchField>? get searchFields;/// Object to sort your results in an order other than document score.
@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? get sortBy;
/// Create a copy of ElasticSuggestionsQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticSuggestionsQueryCopyWith<ElasticSuggestionsQuery> get copyWith => _$ElasticSuggestionsQueryCopyWithImpl<ElasticSuggestionsQuery>(this as ElasticSuggestionsQuery, _$identity);

  /// Serializes this ElasticSuggestionsQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticSuggestionsQuery&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.query, query) || other.query == query)&&(identical(other.size, size) || other.size == size)&&const DeepCollectionEquality().equals(other.searchFields, searchFields)&&const DeepCollectionEquality().equals(other.sortBy, sortBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,engine,query,size,const DeepCollectionEquality().hash(searchFields),const DeepCollectionEquality().hash(sortBy));

@override
String toString() {
  return 'ElasticSuggestionsQuery(engine: $engine, query: $query, size: $size, searchFields: $searchFields, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class $ElasticSuggestionsQueryCopyWith<$Res>  {
  factory $ElasticSuggestionsQueryCopyWith(ElasticSuggestionsQuery value, $Res Function(ElasticSuggestionsQuery) _then) = _$ElasticSuggestionsQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) ElasticEngine? engine, String query,@JsonKey(name: "size") int? size,@_ElasticSuggestionTypesConverter()@JsonKey(name: "types") List<_ElasticSearchField>? searchFields,@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? sortBy
});




}
/// @nodoc
class _$ElasticSuggestionsQueryCopyWithImpl<$Res>
    implements $ElasticSuggestionsQueryCopyWith<$Res> {
  _$ElasticSuggestionsQueryCopyWithImpl(this._self, this._then);

  final ElasticSuggestionsQuery _self;
  final $Res Function(ElasticSuggestionsQuery) _then;

/// Create a copy of ElasticSuggestionsQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? engine = freezed,Object? query = null,Object? size = freezed,Object? searchFields = freezed,Object? sortBy = freezed,}) {
  return _then(_self.copyWith(
engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as ElasticEngine?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,searchFields: freezed == searchFields ? _self.searchFields : searchFields // ignore: cast_nullable_to_non_nullable
as List<_ElasticSearchField>?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as List<_ElasticSort>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticSuggestionsQuery].
extension ElasticSuggestionsQueryPatterns on ElasticSuggestionsQuery {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSuggestionsQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSuggestionsQuery() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSuggestionsQuery value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSuggestionsQuery():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSuggestionsQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSuggestionsQuery() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  ElasticEngine? engine,  String query, @JsonKey(name: "size")  int? size, @_ElasticSuggestionTypesConverter()@JsonKey(name: "types")  List<_ElasticSearchField>? searchFields, @_ElasticSortConverter()@JsonKey(name: "sort")  List<_ElasticSort>? sortBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSuggestionsQuery() when $default != null:
return $default(_that.engine,_that.query,_that.size,_that.searchFields,_that.sortBy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  ElasticEngine? engine,  String query, @JsonKey(name: "size")  int? size, @_ElasticSuggestionTypesConverter()@JsonKey(name: "types")  List<_ElasticSearchField>? searchFields, @_ElasticSortConverter()@JsonKey(name: "sort")  List<_ElasticSort>? sortBy)  $default,) {final _that = this;
switch (_that) {
case _ElasticSuggestionsQuery():
return $default(_that.engine,_that.query,_that.size,_that.searchFields,_that.sortBy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false, includeFromJson: false)  ElasticEngine? engine,  String query, @JsonKey(name: "size")  int? size, @_ElasticSuggestionTypesConverter()@JsonKey(name: "types")  List<_ElasticSearchField>? searchFields, @_ElasticSortConverter()@JsonKey(name: "sort")  List<_ElasticSort>? sortBy)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSuggestionsQuery() when $default != null:
return $default(_that.engine,_that.query,_that.size,_that.searchFields,_that.sortBy);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSuggestionsQuery extends ElasticSuggestionsQuery {
  const _ElasticSuggestionsQuery({@JsonKey(includeToJson: false, includeFromJson: false) this.engine, required this.query, @JsonKey(name: "size") this.size = 10, @_ElasticSuggestionTypesConverter()@JsonKey(name: "types") final  List<_ElasticSearchField>? searchFields, @_ElasticSortConverter()@JsonKey(name: "sort") final  List<_ElasticSort>? sortBy}): _searchFields = searchFields,_sortBy = sortBy,super._();
  factory _ElasticSuggestionsQuery.fromJson(Map<String, dynamic> json) => _$ElasticSuggestionsQueryFromJson(json);

/// An object representing an Elastic engine
@override@JsonKey(includeToJson: false, includeFromJson: false) final  ElasticEngine? engine;
/// String or number to match.
@override final  String query;
/// Number of query suggestions.
/// Must be greater than or equal to 1 and less than or equal to 20.
/// Defaults to 10.
@override@JsonKey(name: "size") final  int? size;
/// Object which restricts a suggestion query to specific text fields.
/// Serialized as `types.documents.fields` in App Search.
 final  List<_ElasticSearchField>? _searchFields;
/// Object which restricts a suggestion query to specific text fields.
/// Serialized as `types.documents.fields` in App Search.
@override@_ElasticSuggestionTypesConverter()@JsonKey(name: "types") List<_ElasticSearchField>? get searchFields {
  final value = _searchFields;
  if (value == null) return null;
  if (_searchFields is EqualUnmodifiableListView) return _searchFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Object to sort your results in an order other than document score.
 final  List<_ElasticSort>? _sortBy;
/// Object to sort your results in an order other than document score.
@override@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? get sortBy {
  final value = _sortBy;
  if (value == null) return null;
  if (_sortBy is EqualUnmodifiableListView) return _sortBy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ElasticSuggestionsQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSuggestionsQueryCopyWith<_ElasticSuggestionsQuery> get copyWith => __$ElasticSuggestionsQueryCopyWithImpl<_ElasticSuggestionsQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSuggestionsQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSuggestionsQuery&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.query, query) || other.query == query)&&(identical(other.size, size) || other.size == size)&&const DeepCollectionEquality().equals(other._searchFields, _searchFields)&&const DeepCollectionEquality().equals(other._sortBy, _sortBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,engine,query,size,const DeepCollectionEquality().hash(_searchFields),const DeepCollectionEquality().hash(_sortBy));

@override
String toString() {
  return 'ElasticSuggestionsQuery(engine: $engine, query: $query, size: $size, searchFields: $searchFields, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class _$ElasticSuggestionsQueryCopyWith<$Res> implements $ElasticSuggestionsQueryCopyWith<$Res> {
  factory _$ElasticSuggestionsQueryCopyWith(_ElasticSuggestionsQuery value, $Res Function(_ElasticSuggestionsQuery) _then) = __$ElasticSuggestionsQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) ElasticEngine? engine, String query,@JsonKey(name: "size") int? size,@_ElasticSuggestionTypesConverter()@JsonKey(name: "types") List<_ElasticSearchField>? searchFields,@_ElasticSortConverter()@JsonKey(name: "sort") List<_ElasticSort>? sortBy
});




}
/// @nodoc
class __$ElasticSuggestionsQueryCopyWithImpl<$Res>
    implements _$ElasticSuggestionsQueryCopyWith<$Res> {
  __$ElasticSuggestionsQueryCopyWithImpl(this._self, this._then);

  final _ElasticSuggestionsQuery _self;
  final $Res Function(_ElasticSuggestionsQuery) _then;

/// Create a copy of ElasticSuggestionsQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? engine = freezed,Object? query = null,Object? size = freezed,Object? searchFields = freezed,Object? sortBy = freezed,}) {
  return _then(_ElasticSuggestionsQuery(
engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as ElasticEngine?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,searchFields: freezed == searchFields ? _self._searchFields : searchFields // ignore: cast_nullable_to_non_nullable
as List<_ElasticSearchField>?,sortBy: freezed == sortBy ? _self._sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as List<_ElasticSort>?,
  ));
}


}


/// @nodoc
mixin _$ElasticResponse {

/// Object delimiting the results meta data.
 ElasticResponseMeta get meta;/// Array of results matching the search.
 List<ElasticResult> get results;/// Map of facets passed to the query
@JsonKey(name: "facets") Map<String, List<ElasticFacet>>? get rawFacets;
/// Create a copy of ElasticResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticResponseCopyWith<ElasticResponse> get copyWith => _$ElasticResponseCopyWithImpl<ElasticResponse>(this as ElasticResponse, _$identity);

  /// Serializes this ElasticResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.rawFacets, rawFacets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(rawFacets));

@override
String toString() {
  return 'ElasticResponse(meta: $meta, results: $results, rawFacets: $rawFacets)';
}


}

/// @nodoc
abstract mixin class $ElasticResponseCopyWith<$Res>  {
  factory $ElasticResponseCopyWith(ElasticResponse value, $Res Function(ElasticResponse) _then) = _$ElasticResponseCopyWithImpl;
@useResult
$Res call({
 ElasticResponseMeta meta, List<ElasticResult> results,@JsonKey(name: "facets") Map<String, List<ElasticFacet>>? rawFacets
});


$ElasticResponseMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticResponseCopyWithImpl<$Res>
    implements $ElasticResponseCopyWith<$Res> {
  _$ElasticResponseCopyWithImpl(this._self, this._then);

  final ElasticResponse _self;
  final $Res Function(ElasticResponse) _then;

/// Create a copy of ElasticResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? results = null,Object? rawFacets = freezed,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticResponseMeta,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticResult>,rawFacets: freezed == rawFacets ? _self.rawFacets : rawFacets // ignore: cast_nullable_to_non_nullable
as Map<String, List<ElasticFacet>>?,
  ));
}
/// Create a copy of ElasticResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResponseMetaCopyWith<$Res> get meta {
  
  return $ElasticResponseMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticResponse].
extension ElasticResponsePatterns on ElasticResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticResponseMeta meta,  List<ElasticResult> results, @JsonKey(name: "facets")  Map<String, List<ElasticFacet>>? rawFacets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticResponse() when $default != null:
return $default(_that.meta,_that.results,_that.rawFacets);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticResponseMeta meta,  List<ElasticResult> results, @JsonKey(name: "facets")  Map<String, List<ElasticFacet>>? rawFacets)  $default,) {final _that = this;
switch (_that) {
case _ElasticResponse():
return $default(_that.meta,_that.results,_that.rawFacets);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticResponseMeta meta,  List<ElasticResult> results, @JsonKey(name: "facets")  Map<String, List<ElasticFacet>>? rawFacets)?  $default,) {final _that = this;
switch (_that) {
case _ElasticResponse() when $default != null:
return $default(_that.meta,_that.results,_that.rawFacets);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticResponse extends ElasticResponse {
   _ElasticResponse({required this.meta, required final  List<ElasticResult> results, @JsonKey(name: "facets") final  Map<String, List<ElasticFacet>>? rawFacets}): _results = results,_rawFacets = rawFacets,super._();
  factory _ElasticResponse.fromJson(Map<String, dynamic> json) => _$ElasticResponseFromJson(json);

/// Object delimiting the results meta data.
@override final  ElasticResponseMeta meta;
/// Array of results matching the search.
 final  List<ElasticResult> _results;
/// Array of results matching the search.
@override List<ElasticResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

/// Map of facets passed to the query
 final  Map<String, List<ElasticFacet>>? _rawFacets;
/// Map of facets passed to the query
@override@JsonKey(name: "facets") Map<String, List<ElasticFacet>>? get rawFacets {
  final value = _rawFacets;
  if (value == null) return null;
  if (_rawFacets is EqualUnmodifiableMapView) return _rawFacets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ElasticResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResponseCopyWith<_ElasticResponse> get copyWith => __$ElasticResponseCopyWithImpl<_ElasticResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._rawFacets, _rawFacets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_rawFacets));

@override
String toString() {
  return 'ElasticResponse(meta: $meta, results: $results, rawFacets: $rawFacets)';
}


}

/// @nodoc
abstract mixin class _$ElasticResponseCopyWith<$Res> implements $ElasticResponseCopyWith<$Res> {
  factory _$ElasticResponseCopyWith(_ElasticResponse value, $Res Function(_ElasticResponse) _then) = __$ElasticResponseCopyWithImpl;
@override @useResult
$Res call({
 ElasticResponseMeta meta, List<ElasticResult> results,@JsonKey(name: "facets") Map<String, List<ElasticFacet>>? rawFacets
});


@override $ElasticResponseMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticResponseCopyWithImpl<$Res>
    implements _$ElasticResponseCopyWith<$Res> {
  __$ElasticResponseCopyWithImpl(this._self, this._then);

  final _ElasticResponse _self;
  final $Res Function(_ElasticResponse) _then;

/// Create a copy of ElasticResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? results = null,Object? rawFacets = freezed,}) {
  return _then(_ElasticResponse(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticResponseMeta,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticResult>,rawFacets: freezed == rawFacets ? _self._rawFacets : rawFacets // ignore: cast_nullable_to_non_nullable
as Map<String, List<ElasticFacet>>?,
  ));
}

/// Create a copy of ElasticResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResponseMetaCopyWith<$Res> get meta {
  
  return $ElasticResponseMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticResponseMeta {

/// String ID representing the request. Guaranteed to be unique.
@JsonKey(name: "request_id") String get requestId;/// Array of warnings for the query.
///
/// Included with error responses and success responses, so inspect all responses for warnings.
 List<dynamic> get warnings;/// Array of alerts for your deployment.
///
/// Included with error responses and success responses, so inspect all responses for alerts.
 List<dynamic> get alerts;/// Object delimiting the pagination meta data.
 ElasticResponseMetaPage get page;
/// Create a copy of ElasticResponseMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticResponseMetaCopyWith<ElasticResponseMeta> get copyWith => _$ElasticResponseMetaCopyWithImpl<ElasticResponseMeta>(this as ElasticResponseMeta, _$identity);

  /// Serializes this ElasticResponseMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticResponseMeta&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other.warnings, warnings)&&const DeepCollectionEquality().equals(other.alerts, alerts)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,const DeepCollectionEquality().hash(warnings),const DeepCollectionEquality().hash(alerts),page);

@override
String toString() {
  return 'ElasticResponseMeta(requestId: $requestId, warnings: $warnings, alerts: $alerts, page: $page)';
}


}

/// @nodoc
abstract mixin class $ElasticResponseMetaCopyWith<$Res>  {
  factory $ElasticResponseMetaCopyWith(ElasticResponseMeta value, $Res Function(ElasticResponseMeta) _then) = _$ElasticResponseMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "request_id") String requestId, List<dynamic> warnings, List<dynamic> alerts, ElasticResponseMetaPage page
});


$ElasticResponseMetaPageCopyWith<$Res> get page;

}
/// @nodoc
class _$ElasticResponseMetaCopyWithImpl<$Res>
    implements $ElasticResponseMetaCopyWith<$Res> {
  _$ElasticResponseMetaCopyWithImpl(this._self, this._then);

  final ElasticResponseMeta _self;
  final $Res Function(ElasticResponseMeta) _then;

/// Create a copy of ElasticResponseMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? warnings = null,Object? alerts = null,Object? page = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>,alerts: null == alerts ? _self.alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<dynamic>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticResponseMetaPage,
  ));
}
/// Create a copy of ElasticResponseMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResponseMetaPageCopyWith<$Res> get page {
  
  return $ElasticResponseMetaPageCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticResponseMeta].
extension ElasticResponseMetaPatterns on ElasticResponseMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticResponseMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticResponseMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticResponseMeta value)  $default,){
final _that = this;
switch (_that) {
case _ElasticResponseMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticResponseMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticResponseMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "request_id")  String requestId,  List<dynamic> warnings,  List<dynamic> alerts,  ElasticResponseMetaPage page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticResponseMeta() when $default != null:
return $default(_that.requestId,_that.warnings,_that.alerts,_that.page);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "request_id")  String requestId,  List<dynamic> warnings,  List<dynamic> alerts,  ElasticResponseMetaPage page)  $default,) {final _that = this;
switch (_that) {
case _ElasticResponseMeta():
return $default(_that.requestId,_that.warnings,_that.alerts,_that.page);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "request_id")  String requestId,  List<dynamic> warnings,  List<dynamic> alerts,  ElasticResponseMetaPage page)?  $default,) {final _that = this;
switch (_that) {
case _ElasticResponseMeta() when $default != null:
return $default(_that.requestId,_that.warnings,_that.alerts,_that.page);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticResponseMeta implements ElasticResponseMeta {
   _ElasticResponseMeta({@JsonKey(name: "request_id") required this.requestId, required final  List<dynamic> warnings, required final  List<dynamic> alerts, required this.page}): _warnings = warnings,_alerts = alerts;
  factory _ElasticResponseMeta.fromJson(Map<String, dynamic> json) => _$ElasticResponseMetaFromJson(json);

/// String ID representing the request. Guaranteed to be unique.
@override@JsonKey(name: "request_id") final  String requestId;
/// Array of warnings for the query.
///
/// Included with error responses and success responses, so inspect all responses for warnings.
 final  List<dynamic> _warnings;
/// Array of warnings for the query.
///
/// Included with error responses and success responses, so inspect all responses for warnings.
@override List<dynamic> get warnings {
  if (_warnings is EqualUnmodifiableListView) return _warnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warnings);
}

/// Array of alerts for your deployment.
///
/// Included with error responses and success responses, so inspect all responses for alerts.
 final  List<dynamic> _alerts;
/// Array of alerts for your deployment.
///
/// Included with error responses and success responses, so inspect all responses for alerts.
@override List<dynamic> get alerts {
  if (_alerts is EqualUnmodifiableListView) return _alerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alerts);
}

/// Object delimiting the pagination meta data.
@override final  ElasticResponseMetaPage page;

/// Create a copy of ElasticResponseMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResponseMetaCopyWith<_ElasticResponseMeta> get copyWith => __$ElasticResponseMetaCopyWithImpl<_ElasticResponseMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticResponseMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResponseMeta&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other._warnings, _warnings)&&const DeepCollectionEquality().equals(other._alerts, _alerts)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,const DeepCollectionEquality().hash(_warnings),const DeepCollectionEquality().hash(_alerts),page);

@override
String toString() {
  return 'ElasticResponseMeta(requestId: $requestId, warnings: $warnings, alerts: $alerts, page: $page)';
}


}

/// @nodoc
abstract mixin class _$ElasticResponseMetaCopyWith<$Res> implements $ElasticResponseMetaCopyWith<$Res> {
  factory _$ElasticResponseMetaCopyWith(_ElasticResponseMeta value, $Res Function(_ElasticResponseMeta) _then) = __$ElasticResponseMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "request_id") String requestId, List<dynamic> warnings, List<dynamic> alerts, ElasticResponseMetaPage page
});


@override $ElasticResponseMetaPageCopyWith<$Res> get page;

}
/// @nodoc
class __$ElasticResponseMetaCopyWithImpl<$Res>
    implements _$ElasticResponseMetaCopyWith<$Res> {
  __$ElasticResponseMetaCopyWithImpl(this._self, this._then);

  final _ElasticResponseMeta _self;
  final $Res Function(_ElasticResponseMeta) _then;

/// Create a copy of ElasticResponseMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? warnings = null,Object? alerts = null,Object? page = null,}) {
  return _then(_ElasticResponseMeta(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,warnings: null == warnings ? _self._warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>,alerts: null == alerts ? _self._alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<dynamic>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticResponseMetaPage,
  ));
}

/// Create a copy of ElasticResponseMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResponseMetaPageCopyWith<$Res> get page {
  
  return $ElasticResponseMetaPageCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// @nodoc
mixin _$ElasticResponseMetaPage {

/// Number representing the current page of results.
 int get current;/// Number representing the results per page.
 int get size;/// Number representing the total pages of results.
/// Value is 0 when you paginate beyond 10,000 results.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
@JsonKey(name: "total_pages") int get totalPages;/// Number representing the total results across all pages.
///
/// The values 0 through 9999 are exact counts.
///
/// The value 10000 is a pseudo keyword representing greater than or equal to 10,000 results.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-display-total]
/// and [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-count-documents]
@JsonKey(name: "total_results") int get totalResults;
/// Create a copy of ElasticResponseMetaPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticResponseMetaPageCopyWith<ElasticResponseMetaPage> get copyWith => _$ElasticResponseMetaPageCopyWithImpl<ElasticResponseMetaPage>(this as ElasticResponseMetaPage, _$identity);

  /// Serializes this ElasticResponseMetaPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticResponseMetaPage&&(identical(other.current, current) || other.current == current)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,size,totalPages,totalResults);

@override
String toString() {
  return 'ElasticResponseMetaPage(current: $current, size: $size, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $ElasticResponseMetaPageCopyWith<$Res>  {
  factory $ElasticResponseMetaPageCopyWith(ElasticResponseMetaPage value, $Res Function(ElasticResponseMetaPage) _then) = _$ElasticResponseMetaPageCopyWithImpl;
@useResult
$Res call({
 int current, int size,@JsonKey(name: "total_pages") int totalPages,@JsonKey(name: "total_results") int totalResults
});




}
/// @nodoc
class _$ElasticResponseMetaPageCopyWithImpl<$Res>
    implements $ElasticResponseMetaPageCopyWith<$Res> {
  _$ElasticResponseMetaPageCopyWithImpl(this._self, this._then);

  final ElasticResponseMetaPage _self;
  final $Res Function(ElasticResponseMetaPage) _then;

/// Create a copy of ElasticResponseMetaPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? size = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticResponseMetaPage].
extension ElasticResponseMetaPagePatterns on ElasticResponseMetaPage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticResponseMetaPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticResponseMetaPage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticResponseMetaPage value)  $default,){
final _that = this;
switch (_that) {
case _ElasticResponseMetaPage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticResponseMetaPage value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticResponseMetaPage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int current,  int size, @JsonKey(name: "total_pages")  int totalPages, @JsonKey(name: "total_results")  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticResponseMetaPage() when $default != null:
return $default(_that.current,_that.size,_that.totalPages,_that.totalResults);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int current,  int size, @JsonKey(name: "total_pages")  int totalPages, @JsonKey(name: "total_results")  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _ElasticResponseMetaPage():
return $default(_that.current,_that.size,_that.totalPages,_that.totalResults);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int current,  int size, @JsonKey(name: "total_pages")  int totalPages, @JsonKey(name: "total_results")  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _ElasticResponseMetaPage() when $default != null:
return $default(_that.current,_that.size,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticResponseMetaPage implements ElasticResponseMetaPage {
   _ElasticResponseMetaPage({required this.current, required this.size, @JsonKey(name: "total_pages") required this.totalPages, @JsonKey(name: "total_results") required this.totalResults});
  factory _ElasticResponseMetaPage.fromJson(Map<String, dynamic> json) => _$ElasticResponseMetaPageFromJson(json);

/// Number representing the current page of results.
@override final  int current;
/// Number representing the results per page.
@override final  int size;
/// Number representing the total pages of results.
/// Value is 0 when you paginate beyond 10,000 results.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-paginate]
@override@JsonKey(name: "total_pages") final  int totalPages;
/// Number representing the total results across all pages.
///
/// The values 0 through 9999 are exact counts.
///
/// The value 10000 is a pseudo keyword representing greater than or equal to 10,000 results.
///
/// See [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-display-total]
/// and [https://www.elastic.co/guide/en/app-search/current/search-guide.html#search-guide-count-documents]
@override@JsonKey(name: "total_results") final  int totalResults;

/// Create a copy of ElasticResponseMetaPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResponseMetaPageCopyWith<_ElasticResponseMetaPage> get copyWith => __$ElasticResponseMetaPageCopyWithImpl<_ElasticResponseMetaPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticResponseMetaPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResponseMetaPage&&(identical(other.current, current) || other.current == current)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,size,totalPages,totalResults);

@override
String toString() {
  return 'ElasticResponseMetaPage(current: $current, size: $size, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$ElasticResponseMetaPageCopyWith<$Res> implements $ElasticResponseMetaPageCopyWith<$Res> {
  factory _$ElasticResponseMetaPageCopyWith(_ElasticResponseMetaPage value, $Res Function(_ElasticResponseMetaPage) _then) = __$ElasticResponseMetaPageCopyWithImpl;
@override @useResult
$Res call({
 int current, int size,@JsonKey(name: "total_pages") int totalPages,@JsonKey(name: "total_results") int totalResults
});




}
/// @nodoc
class __$ElasticResponseMetaPageCopyWithImpl<$Res>
    implements _$ElasticResponseMetaPageCopyWith<$Res> {
  __$ElasticResponseMetaPageCopyWithImpl(this._self, this._then);

  final _ElasticResponseMetaPage _self;
  final $Res Function(_ElasticResponseMetaPage) _then;

/// Create a copy of ElasticResponseMetaPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? size = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_ElasticResponseMetaPage(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ElasticQuerySuggestionResponse {

/// Documents containing the suggestions
 ElasticSuggestionResult get results;/// Metadata for the query suggestion request.
 ElasticQuerySuggestionMeta get meta;
/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticQuerySuggestionResponseCopyWith<ElasticQuerySuggestionResponse> get copyWith => _$ElasticQuerySuggestionResponseCopyWithImpl<ElasticQuerySuggestionResponse>(this as ElasticQuerySuggestionResponse, _$identity);

  /// Serializes this ElasticQuerySuggestionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticQuerySuggestionResponse&&(identical(other.results, results) || other.results == results)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,results,meta);

@override
String toString() {
  return 'ElasticQuerySuggestionResponse(results: $results, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ElasticQuerySuggestionResponseCopyWith<$Res>  {
  factory $ElasticQuerySuggestionResponseCopyWith(ElasticQuerySuggestionResponse value, $Res Function(ElasticQuerySuggestionResponse) _then) = _$ElasticQuerySuggestionResponseCopyWithImpl;
@useResult
$Res call({
 ElasticSuggestionResult results, ElasticQuerySuggestionMeta meta
});


$ElasticSuggestionResultCopyWith<$Res> get results;$ElasticQuerySuggestionMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticQuerySuggestionResponseCopyWithImpl<$Res>
    implements $ElasticQuerySuggestionResponseCopyWith<$Res> {
  _$ElasticQuerySuggestionResponseCopyWithImpl(this._self, this._then);

  final ElasticQuerySuggestionResponse _self;
  final $Res Function(ElasticQuerySuggestionResponse) _then;

/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? meta = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as ElasticSuggestionResult,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticQuerySuggestionMeta,
  ));
}
/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticSuggestionResultCopyWith<$Res> get results {
  
  return $ElasticSuggestionResultCopyWith<$Res>(_self.results, (value) {
    return _then(_self.copyWith(results: value));
  });
}/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticQuerySuggestionMetaCopyWith<$Res> get meta {
  
  return $ElasticQuerySuggestionMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticQuerySuggestionResponse].
extension ElasticQuerySuggestionResponsePatterns on ElasticQuerySuggestionResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticQuerySuggestionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticQuerySuggestionResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticQuerySuggestionResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticQuerySuggestionResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticQuerySuggestionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticQuerySuggestionResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticSuggestionResult results,  ElasticQuerySuggestionMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticQuerySuggestionResponse() when $default != null:
return $default(_that.results,_that.meta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticSuggestionResult results,  ElasticQuerySuggestionMeta meta)  $default,) {final _that = this;
switch (_that) {
case _ElasticQuerySuggestionResponse():
return $default(_that.results,_that.meta);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticSuggestionResult results,  ElasticQuerySuggestionMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _ElasticQuerySuggestionResponse() when $default != null:
return $default(_that.results,_that.meta);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticQuerySuggestionResponse extends ElasticQuerySuggestionResponse {
   _ElasticQuerySuggestionResponse({required this.results, required this.meta}): super._();
  factory _ElasticQuerySuggestionResponse.fromJson(Map<String, dynamic> json) => _$ElasticQuerySuggestionResponseFromJson(json);

/// Documents containing the suggestions
@override final  ElasticSuggestionResult results;
/// Metadata for the query suggestion request.
@override final  ElasticQuerySuggestionMeta meta;

/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticQuerySuggestionResponseCopyWith<_ElasticQuerySuggestionResponse> get copyWith => __$ElasticQuerySuggestionResponseCopyWithImpl<_ElasticQuerySuggestionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticQuerySuggestionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticQuerySuggestionResponse&&(identical(other.results, results) || other.results == results)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,results,meta);

@override
String toString() {
  return 'ElasticQuerySuggestionResponse(results: $results, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ElasticQuerySuggestionResponseCopyWith<$Res> implements $ElasticQuerySuggestionResponseCopyWith<$Res> {
  factory _$ElasticQuerySuggestionResponseCopyWith(_ElasticQuerySuggestionResponse value, $Res Function(_ElasticQuerySuggestionResponse) _then) = __$ElasticQuerySuggestionResponseCopyWithImpl;
@override @useResult
$Res call({
 ElasticSuggestionResult results, ElasticQuerySuggestionMeta meta
});


@override $ElasticSuggestionResultCopyWith<$Res> get results;@override $ElasticQuerySuggestionMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticQuerySuggestionResponseCopyWithImpl<$Res>
    implements _$ElasticQuerySuggestionResponseCopyWith<$Res> {
  __$ElasticQuerySuggestionResponseCopyWithImpl(this._self, this._then);

  final _ElasticQuerySuggestionResponse _self;
  final $Res Function(_ElasticQuerySuggestionResponse) _then;

/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? meta = null,}) {
  return _then(_ElasticQuerySuggestionResponse(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as ElasticSuggestionResult,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticQuerySuggestionMeta,
  ));
}

/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticSuggestionResultCopyWith<$Res> get results {
  
  return $ElasticSuggestionResultCopyWith<$Res>(_self.results, (value) {
    return _then(_self.copyWith(results: value));
  });
}/// Create a copy of ElasticQuerySuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticQuerySuggestionMetaCopyWith<$Res> get meta {
  
  return $ElasticQuerySuggestionMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticQuerySuggestionMeta {

@JsonKey(name: "request_id") String get requestId;
/// Create a copy of ElasticQuerySuggestionMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticQuerySuggestionMetaCopyWith<ElasticQuerySuggestionMeta> get copyWith => _$ElasticQuerySuggestionMetaCopyWithImpl<ElasticQuerySuggestionMeta>(this as ElasticQuerySuggestionMeta, _$identity);

  /// Serializes this ElasticQuerySuggestionMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticQuerySuggestionMeta&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId);

@override
String toString() {
  return 'ElasticQuerySuggestionMeta(requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class $ElasticQuerySuggestionMetaCopyWith<$Res>  {
  factory $ElasticQuerySuggestionMetaCopyWith(ElasticQuerySuggestionMeta value, $Res Function(ElasticQuerySuggestionMeta) _then) = _$ElasticQuerySuggestionMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "request_id") String requestId
});




}
/// @nodoc
class _$ElasticQuerySuggestionMetaCopyWithImpl<$Res>
    implements $ElasticQuerySuggestionMetaCopyWith<$Res> {
  _$ElasticQuerySuggestionMetaCopyWithImpl(this._self, this._then);

  final ElasticQuerySuggestionMeta _self;
  final $Res Function(ElasticQuerySuggestionMeta) _then;

/// Create a copy of ElasticQuerySuggestionMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticQuerySuggestionMeta].
extension ElasticQuerySuggestionMetaPatterns on ElasticQuerySuggestionMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticQuerySuggestionMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticQuerySuggestionMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticQuerySuggestionMeta value)  $default,){
final _that = this;
switch (_that) {
case _ElasticQuerySuggestionMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticQuerySuggestionMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticQuerySuggestionMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "request_id")  String requestId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticQuerySuggestionMeta() when $default != null:
return $default(_that.requestId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "request_id")  String requestId)  $default,) {final _that = this;
switch (_that) {
case _ElasticQuerySuggestionMeta():
return $default(_that.requestId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "request_id")  String requestId)?  $default,) {final _that = this;
switch (_that) {
case _ElasticQuerySuggestionMeta() when $default != null:
return $default(_that.requestId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticQuerySuggestionMeta implements ElasticQuerySuggestionMeta {
   _ElasticQuerySuggestionMeta({@JsonKey(name: "request_id") required this.requestId});
  factory _ElasticQuerySuggestionMeta.fromJson(Map<String, dynamic> json) => _$ElasticQuerySuggestionMetaFromJson(json);

@override@JsonKey(name: "request_id") final  String requestId;

/// Create a copy of ElasticQuerySuggestionMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticQuerySuggestionMetaCopyWith<_ElasticQuerySuggestionMeta> get copyWith => __$ElasticQuerySuggestionMetaCopyWithImpl<_ElasticQuerySuggestionMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticQuerySuggestionMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticQuerySuggestionMeta&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId);

@override
String toString() {
  return 'ElasticQuerySuggestionMeta(requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class _$ElasticQuerySuggestionMetaCopyWith<$Res> implements $ElasticQuerySuggestionMetaCopyWith<$Res> {
  factory _$ElasticQuerySuggestionMetaCopyWith(_ElasticQuerySuggestionMeta value, $Res Function(_ElasticQuerySuggestionMeta) _then) = __$ElasticQuerySuggestionMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "request_id") String requestId
});




}
/// @nodoc
class __$ElasticQuerySuggestionMetaCopyWithImpl<$Res>
    implements _$ElasticQuerySuggestionMetaCopyWith<$Res> {
  __$ElasticQuerySuggestionMetaCopyWithImpl(this._self, this._then);

  final _ElasticQuerySuggestionMeta _self;
  final $Res Function(_ElasticQuerySuggestionMeta) _then;

/// Create a copy of ElasticQuerySuggestionMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,}) {
  return _then(_ElasticQuerySuggestionMeta(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ElasticSearchExplainEngine {

 String get name; String? get type;
/// Create a copy of ElasticSearchExplainEngine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticSearchExplainEngineCopyWith<ElasticSearchExplainEngine> get copyWith => _$ElasticSearchExplainEngineCopyWithImpl<ElasticSearchExplainEngine>(this as ElasticSearchExplainEngine, _$identity);

  /// Serializes this ElasticSearchExplainEngine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticSearchExplainEngine&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type);

@override
String toString() {
  return 'ElasticSearchExplainEngine(name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $ElasticSearchExplainEngineCopyWith<$Res>  {
  factory $ElasticSearchExplainEngineCopyWith(ElasticSearchExplainEngine value, $Res Function(ElasticSearchExplainEngine) _then) = _$ElasticSearchExplainEngineCopyWithImpl;
@useResult
$Res call({
 String name, String? type
});




}
/// @nodoc
class _$ElasticSearchExplainEngineCopyWithImpl<$Res>
    implements $ElasticSearchExplainEngineCopyWith<$Res> {
  _$ElasticSearchExplainEngineCopyWithImpl(this._self, this._then);

  final ElasticSearchExplainEngine _self;
  final $Res Function(ElasticSearchExplainEngine) _then;

/// Create a copy of ElasticSearchExplainEngine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticSearchExplainEngine].
extension ElasticSearchExplainEnginePatterns on ElasticSearchExplainEngine {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSearchExplainEngine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSearchExplainEngine() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSearchExplainEngine value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchExplainEngine():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSearchExplainEngine value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchExplainEngine() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSearchExplainEngine() when $default != null:
return $default(_that.name,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? type)  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchExplainEngine():
return $default(_that.name,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchExplainEngine() when $default != null:
return $default(_that.name,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSearchExplainEngine implements ElasticSearchExplainEngine {
   _ElasticSearchExplainEngine({required this.name, this.type});
  factory _ElasticSearchExplainEngine.fromJson(Map<String, dynamic> json) => _$ElasticSearchExplainEngineFromJson(json);

@override final  String name;
@override final  String? type;

/// Create a copy of ElasticSearchExplainEngine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchExplainEngineCopyWith<_ElasticSearchExplainEngine> get copyWith => __$ElasticSearchExplainEngineCopyWithImpl<_ElasticSearchExplainEngine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSearchExplainEngineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchExplainEngine&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type);

@override
String toString() {
  return 'ElasticSearchExplainEngine(name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchExplainEngineCopyWith<$Res> implements $ElasticSearchExplainEngineCopyWith<$Res> {
  factory _$ElasticSearchExplainEngineCopyWith(_ElasticSearchExplainEngine value, $Res Function(_ElasticSearchExplainEngine) _then) = __$ElasticSearchExplainEngineCopyWithImpl;
@override @useResult
$Res call({
 String name, String? type
});




}
/// @nodoc
class __$ElasticSearchExplainEngineCopyWithImpl<$Res>
    implements _$ElasticSearchExplainEngineCopyWith<$Res> {
  __$ElasticSearchExplainEngineCopyWithImpl(this._self, this._then);

  final _ElasticSearchExplainEngine _self;
  final $Res Function(_ElasticSearchExplainEngine) _then;

/// Create a copy of ElasticSearchExplainEngine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = freezed,}) {
  return _then(_ElasticSearchExplainEngine(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ElasticSearchExplainMeta {

@JsonKey(name: "request_id") String get requestId; List<dynamic> get warnings; List<dynamic> get alerts; int? get precision; ElasticSearchExplainEngine? get engine;
/// Create a copy of ElasticSearchExplainMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticSearchExplainMetaCopyWith<ElasticSearchExplainMeta> get copyWith => _$ElasticSearchExplainMetaCopyWithImpl<ElasticSearchExplainMeta>(this as ElasticSearchExplainMeta, _$identity);

  /// Serializes this ElasticSearchExplainMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticSearchExplainMeta&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other.warnings, warnings)&&const DeepCollectionEquality().equals(other.alerts, alerts)&&(identical(other.precision, precision) || other.precision == precision)&&(identical(other.engine, engine) || other.engine == engine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,const DeepCollectionEquality().hash(warnings),const DeepCollectionEquality().hash(alerts),precision,engine);

@override
String toString() {
  return 'ElasticSearchExplainMeta(requestId: $requestId, warnings: $warnings, alerts: $alerts, precision: $precision, engine: $engine)';
}


}

/// @nodoc
abstract mixin class $ElasticSearchExplainMetaCopyWith<$Res>  {
  factory $ElasticSearchExplainMetaCopyWith(ElasticSearchExplainMeta value, $Res Function(ElasticSearchExplainMeta) _then) = _$ElasticSearchExplainMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "request_id") String requestId, List<dynamic> warnings, List<dynamic> alerts, int? precision, ElasticSearchExplainEngine? engine
});


$ElasticSearchExplainEngineCopyWith<$Res>? get engine;

}
/// @nodoc
class _$ElasticSearchExplainMetaCopyWithImpl<$Res>
    implements $ElasticSearchExplainMetaCopyWith<$Res> {
  _$ElasticSearchExplainMetaCopyWithImpl(this._self, this._then);

  final ElasticSearchExplainMeta _self;
  final $Res Function(ElasticSearchExplainMeta) _then;

/// Create a copy of ElasticSearchExplainMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? warnings = null,Object? alerts = null,Object? precision = freezed,Object? engine = freezed,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>,alerts: null == alerts ? _self.alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<dynamic>,precision: freezed == precision ? _self.precision : precision // ignore: cast_nullable_to_non_nullable
as int?,engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as ElasticSearchExplainEngine?,
  ));
}
/// Create a copy of ElasticSearchExplainMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticSearchExplainEngineCopyWith<$Res>? get engine {
    if (_self.engine == null) {
    return null;
  }

  return $ElasticSearchExplainEngineCopyWith<$Res>(_self.engine!, (value) {
    return _then(_self.copyWith(engine: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticSearchExplainMeta].
extension ElasticSearchExplainMetaPatterns on ElasticSearchExplainMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSearchExplainMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSearchExplainMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSearchExplainMeta value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchExplainMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSearchExplainMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchExplainMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "request_id")  String requestId,  List<dynamic> warnings,  List<dynamic> alerts,  int? precision,  ElasticSearchExplainEngine? engine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSearchExplainMeta() when $default != null:
return $default(_that.requestId,_that.warnings,_that.alerts,_that.precision,_that.engine);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "request_id")  String requestId,  List<dynamic> warnings,  List<dynamic> alerts,  int? precision,  ElasticSearchExplainEngine? engine)  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchExplainMeta():
return $default(_that.requestId,_that.warnings,_that.alerts,_that.precision,_that.engine);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "request_id")  String requestId,  List<dynamic> warnings,  List<dynamic> alerts,  int? precision,  ElasticSearchExplainEngine? engine)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchExplainMeta() when $default != null:
return $default(_that.requestId,_that.warnings,_that.alerts,_that.precision,_that.engine);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSearchExplainMeta implements ElasticSearchExplainMeta {
   _ElasticSearchExplainMeta({@JsonKey(name: "request_id") required this.requestId, required final  List<dynamic> warnings, required final  List<dynamic> alerts, this.precision, this.engine}): _warnings = warnings,_alerts = alerts;
  factory _ElasticSearchExplainMeta.fromJson(Map<String, dynamic> json) => _$ElasticSearchExplainMetaFromJson(json);

@override@JsonKey(name: "request_id") final  String requestId;
 final  List<dynamic> _warnings;
@override List<dynamic> get warnings {
  if (_warnings is EqualUnmodifiableListView) return _warnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warnings);
}

 final  List<dynamic> _alerts;
@override List<dynamic> get alerts {
  if (_alerts is EqualUnmodifiableListView) return _alerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alerts);
}

@override final  int? precision;
@override final  ElasticSearchExplainEngine? engine;

/// Create a copy of ElasticSearchExplainMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchExplainMetaCopyWith<_ElasticSearchExplainMeta> get copyWith => __$ElasticSearchExplainMetaCopyWithImpl<_ElasticSearchExplainMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSearchExplainMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchExplainMeta&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other._warnings, _warnings)&&const DeepCollectionEquality().equals(other._alerts, _alerts)&&(identical(other.precision, precision) || other.precision == precision)&&(identical(other.engine, engine) || other.engine == engine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,const DeepCollectionEquality().hash(_warnings),const DeepCollectionEquality().hash(_alerts),precision,engine);

@override
String toString() {
  return 'ElasticSearchExplainMeta(requestId: $requestId, warnings: $warnings, alerts: $alerts, precision: $precision, engine: $engine)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchExplainMetaCopyWith<$Res> implements $ElasticSearchExplainMetaCopyWith<$Res> {
  factory _$ElasticSearchExplainMetaCopyWith(_ElasticSearchExplainMeta value, $Res Function(_ElasticSearchExplainMeta) _then) = __$ElasticSearchExplainMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "request_id") String requestId, List<dynamic> warnings, List<dynamic> alerts, int? precision, ElasticSearchExplainEngine? engine
});


@override $ElasticSearchExplainEngineCopyWith<$Res>? get engine;

}
/// @nodoc
class __$ElasticSearchExplainMetaCopyWithImpl<$Res>
    implements _$ElasticSearchExplainMetaCopyWith<$Res> {
  __$ElasticSearchExplainMetaCopyWithImpl(this._self, this._then);

  final _ElasticSearchExplainMeta _self;
  final $Res Function(_ElasticSearchExplainMeta) _then;

/// Create a copy of ElasticSearchExplainMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? warnings = null,Object? alerts = null,Object? precision = freezed,Object? engine = freezed,}) {
  return _then(_ElasticSearchExplainMeta(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,warnings: null == warnings ? _self._warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>,alerts: null == alerts ? _self._alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<dynamic>,precision: freezed == precision ? _self.precision : precision // ignore: cast_nullable_to_non_nullable
as int?,engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as ElasticSearchExplainEngine?,
  ));
}

/// Create a copy of ElasticSearchExplainMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticSearchExplainEngineCopyWith<$Res>? get engine {
    if (_self.engine == null) {
    return null;
  }

  return $ElasticSearchExplainEngineCopyWith<$Res>(_self.engine!, (value) {
    return _then(_self.copyWith(engine: value));
  });
}
}


/// @nodoc
mixin _$ElasticSearchExplainResponse {

 ElasticSearchExplainMeta get meta;@JsonKey(name: "query_string") String get queryString;@_StringDynamicMapConverter()@JsonKey(name: "query_body") Map<String, dynamic> get queryBody;
/// Create a copy of ElasticSearchExplainResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticSearchExplainResponseCopyWith<ElasticSearchExplainResponse> get copyWith => _$ElasticSearchExplainResponseCopyWithImpl<ElasticSearchExplainResponse>(this as ElasticSearchExplainResponse, _$identity);

  /// Serializes this ElasticSearchExplainResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticSearchExplainResponse&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.queryString, queryString) || other.queryString == queryString)&&const DeepCollectionEquality().equals(other.queryBody, queryBody));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,queryString,const DeepCollectionEquality().hash(queryBody));

@override
String toString() {
  return 'ElasticSearchExplainResponse(meta: $meta, queryString: $queryString, queryBody: $queryBody)';
}


}

/// @nodoc
abstract mixin class $ElasticSearchExplainResponseCopyWith<$Res>  {
  factory $ElasticSearchExplainResponseCopyWith(ElasticSearchExplainResponse value, $Res Function(ElasticSearchExplainResponse) _then) = _$ElasticSearchExplainResponseCopyWithImpl;
@useResult
$Res call({
 ElasticSearchExplainMeta meta,@JsonKey(name: "query_string") String queryString,@_StringDynamicMapConverter()@JsonKey(name: "query_body") Map<String, dynamic> queryBody
});


$ElasticSearchExplainMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticSearchExplainResponseCopyWithImpl<$Res>
    implements $ElasticSearchExplainResponseCopyWith<$Res> {
  _$ElasticSearchExplainResponseCopyWithImpl(this._self, this._then);

  final ElasticSearchExplainResponse _self;
  final $Res Function(ElasticSearchExplainResponse) _then;

/// Create a copy of ElasticSearchExplainResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? queryString = null,Object? queryBody = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticSearchExplainMeta,queryString: null == queryString ? _self.queryString : queryString // ignore: cast_nullable_to_non_nullable
as String,queryBody: null == queryBody ? _self.queryBody : queryBody // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of ElasticSearchExplainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticSearchExplainMetaCopyWith<$Res> get meta {
  
  return $ElasticSearchExplainMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticSearchExplainResponse].
extension ElasticSearchExplainResponsePatterns on ElasticSearchExplainResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSearchExplainResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSearchExplainResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSearchExplainResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchExplainResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSearchExplainResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSearchExplainResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticSearchExplainMeta meta, @JsonKey(name: "query_string")  String queryString, @_StringDynamicMapConverter()@JsonKey(name: "query_body")  Map<String, dynamic> queryBody)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSearchExplainResponse() when $default != null:
return $default(_that.meta,_that.queryString,_that.queryBody);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticSearchExplainMeta meta, @JsonKey(name: "query_string")  String queryString, @_StringDynamicMapConverter()@JsonKey(name: "query_body")  Map<String, dynamic> queryBody)  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchExplainResponse():
return $default(_that.meta,_that.queryString,_that.queryBody);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticSearchExplainMeta meta, @JsonKey(name: "query_string")  String queryString, @_StringDynamicMapConverter()@JsonKey(name: "query_body")  Map<String, dynamic> queryBody)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSearchExplainResponse() when $default != null:
return $default(_that.meta,_that.queryString,_that.queryBody);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSearchExplainResponse implements ElasticSearchExplainResponse {
   _ElasticSearchExplainResponse({required this.meta, @JsonKey(name: "query_string") required this.queryString, @_StringDynamicMapConverter()@JsonKey(name: "query_body") required final  Map<String, dynamic> queryBody}): _queryBody = queryBody;
  factory _ElasticSearchExplainResponse.fromJson(Map<String, dynamic> json) => _$ElasticSearchExplainResponseFromJson(json);

@override final  ElasticSearchExplainMeta meta;
@override@JsonKey(name: "query_string") final  String queryString;
 final  Map<String, dynamic> _queryBody;
@override@_StringDynamicMapConverter()@JsonKey(name: "query_body") Map<String, dynamic> get queryBody {
  if (_queryBody is EqualUnmodifiableMapView) return _queryBody;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_queryBody);
}


/// Create a copy of ElasticSearchExplainResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSearchExplainResponseCopyWith<_ElasticSearchExplainResponse> get copyWith => __$ElasticSearchExplainResponseCopyWithImpl<_ElasticSearchExplainResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSearchExplainResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSearchExplainResponse&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.queryString, queryString) || other.queryString == queryString)&&const DeepCollectionEquality().equals(other._queryBody, _queryBody));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,queryString,const DeepCollectionEquality().hash(_queryBody));

@override
String toString() {
  return 'ElasticSearchExplainResponse(meta: $meta, queryString: $queryString, queryBody: $queryBody)';
}


}

/// @nodoc
abstract mixin class _$ElasticSearchExplainResponseCopyWith<$Res> implements $ElasticSearchExplainResponseCopyWith<$Res> {
  factory _$ElasticSearchExplainResponseCopyWith(_ElasticSearchExplainResponse value, $Res Function(_ElasticSearchExplainResponse) _then) = __$ElasticSearchExplainResponseCopyWithImpl;
@override @useResult
$Res call({
 ElasticSearchExplainMeta meta,@JsonKey(name: "query_string") String queryString,@_StringDynamicMapConverter()@JsonKey(name: "query_body") Map<String, dynamic> queryBody
});


@override $ElasticSearchExplainMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticSearchExplainResponseCopyWithImpl<$Res>
    implements _$ElasticSearchExplainResponseCopyWith<$Res> {
  __$ElasticSearchExplainResponseCopyWithImpl(this._self, this._then);

  final _ElasticSearchExplainResponse _self;
  final $Res Function(_ElasticSearchExplainResponse) _then;

/// Create a copy of ElasticSearchExplainResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? queryString = null,Object? queryBody = null,}) {
  return _then(_ElasticSearchExplainResponse(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticSearchExplainMeta,queryString: null == queryString ? _self.queryString : queryString // ignore: cast_nullable_to_non_nullable
as String,queryBody: null == queryBody ? _self._queryBody : queryBody // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of ElasticSearchExplainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticSearchExplainMetaCopyWith<$Res> get meta {
  
  return $ElasticSearchExplainMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticDocumentIndexResult {

@JsonKey(fromJson: _toStringOrEmpty) String get id;@JsonKey(fromJson: _toStringList) List<String> get errors;
/// Create a copy of ElasticDocumentIndexResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticDocumentIndexResultCopyWith<ElasticDocumentIndexResult> get copyWith => _$ElasticDocumentIndexResultCopyWithImpl<ElasticDocumentIndexResult>(this as ElasticDocumentIndexResult, _$identity);

  /// Serializes this ElasticDocumentIndexResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticDocumentIndexResult&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ElasticDocumentIndexResult(id: $id, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ElasticDocumentIndexResultCopyWith<$Res>  {
  factory $ElasticDocumentIndexResultCopyWith(ElasticDocumentIndexResult value, $Res Function(ElasticDocumentIndexResult) _then) = _$ElasticDocumentIndexResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _toStringOrEmpty) String id,@JsonKey(fromJson: _toStringList) List<String> errors
});




}
/// @nodoc
class _$ElasticDocumentIndexResultCopyWithImpl<$Res>
    implements $ElasticDocumentIndexResultCopyWith<$Res> {
  _$ElasticDocumentIndexResultCopyWithImpl(this._self, this._then);

  final ElasticDocumentIndexResult _self;
  final $Res Function(ElasticDocumentIndexResult) _then;

/// Create a copy of ElasticDocumentIndexResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? errors = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticDocumentIndexResult].
extension ElasticDocumentIndexResultPatterns on ElasticDocumentIndexResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticDocumentIndexResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticDocumentIndexResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticDocumentIndexResult value)  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentIndexResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticDocumentIndexResult value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentIndexResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toStringOrEmpty)  String id, @JsonKey(fromJson: _toStringList)  List<String> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticDocumentIndexResult() when $default != null:
return $default(_that.id,_that.errors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toStringOrEmpty)  String id, @JsonKey(fromJson: _toStringList)  List<String> errors)  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentIndexResult():
return $default(_that.id,_that.errors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _toStringOrEmpty)  String id, @JsonKey(fromJson: _toStringList)  List<String> errors)?  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentIndexResult() when $default != null:
return $default(_that.id,_that.errors);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticDocumentIndexResult extends ElasticDocumentIndexResult {
   _ElasticDocumentIndexResult({@JsonKey(fromJson: _toStringOrEmpty) required this.id, @JsonKey(fromJson: _toStringList) final  List<String> errors = const <String>[]}): _errors = errors,super._();
  factory _ElasticDocumentIndexResult.fromJson(Map<String, dynamic> json) => _$ElasticDocumentIndexResultFromJson(json);

@override@JsonKey(fromJson: _toStringOrEmpty) final  String id;
 final  List<String> _errors;
@override@JsonKey(fromJson: _toStringList) List<String> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ElasticDocumentIndexResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticDocumentIndexResultCopyWith<_ElasticDocumentIndexResult> get copyWith => __$ElasticDocumentIndexResultCopyWithImpl<_ElasticDocumentIndexResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticDocumentIndexResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticDocumentIndexResult&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ElasticDocumentIndexResult(id: $id, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ElasticDocumentIndexResultCopyWith<$Res> implements $ElasticDocumentIndexResultCopyWith<$Res> {
  factory _$ElasticDocumentIndexResultCopyWith(_ElasticDocumentIndexResult value, $Res Function(_ElasticDocumentIndexResult) _then) = __$ElasticDocumentIndexResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _toStringOrEmpty) String id,@JsonKey(fromJson: _toStringList) List<String> errors
});




}
/// @nodoc
class __$ElasticDocumentIndexResultCopyWithImpl<$Res>
    implements _$ElasticDocumentIndexResultCopyWith<$Res> {
  __$ElasticDocumentIndexResultCopyWithImpl(this._self, this._then);

  final _ElasticDocumentIndexResult _self;
  final $Res Function(_ElasticDocumentIndexResult) _then;

/// Create a copy of ElasticDocumentIndexResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? errors = null,}) {
  return _then(_ElasticDocumentIndexResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ElasticDocumentDeleteResult {

@JsonKey(fromJson: _toStringOrEmpty) String get id;@JsonKey(fromJson: _toBool) bool get deleted;
/// Create a copy of ElasticDocumentDeleteResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticDocumentDeleteResultCopyWith<ElasticDocumentDeleteResult> get copyWith => _$ElasticDocumentDeleteResultCopyWithImpl<ElasticDocumentDeleteResult>(this as ElasticDocumentDeleteResult, _$identity);

  /// Serializes this ElasticDocumentDeleteResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticDocumentDeleteResult&&(identical(other.id, id) || other.id == id)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deleted);

@override
String toString() {
  return 'ElasticDocumentDeleteResult(id: $id, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ElasticDocumentDeleteResultCopyWith<$Res>  {
  factory $ElasticDocumentDeleteResultCopyWith(ElasticDocumentDeleteResult value, $Res Function(ElasticDocumentDeleteResult) _then) = _$ElasticDocumentDeleteResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _toStringOrEmpty) String id,@JsonKey(fromJson: _toBool) bool deleted
});




}
/// @nodoc
class _$ElasticDocumentDeleteResultCopyWithImpl<$Res>
    implements $ElasticDocumentDeleteResultCopyWith<$Res> {
  _$ElasticDocumentDeleteResultCopyWithImpl(this._self, this._then);

  final ElasticDocumentDeleteResult _self;
  final $Res Function(ElasticDocumentDeleteResult) _then;

/// Create a copy of ElasticDocumentDeleteResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticDocumentDeleteResult].
extension ElasticDocumentDeleteResultPatterns on ElasticDocumentDeleteResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticDocumentDeleteResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticDocumentDeleteResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticDocumentDeleteResult value)  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentDeleteResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticDocumentDeleteResult value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentDeleteResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toStringOrEmpty)  String id, @JsonKey(fromJson: _toBool)  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticDocumentDeleteResult() when $default != null:
return $default(_that.id,_that.deleted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toStringOrEmpty)  String id, @JsonKey(fromJson: _toBool)  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentDeleteResult():
return $default(_that.id,_that.deleted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _toStringOrEmpty)  String id, @JsonKey(fromJson: _toBool)  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentDeleteResult() when $default != null:
return $default(_that.id,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticDocumentDeleteResult extends ElasticDocumentDeleteResult {
   _ElasticDocumentDeleteResult({@JsonKey(fromJson: _toStringOrEmpty) required this.id, @JsonKey(fromJson: _toBool) this.deleted = false}): super._();
  factory _ElasticDocumentDeleteResult.fromJson(Map<String, dynamic> json) => _$ElasticDocumentDeleteResultFromJson(json);

@override@JsonKey(fromJson: _toStringOrEmpty) final  String id;
@override@JsonKey(fromJson: _toBool) final  bool deleted;

/// Create a copy of ElasticDocumentDeleteResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticDocumentDeleteResultCopyWith<_ElasticDocumentDeleteResult> get copyWith => __$ElasticDocumentDeleteResultCopyWithImpl<_ElasticDocumentDeleteResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticDocumentDeleteResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticDocumentDeleteResult&&(identical(other.id, id) || other.id == id)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deleted);

@override
String toString() {
  return 'ElasticDocumentDeleteResult(id: $id, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ElasticDocumentDeleteResultCopyWith<$Res> implements $ElasticDocumentDeleteResultCopyWith<$Res> {
  factory _$ElasticDocumentDeleteResultCopyWith(_ElasticDocumentDeleteResult value, $Res Function(_ElasticDocumentDeleteResult) _then) = __$ElasticDocumentDeleteResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _toStringOrEmpty) String id,@JsonKey(fromJson: _toBool) bool deleted
});




}
/// @nodoc
class __$ElasticDocumentDeleteResultCopyWithImpl<$Res>
    implements _$ElasticDocumentDeleteResultCopyWith<$Res> {
  __$ElasticDocumentDeleteResultCopyWithImpl(this._self, this._then);

  final _ElasticDocumentDeleteResult _self;
  final $Res Function(_ElasticDocumentDeleteResult) _then;

/// Create a copy of ElasticDocumentDeleteResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deleted = null,}) {
  return _then(_ElasticDocumentDeleteResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ElasticDocumentsListMeta {

 ElasticResponseMetaPage get page;
/// Create a copy of ElasticDocumentsListMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticDocumentsListMetaCopyWith<ElasticDocumentsListMeta> get copyWith => _$ElasticDocumentsListMetaCopyWithImpl<ElasticDocumentsListMeta>(this as ElasticDocumentsListMeta, _$identity);

  /// Serializes this ElasticDocumentsListMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticDocumentsListMeta&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ElasticDocumentsListMeta(page: $page)';
}


}

/// @nodoc
abstract mixin class $ElasticDocumentsListMetaCopyWith<$Res>  {
  factory $ElasticDocumentsListMetaCopyWith(ElasticDocumentsListMeta value, $Res Function(ElasticDocumentsListMeta) _then) = _$ElasticDocumentsListMetaCopyWithImpl;
@useResult
$Res call({
 ElasticResponseMetaPage page
});


$ElasticResponseMetaPageCopyWith<$Res> get page;

}
/// @nodoc
class _$ElasticDocumentsListMetaCopyWithImpl<$Res>
    implements $ElasticDocumentsListMetaCopyWith<$Res> {
  _$ElasticDocumentsListMetaCopyWithImpl(this._self, this._then);

  final ElasticDocumentsListMeta _self;
  final $Res Function(ElasticDocumentsListMeta) _then;

/// Create a copy of ElasticDocumentsListMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticResponseMetaPage,
  ));
}
/// Create a copy of ElasticDocumentsListMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResponseMetaPageCopyWith<$Res> get page {
  
  return $ElasticResponseMetaPageCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticDocumentsListMeta].
extension ElasticDocumentsListMetaPatterns on ElasticDocumentsListMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticDocumentsListMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticDocumentsListMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticDocumentsListMeta value)  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentsListMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticDocumentsListMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentsListMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticResponseMetaPage page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticDocumentsListMeta() when $default != null:
return $default(_that.page);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticResponseMetaPage page)  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentsListMeta():
return $default(_that.page);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticResponseMetaPage page)?  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentsListMeta() when $default != null:
return $default(_that.page);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticDocumentsListMeta implements ElasticDocumentsListMeta {
   _ElasticDocumentsListMeta({required this.page});
  factory _ElasticDocumentsListMeta.fromJson(Map<String, dynamic> json) => _$ElasticDocumentsListMetaFromJson(json);

@override final  ElasticResponseMetaPage page;

/// Create a copy of ElasticDocumentsListMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticDocumentsListMetaCopyWith<_ElasticDocumentsListMeta> get copyWith => __$ElasticDocumentsListMetaCopyWithImpl<_ElasticDocumentsListMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticDocumentsListMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticDocumentsListMeta&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ElasticDocumentsListMeta(page: $page)';
}


}

/// @nodoc
abstract mixin class _$ElasticDocumentsListMetaCopyWith<$Res> implements $ElasticDocumentsListMetaCopyWith<$Res> {
  factory _$ElasticDocumentsListMetaCopyWith(_ElasticDocumentsListMeta value, $Res Function(_ElasticDocumentsListMeta) _then) = __$ElasticDocumentsListMetaCopyWithImpl;
@override @useResult
$Res call({
 ElasticResponseMetaPage page
});


@override $ElasticResponseMetaPageCopyWith<$Res> get page;

}
/// @nodoc
class __$ElasticDocumentsListMetaCopyWithImpl<$Res>
    implements _$ElasticDocumentsListMetaCopyWith<$Res> {
  __$ElasticDocumentsListMetaCopyWithImpl(this._self, this._then);

  final _ElasticDocumentsListMeta _self;
  final $Res Function(_ElasticDocumentsListMeta) _then;

/// Create a copy of ElasticDocumentsListMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_ElasticDocumentsListMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as ElasticResponseMetaPage,
  ));
}

/// Create a copy of ElasticDocumentsListMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResponseMetaPageCopyWith<$Res> get page {
  
  return $ElasticResponseMetaPageCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// @nodoc
mixin _$ElasticDocumentsListResponse {

 ElasticDocumentsListMeta get meta;@_StringDynamicMapListConverter() List<Map<String, dynamic>> get results;
/// Create a copy of ElasticDocumentsListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticDocumentsListResponseCopyWith<ElasticDocumentsListResponse> get copyWith => _$ElasticDocumentsListResponseCopyWithImpl<ElasticDocumentsListResponse>(this as ElasticDocumentsListResponse, _$identity);

  /// Serializes this ElasticDocumentsListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticDocumentsListResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ElasticDocumentsListResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class $ElasticDocumentsListResponseCopyWith<$Res>  {
  factory $ElasticDocumentsListResponseCopyWith(ElasticDocumentsListResponse value, $Res Function(ElasticDocumentsListResponse) _then) = _$ElasticDocumentsListResponseCopyWithImpl;
@useResult
$Res call({
 ElasticDocumentsListMeta meta,@_StringDynamicMapListConverter() List<Map<String, dynamic>> results
});


$ElasticDocumentsListMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticDocumentsListResponseCopyWithImpl<$Res>
    implements $ElasticDocumentsListResponseCopyWith<$Res> {
  _$ElasticDocumentsListResponseCopyWithImpl(this._self, this._then);

  final ElasticDocumentsListResponse _self;
  final $Res Function(ElasticDocumentsListResponse) _then;

/// Create a copy of ElasticDocumentsListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticDocumentsListMeta,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}
/// Create a copy of ElasticDocumentsListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticDocumentsListMetaCopyWith<$Res> get meta {
  
  return $ElasticDocumentsListMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticDocumentsListResponse].
extension ElasticDocumentsListResponsePatterns on ElasticDocumentsListResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticDocumentsListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticDocumentsListResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticDocumentsListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentsListResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticDocumentsListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticDocumentsListResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticDocumentsListMeta meta, @_StringDynamicMapListConverter()  List<Map<String, dynamic>> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticDocumentsListResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticDocumentsListMeta meta, @_StringDynamicMapListConverter()  List<Map<String, dynamic>> results)  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentsListResponse():
return $default(_that.meta,_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticDocumentsListMeta meta, @_StringDynamicMapListConverter()  List<Map<String, dynamic>> results)?  $default,) {final _that = this;
switch (_that) {
case _ElasticDocumentsListResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticDocumentsListResponse extends ElasticDocumentsListResponse {
   _ElasticDocumentsListResponse({required this.meta, @_StringDynamicMapListConverter() required final  List<Map<String, dynamic>> results}): _results = results,super._();
  factory _ElasticDocumentsListResponse.fromJson(Map<String, dynamic> json) => _$ElasticDocumentsListResponseFromJson(json);

@override final  ElasticDocumentsListMeta meta;
 final  List<Map<String, dynamic>> _results;
@override@_StringDynamicMapListConverter() List<Map<String, dynamic>> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ElasticDocumentsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticDocumentsListResponseCopyWith<_ElasticDocumentsListResponse> get copyWith => __$ElasticDocumentsListResponseCopyWithImpl<_ElasticDocumentsListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticDocumentsListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticDocumentsListResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ElasticDocumentsListResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ElasticDocumentsListResponseCopyWith<$Res> implements $ElasticDocumentsListResponseCopyWith<$Res> {
  factory _$ElasticDocumentsListResponseCopyWith(_ElasticDocumentsListResponse value, $Res Function(_ElasticDocumentsListResponse) _then) = __$ElasticDocumentsListResponseCopyWithImpl;
@override @useResult
$Res call({
 ElasticDocumentsListMeta meta,@_StringDynamicMapListConverter() List<Map<String, dynamic>> results
});


@override $ElasticDocumentsListMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticDocumentsListResponseCopyWithImpl<$Res>
    implements _$ElasticDocumentsListResponseCopyWith<$Res> {
  __$ElasticDocumentsListResponseCopyWithImpl(this._self, this._then);

  final _ElasticDocumentsListResponse _self;
  final $Res Function(_ElasticDocumentsListResponse) _then;

/// Create a copy of ElasticDocumentsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_ElasticDocumentsListResponse(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticDocumentsListMeta,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

/// Create a copy of ElasticDocumentsListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticDocumentsListMetaCopyWith<$Res> get meta {
  
  return $ElasticDocumentsListMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticEngineSummary {

 String get name; String? get type; String? get language;@JsonKey(name: "document_count", fromJson: _toNullableInt) int? get documentCount;
/// Create a copy of ElasticEngineSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticEngineSummaryCopyWith<ElasticEngineSummary> get copyWith => _$ElasticEngineSummaryCopyWithImpl<ElasticEngineSummary>(this as ElasticEngineSummary, _$identity);

  /// Serializes this ElasticEngineSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticEngineSummary&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.language, language) || other.language == language)&&(identical(other.documentCount, documentCount) || other.documentCount == documentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,language,documentCount);

@override
String toString() {
  return 'ElasticEngineSummary(name: $name, type: $type, language: $language, documentCount: $documentCount)';
}


}

/// @nodoc
abstract mixin class $ElasticEngineSummaryCopyWith<$Res>  {
  factory $ElasticEngineSummaryCopyWith(ElasticEngineSummary value, $Res Function(ElasticEngineSummary) _then) = _$ElasticEngineSummaryCopyWithImpl;
@useResult
$Res call({
 String name, String? type, String? language,@JsonKey(name: "document_count", fromJson: _toNullableInt) int? documentCount
});




}
/// @nodoc
class _$ElasticEngineSummaryCopyWithImpl<$Res>
    implements $ElasticEngineSummaryCopyWith<$Res> {
  _$ElasticEngineSummaryCopyWithImpl(this._self, this._then);

  final ElasticEngineSummary _self;
  final $Res Function(ElasticEngineSummary) _then;

/// Create a copy of ElasticEngineSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = freezed,Object? language = freezed,Object? documentCount = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,documentCount: freezed == documentCount ? _self.documentCount : documentCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticEngineSummary].
extension ElasticEngineSummaryPatterns on ElasticEngineSummary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticEngineSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticEngineSummary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticEngineSummary value)  $default,){
final _that = this;
switch (_that) {
case _ElasticEngineSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticEngineSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticEngineSummary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? type,  String? language, @JsonKey(name: "document_count", fromJson: _toNullableInt)  int? documentCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticEngineSummary() when $default != null:
return $default(_that.name,_that.type,_that.language,_that.documentCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? type,  String? language, @JsonKey(name: "document_count", fromJson: _toNullableInt)  int? documentCount)  $default,) {final _that = this;
switch (_that) {
case _ElasticEngineSummary():
return $default(_that.name,_that.type,_that.language,_that.documentCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? type,  String? language, @JsonKey(name: "document_count", fromJson: _toNullableInt)  int? documentCount)?  $default,) {final _that = this;
switch (_that) {
case _ElasticEngineSummary() when $default != null:
return $default(_that.name,_that.type,_that.language,_that.documentCount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticEngineSummary implements ElasticEngineSummary {
   _ElasticEngineSummary({required this.name, this.type, this.language, @JsonKey(name: "document_count", fromJson: _toNullableInt) this.documentCount});
  factory _ElasticEngineSummary.fromJson(Map<String, dynamic> json) => _$ElasticEngineSummaryFromJson(json);

@override final  String name;
@override final  String? type;
@override final  String? language;
@override@JsonKey(name: "document_count", fromJson: _toNullableInt) final  int? documentCount;

/// Create a copy of ElasticEngineSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticEngineSummaryCopyWith<_ElasticEngineSummary> get copyWith => __$ElasticEngineSummaryCopyWithImpl<_ElasticEngineSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticEngineSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticEngineSummary&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.language, language) || other.language == language)&&(identical(other.documentCount, documentCount) || other.documentCount == documentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,language,documentCount);

@override
String toString() {
  return 'ElasticEngineSummary(name: $name, type: $type, language: $language, documentCount: $documentCount)';
}


}

/// @nodoc
abstract mixin class _$ElasticEngineSummaryCopyWith<$Res> implements $ElasticEngineSummaryCopyWith<$Res> {
  factory _$ElasticEngineSummaryCopyWith(_ElasticEngineSummary value, $Res Function(_ElasticEngineSummary) _then) = __$ElasticEngineSummaryCopyWithImpl;
@override @useResult
$Res call({
 String name, String? type, String? language,@JsonKey(name: "document_count", fromJson: _toNullableInt) int? documentCount
});




}
/// @nodoc
class __$ElasticEngineSummaryCopyWithImpl<$Res>
    implements _$ElasticEngineSummaryCopyWith<$Res> {
  __$ElasticEngineSummaryCopyWithImpl(this._self, this._then);

  final _ElasticEngineSummary _self;
  final $Res Function(_ElasticEngineSummary) _then;

/// Create a copy of ElasticEngineSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = freezed,Object? language = freezed,Object? documentCount = freezed,}) {
  return _then(_ElasticEngineSummary(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,documentCount: freezed == documentCount ? _self.documentCount : documentCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ElasticEnginesResponse {

 ElasticDocumentsListMeta get meta; List<ElasticEngineSummary> get results;
/// Create a copy of ElasticEnginesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticEnginesResponseCopyWith<ElasticEnginesResponse> get copyWith => _$ElasticEnginesResponseCopyWithImpl<ElasticEnginesResponse>(this as ElasticEnginesResponse, _$identity);

  /// Serializes this ElasticEnginesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticEnginesResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ElasticEnginesResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class $ElasticEnginesResponseCopyWith<$Res>  {
  factory $ElasticEnginesResponseCopyWith(ElasticEnginesResponse value, $Res Function(ElasticEnginesResponse) _then) = _$ElasticEnginesResponseCopyWithImpl;
@useResult
$Res call({
 ElasticDocumentsListMeta meta, List<ElasticEngineSummary> results
});


$ElasticDocumentsListMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticEnginesResponseCopyWithImpl<$Res>
    implements $ElasticEnginesResponseCopyWith<$Res> {
  _$ElasticEnginesResponseCopyWithImpl(this._self, this._then);

  final ElasticEnginesResponse _self;
  final $Res Function(ElasticEnginesResponse) _then;

/// Create a copy of ElasticEnginesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticDocumentsListMeta,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticEngineSummary>,
  ));
}
/// Create a copy of ElasticEnginesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticDocumentsListMetaCopyWith<$Res> get meta {
  
  return $ElasticDocumentsListMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticEnginesResponse].
extension ElasticEnginesResponsePatterns on ElasticEnginesResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticEnginesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticEnginesResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticEnginesResponse value)  $default,){
final _that = this;
switch (_that) {
case _ElasticEnginesResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticEnginesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticEnginesResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ElasticDocumentsListMeta meta,  List<ElasticEngineSummary> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticEnginesResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ElasticDocumentsListMeta meta,  List<ElasticEngineSummary> results)  $default,) {final _that = this;
switch (_that) {
case _ElasticEnginesResponse():
return $default(_that.meta,_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ElasticDocumentsListMeta meta,  List<ElasticEngineSummary> results)?  $default,) {final _that = this;
switch (_that) {
case _ElasticEnginesResponse() when $default != null:
return $default(_that.meta,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticEnginesResponse extends ElasticEnginesResponse {
   _ElasticEnginesResponse({required this.meta, required final  List<ElasticEngineSummary> results}): _results = results,super._();
  factory _ElasticEnginesResponse.fromJson(Map<String, dynamic> json) => _$ElasticEnginesResponseFromJson(json);

@override final  ElasticDocumentsListMeta meta;
 final  List<ElasticEngineSummary> _results;
@override List<ElasticEngineSummary> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ElasticEnginesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticEnginesResponseCopyWith<_ElasticEnginesResponse> get copyWith => __$ElasticEnginesResponseCopyWithImpl<_ElasticEnginesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticEnginesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticEnginesResponse&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ElasticEnginesResponse(meta: $meta, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ElasticEnginesResponseCopyWith<$Res> implements $ElasticEnginesResponseCopyWith<$Res> {
  factory _$ElasticEnginesResponseCopyWith(_ElasticEnginesResponse value, $Res Function(_ElasticEnginesResponse) _then) = __$ElasticEnginesResponseCopyWithImpl;
@override @useResult
$Res call({
 ElasticDocumentsListMeta meta, List<ElasticEngineSummary> results
});


@override $ElasticDocumentsListMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticEnginesResponseCopyWithImpl<$Res>
    implements _$ElasticEnginesResponseCopyWith<$Res> {
  __$ElasticEnginesResponseCopyWithImpl(this._self, this._then);

  final _ElasticEnginesResponse _self;
  final $Res Function(_ElasticEnginesResponse) _then;

/// Create a copy of ElasticEnginesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? results = null,}) {
  return _then(_ElasticEnginesResponse(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticDocumentsListMeta,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ElasticEngineSummary>,
  ));
}

/// Create a copy of ElasticEnginesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticDocumentsListMetaCopyWith<$Res> get meta {
  
  return $ElasticDocumentsListMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticResultMeta {

/// The relevance of the result
 double? get score;/// The original document ID returned when searching a meta-engine.
 String? get id;/// The source engine name returned when searching a meta-engine.
 String? get engine;
/// Create a copy of ElasticResultMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticResultMetaCopyWith<ElasticResultMeta> get copyWith => _$ElasticResultMetaCopyWithImpl<ElasticResultMeta>(this as ElasticResultMeta, _$identity);

  /// Serializes this ElasticResultMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticResultMeta&&(identical(other.score, score) || other.score == score)&&(identical(other.id, id) || other.id == id)&&(identical(other.engine, engine) || other.engine == engine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,id,engine);

@override
String toString() {
  return 'ElasticResultMeta(score: $score, id: $id, engine: $engine)';
}


}

/// @nodoc
abstract mixin class $ElasticResultMetaCopyWith<$Res>  {
  factory $ElasticResultMetaCopyWith(ElasticResultMeta value, $Res Function(ElasticResultMeta) _then) = _$ElasticResultMetaCopyWithImpl;
@useResult
$Res call({
 double? score, String? id, String? engine
});




}
/// @nodoc
class _$ElasticResultMetaCopyWithImpl<$Res>
    implements $ElasticResultMetaCopyWith<$Res> {
  _$ElasticResultMetaCopyWithImpl(this._self, this._then);

  final ElasticResultMeta _self;
  final $Res Function(ElasticResultMeta) _then;

/// Create a copy of ElasticResultMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = freezed,Object? id = freezed,Object? engine = freezed,}) {
  return _then(_self.copyWith(
score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticResultMeta].
extension ElasticResultMetaPatterns on ElasticResultMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticResultMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticResultMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticResultMeta value)  $default,){
final _that = this;
switch (_that) {
case _ElasticResultMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticResultMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticResultMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? score,  String? id,  String? engine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticResultMeta() when $default != null:
return $default(_that.score,_that.id,_that.engine);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? score,  String? id,  String? engine)  $default,) {final _that = this;
switch (_that) {
case _ElasticResultMeta():
return $default(_that.score,_that.id,_that.engine);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? score,  String? id,  String? engine)?  $default,) {final _that = this;
switch (_that) {
case _ElasticResultMeta() when $default != null:
return $default(_that.score,_that.id,_that.engine);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticResultMeta implements ElasticResultMeta {
   _ElasticResultMeta({this.score, this.id, this.engine});
  factory _ElasticResultMeta.fromJson(Map<String, dynamic> json) => _$ElasticResultMetaFromJson(json);

/// The relevance of the result
@override final  double? score;
/// The original document ID returned when searching a meta-engine.
@override final  String? id;
/// The source engine name returned when searching a meta-engine.
@override final  String? engine;

/// Create a copy of ElasticResultMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResultMetaCopyWith<_ElasticResultMeta> get copyWith => __$ElasticResultMetaCopyWithImpl<_ElasticResultMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticResultMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResultMeta&&(identical(other.score, score) || other.score == score)&&(identical(other.id, id) || other.id == id)&&(identical(other.engine, engine) || other.engine == engine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,id,engine);

@override
String toString() {
  return 'ElasticResultMeta(score: $score, id: $id, engine: $engine)';
}


}

/// @nodoc
abstract mixin class _$ElasticResultMetaCopyWith<$Res> implements $ElasticResultMetaCopyWith<$Res> {
  factory _$ElasticResultMetaCopyWith(_ElasticResultMeta value, $Res Function(_ElasticResultMeta) _then) = __$ElasticResultMetaCopyWithImpl;
@override @useResult
$Res call({
 double? score, String? id, String? engine
});




}
/// @nodoc
class __$ElasticResultMetaCopyWithImpl<$Res>
    implements _$ElasticResultMetaCopyWith<$Res> {
  __$ElasticResultMetaCopyWithImpl(this._self, this._then);

  final _ElasticResultMeta _self;
  final $Res Function(_ElasticResultMeta) _then;

/// Create a copy of ElasticResultMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = freezed,Object? id = freezed,Object? engine = freezed,}) {
  return _then(_ElasticResultMeta(
score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ElasticResult {

/// A map of the raw data of the document, containing the fields
/// requested in the [ElasticResultField] passed to the query
///
/// You must handle the result of this [Map] on your side, please check
/// the example of the package to learn more about this.
 Map<String, dynamic>? get data;/// A map of the snippets, please check the documentation of
/// [ElasticResultSnippet] to learn more.
 Map<String, ElasticResultSnippet>? get snippets;/// An object containing information about a given result
@JsonKey(name: "_meta") ElasticResultMeta get meta;/// An array of the [ElasticResult] related to this result
/// if a group has been set on the query
@JsonKey(name: "_group") List<ElasticResult>? get group;/// The value on which these elements have been grouped
/// if a group has been set on the query
@JsonKey(name: "_group_key") String? get groupKey;
/// Create a copy of ElasticResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticResultCopyWith<ElasticResult> get copyWith => _$ElasticResultCopyWithImpl<ElasticResult>(this as ElasticResult, _$identity);

  /// Serializes this ElasticResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticResult&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.snippets, snippets)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.group, group)&&(identical(other.groupKey, groupKey) || other.groupKey == groupKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(snippets),meta,const DeepCollectionEquality().hash(group),groupKey);

@override
String toString() {
  return 'ElasticResult(data: $data, snippets: $snippets, meta: $meta, group: $group, groupKey: $groupKey)';
}


}

/// @nodoc
abstract mixin class $ElasticResultCopyWith<$Res>  {
  factory $ElasticResultCopyWith(ElasticResult value, $Res Function(ElasticResult) _then) = _$ElasticResultCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? data, Map<String, ElasticResultSnippet>? snippets,@JsonKey(name: "_meta") ElasticResultMeta meta,@JsonKey(name: "_group") List<ElasticResult>? group,@JsonKey(name: "_group_key") String? groupKey
});


$ElasticResultMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ElasticResultCopyWithImpl<$Res>
    implements $ElasticResultCopyWith<$Res> {
  _$ElasticResultCopyWithImpl(this._self, this._then);

  final ElasticResult _self;
  final $Res Function(ElasticResult) _then;

/// Create a copy of ElasticResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? snippets = freezed,Object? meta = null,Object? group = freezed,Object? groupKey = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,snippets: freezed == snippets ? _self.snippets : snippets // ignore: cast_nullable_to_non_nullable
as Map<String, ElasticResultSnippet>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticResultMeta,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as List<ElasticResult>?,groupKey: freezed == groupKey ? _self.groupKey : groupKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ElasticResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResultMetaCopyWith<$Res> get meta {
  
  return $ElasticResultMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ElasticResult].
extension ElasticResultPatterns on ElasticResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticResult value)  $default,){
final _that = this;
switch (_that) {
case _ElasticResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticResult value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? data,  Map<String, ElasticResultSnippet>? snippets, @JsonKey(name: "_meta")  ElasticResultMeta meta, @JsonKey(name: "_group")  List<ElasticResult>? group, @JsonKey(name: "_group_key")  String? groupKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticResult() when $default != null:
return $default(_that.data,_that.snippets,_that.meta,_that.group,_that.groupKey);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? data,  Map<String, ElasticResultSnippet>? snippets, @JsonKey(name: "_meta")  ElasticResultMeta meta, @JsonKey(name: "_group")  List<ElasticResult>? group, @JsonKey(name: "_group_key")  String? groupKey)  $default,) {final _that = this;
switch (_that) {
case _ElasticResult():
return $default(_that.data,_that.snippets,_that.meta,_that.group,_that.groupKey);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? data,  Map<String, ElasticResultSnippet>? snippets, @JsonKey(name: "_meta")  ElasticResultMeta meta, @JsonKey(name: "_group")  List<ElasticResult>? group, @JsonKey(name: "_group_key")  String? groupKey)?  $default,) {final _that = this;
switch (_that) {
case _ElasticResult() when $default != null:
return $default(_that.data,_that.snippets,_that.meta,_that.group,_that.groupKey);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticResult extends ElasticResult {
   _ElasticResult({final  Map<String, dynamic>? data, final  Map<String, ElasticResultSnippet>? snippets, @JsonKey(name: "_meta") required this.meta, @JsonKey(name: "_group") final  List<ElasticResult>? group, @JsonKey(name: "_group_key") this.groupKey}): _data = data,_snippets = snippets,_group = group,super._();
  factory _ElasticResult.fromJson(Map<String, dynamic> json) => _$ElasticResultFromJson(json);

/// A map of the raw data of the document, containing the fields
/// requested in the [ElasticResultField] passed to the query
///
/// You must handle the result of this [Map] on your side, please check
/// the example of the package to learn more about this.
 final  Map<String, dynamic>? _data;
/// A map of the raw data of the document, containing the fields
/// requested in the [ElasticResultField] passed to the query
///
/// You must handle the result of this [Map] on your side, please check
/// the example of the package to learn more about this.
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// A map of the snippets, please check the documentation of
/// [ElasticResultSnippet] to learn more.
 final  Map<String, ElasticResultSnippet>? _snippets;
/// A map of the snippets, please check the documentation of
/// [ElasticResultSnippet] to learn more.
@override Map<String, ElasticResultSnippet>? get snippets {
  final value = _snippets;
  if (value == null) return null;
  if (_snippets is EqualUnmodifiableMapView) return _snippets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// An object containing information about a given result
@override@JsonKey(name: "_meta") final  ElasticResultMeta meta;
/// An array of the [ElasticResult] related to this result
/// if a group has been set on the query
 final  List<ElasticResult>? _group;
/// An array of the [ElasticResult] related to this result
/// if a group has been set on the query
@override@JsonKey(name: "_group") List<ElasticResult>? get group {
  final value = _group;
  if (value == null) return null;
  if (_group is EqualUnmodifiableListView) return _group;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// The value on which these elements have been grouped
/// if a group has been set on the query
@override@JsonKey(name: "_group_key") final  String? groupKey;

/// Create a copy of ElasticResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResultCopyWith<_ElasticResult> get copyWith => __$ElasticResultCopyWithImpl<_ElasticResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResult&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._snippets, _snippets)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._group, _group)&&(identical(other.groupKey, groupKey) || other.groupKey == groupKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_snippets),meta,const DeepCollectionEquality().hash(_group),groupKey);

@override
String toString() {
  return 'ElasticResult(data: $data, snippets: $snippets, meta: $meta, group: $group, groupKey: $groupKey)';
}


}

/// @nodoc
abstract mixin class _$ElasticResultCopyWith<$Res> implements $ElasticResultCopyWith<$Res> {
  factory _$ElasticResultCopyWith(_ElasticResult value, $Res Function(_ElasticResult) _then) = __$ElasticResultCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? data, Map<String, ElasticResultSnippet>? snippets,@JsonKey(name: "_meta") ElasticResultMeta meta,@JsonKey(name: "_group") List<ElasticResult>? group,@JsonKey(name: "_group_key") String? groupKey
});


@override $ElasticResultMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ElasticResultCopyWithImpl<$Res>
    implements _$ElasticResultCopyWith<$Res> {
  __$ElasticResultCopyWithImpl(this._self, this._then);

  final _ElasticResult _self;
  final $Res Function(_ElasticResult) _then;

/// Create a copy of ElasticResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? snippets = freezed,Object? meta = null,Object? group = freezed,Object? groupKey = freezed,}) {
  return _then(_ElasticResult(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,snippets: freezed == snippets ? _self._snippets : snippets // ignore: cast_nullable_to_non_nullable
as Map<String, ElasticResultSnippet>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ElasticResultMeta,group: freezed == group ? _self._group : group // ignore: cast_nullable_to_non_nullable
as List<ElasticResult>?,groupKey: freezed == groupKey ? _self.groupKey : groupKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ElasticResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ElasticResultMetaCopyWith<$Res> get meta {
  
  return $ElasticResultMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ElasticResultSnippet {

/// The full snippet, matching the size provided in the [ElasticResultField]
/// passed to the query.
 String get fullText;/// The snippet splitted in parts around the matched query.
/// For example, if the document contains the string "The weather is beautiful in Florida today"
/// and your query is "beautiful", this array will contain:
/// "The weather is ", "beautiful", " in Florida today".
/// This feature intends to build [RichText] on your app to highlight the query
/// in the result.
 List<String> get textParts;/// The words matching the query. They can be many because even if you are querying
/// something like "car", the result can also contain "cars". So we need to
/// return all the words Elastic decided to match in order to highlight all the matching words.
 List<String> get highlights;
/// Create a copy of ElasticResultSnippet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticResultSnippetCopyWith<ElasticResultSnippet> get copyWith => _$ElasticResultSnippetCopyWithImpl<ElasticResultSnippet>(this as ElasticResultSnippet, _$identity);

  /// Serializes this ElasticResultSnippet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticResultSnippet&&(identical(other.fullText, fullText) || other.fullText == fullText)&&const DeepCollectionEquality().equals(other.textParts, textParts)&&const DeepCollectionEquality().equals(other.highlights, highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullText,const DeepCollectionEquality().hash(textParts),const DeepCollectionEquality().hash(highlights));

@override
String toString() {
  return 'ElasticResultSnippet(fullText: $fullText, textParts: $textParts, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $ElasticResultSnippetCopyWith<$Res>  {
  factory $ElasticResultSnippetCopyWith(ElasticResultSnippet value, $Res Function(ElasticResultSnippet) _then) = _$ElasticResultSnippetCopyWithImpl;
@useResult
$Res call({
 String fullText, List<String> textParts, List<String> highlights
});




}
/// @nodoc
class _$ElasticResultSnippetCopyWithImpl<$Res>
    implements $ElasticResultSnippetCopyWith<$Res> {
  _$ElasticResultSnippetCopyWithImpl(this._self, this._then);

  final ElasticResultSnippet _self;
  final $Res Function(ElasticResultSnippet) _then;

/// Create a copy of ElasticResultSnippet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullText = null,Object? textParts = null,Object? highlights = null,}) {
  return _then(_self.copyWith(
fullText: null == fullText ? _self.fullText : fullText // ignore: cast_nullable_to_non_nullable
as String,textParts: null == textParts ? _self.textParts : textParts // ignore: cast_nullable_to_non_nullable
as List<String>,highlights: null == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticResultSnippet].
extension ElasticResultSnippetPatterns on ElasticResultSnippet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticResultSnippet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticResultSnippet() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticResultSnippet value)  $default,){
final _that = this;
switch (_that) {
case _ElasticResultSnippet():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticResultSnippet value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticResultSnippet() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullText,  List<String> textParts,  List<String> highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticResultSnippet() when $default != null:
return $default(_that.fullText,_that.textParts,_that.highlights);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullText,  List<String> textParts,  List<String> highlights)  $default,) {final _that = this;
switch (_that) {
case _ElasticResultSnippet():
return $default(_that.fullText,_that.textParts,_that.highlights);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullText,  List<String> textParts,  List<String> highlights)?  $default,) {final _that = this;
switch (_that) {
case _ElasticResultSnippet() when $default != null:
return $default(_that.fullText,_that.textParts,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticResultSnippet implements ElasticResultSnippet {
   _ElasticResultSnippet({required this.fullText, required final  List<String> textParts, required final  List<String> highlights}): _textParts = textParts,_highlights = highlights;
  factory _ElasticResultSnippet.fromJson(Map<String, dynamic> json) => _$ElasticResultSnippetFromJson(json);

/// The full snippet, matching the size provided in the [ElasticResultField]
/// passed to the query.
@override final  String fullText;
/// The snippet splitted in parts around the matched query.
/// For example, if the document contains the string "The weather is beautiful in Florida today"
/// and your query is "beautiful", this array will contain:
/// "The weather is ", "beautiful", " in Florida today".
/// This feature intends to build [RichText] on your app to highlight the query
/// in the result.
 final  List<String> _textParts;
/// The snippet splitted in parts around the matched query.
/// For example, if the document contains the string "The weather is beautiful in Florida today"
/// and your query is "beautiful", this array will contain:
/// "The weather is ", "beautiful", " in Florida today".
/// This feature intends to build [RichText] on your app to highlight the query
/// in the result.
@override List<String> get textParts {
  if (_textParts is EqualUnmodifiableListView) return _textParts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_textParts);
}

/// The words matching the query. They can be many because even if you are querying
/// something like "car", the result can also contain "cars". So we need to
/// return all the words Elastic decided to match in order to highlight all the matching words.
 final  List<String> _highlights;
/// The words matching the query. They can be many because even if you are querying
/// something like "car", the result can also contain "cars". So we need to
/// return all the words Elastic decided to match in order to highlight all the matching words.
@override List<String> get highlights {
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlights);
}


/// Create a copy of ElasticResultSnippet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticResultSnippetCopyWith<_ElasticResultSnippet> get copyWith => __$ElasticResultSnippetCopyWithImpl<_ElasticResultSnippet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticResultSnippetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticResultSnippet&&(identical(other.fullText, fullText) || other.fullText == fullText)&&const DeepCollectionEquality().equals(other._textParts, _textParts)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullText,const DeepCollectionEquality().hash(_textParts),const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'ElasticResultSnippet(fullText: $fullText, textParts: $textParts, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$ElasticResultSnippetCopyWith<$Res> implements $ElasticResultSnippetCopyWith<$Res> {
  factory _$ElasticResultSnippetCopyWith(_ElasticResultSnippet value, $Res Function(_ElasticResultSnippet) _then) = __$ElasticResultSnippetCopyWithImpl;
@override @useResult
$Res call({
 String fullText, List<String> textParts, List<String> highlights
});




}
/// @nodoc
class __$ElasticResultSnippetCopyWithImpl<$Res>
    implements _$ElasticResultSnippetCopyWith<$Res> {
  __$ElasticResultSnippetCopyWithImpl(this._self, this._then);

  final _ElasticResultSnippet _self;
  final $Res Function(_ElasticResultSnippet) _then;

/// Create a copy of ElasticResultSnippet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullText = null,Object? textParts = null,Object? highlights = null,}) {
  return _then(_ElasticResultSnippet(
fullText: null == fullText ? _self.fullText : fullText // ignore: cast_nullable_to_non_nullable
as String,textParts: null == textParts ? _self._textParts : textParts // ignore: cast_nullable_to_non_nullable
as List<String>,highlights: null == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ElasticSuggestionResult {

/// A list of documents
 List<ElasticSuggestionDocument>? get documents;
/// Create a copy of ElasticSuggestionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticSuggestionResultCopyWith<ElasticSuggestionResult> get copyWith => _$ElasticSuggestionResultCopyWithImpl<ElasticSuggestionResult>(this as ElasticSuggestionResult, _$identity);

  /// Serializes this ElasticSuggestionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticSuggestionResult&&const DeepCollectionEquality().equals(other.documents, documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(documents));

@override
String toString() {
  return 'ElasticSuggestionResult(documents: $documents)';
}


}

/// @nodoc
abstract mixin class $ElasticSuggestionResultCopyWith<$Res>  {
  factory $ElasticSuggestionResultCopyWith(ElasticSuggestionResult value, $Res Function(ElasticSuggestionResult) _then) = _$ElasticSuggestionResultCopyWithImpl;
@useResult
$Res call({
 List<ElasticSuggestionDocument>? documents
});




}
/// @nodoc
class _$ElasticSuggestionResultCopyWithImpl<$Res>
    implements $ElasticSuggestionResultCopyWith<$Res> {
  _$ElasticSuggestionResultCopyWithImpl(this._self, this._then);

  final ElasticSuggestionResult _self;
  final $Res Function(ElasticSuggestionResult) _then;

/// Create a copy of ElasticSuggestionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documents = freezed,}) {
  return _then(_self.copyWith(
documents: freezed == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<ElasticSuggestionDocument>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticSuggestionResult].
extension ElasticSuggestionResultPatterns on ElasticSuggestionResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSuggestionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSuggestionResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSuggestionResult value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSuggestionResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSuggestionResult value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSuggestionResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ElasticSuggestionDocument>? documents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSuggestionResult() when $default != null:
return $default(_that.documents);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ElasticSuggestionDocument>? documents)  $default,) {final _that = this;
switch (_that) {
case _ElasticSuggestionResult():
return $default(_that.documents);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ElasticSuggestionDocument>? documents)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSuggestionResult() when $default != null:
return $default(_that.documents);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSuggestionResult extends ElasticSuggestionResult {
   _ElasticSuggestionResult({final  List<ElasticSuggestionDocument>? documents}): _documents = documents,super._();
  factory _ElasticSuggestionResult.fromJson(Map<String, dynamic> json) => _$ElasticSuggestionResultFromJson(json);

/// A list of documents
 final  List<ElasticSuggestionDocument>? _documents;
/// A list of documents
@override List<ElasticSuggestionDocument>? get documents {
  final value = _documents;
  if (value == null) return null;
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ElasticSuggestionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSuggestionResultCopyWith<_ElasticSuggestionResult> get copyWith => __$ElasticSuggestionResultCopyWithImpl<_ElasticSuggestionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSuggestionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSuggestionResult&&const DeepCollectionEquality().equals(other._documents, _documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_documents));

@override
String toString() {
  return 'ElasticSuggestionResult(documents: $documents)';
}


}

/// @nodoc
abstract mixin class _$ElasticSuggestionResultCopyWith<$Res> implements $ElasticSuggestionResultCopyWith<$Res> {
  factory _$ElasticSuggestionResultCopyWith(_ElasticSuggestionResult value, $Res Function(_ElasticSuggestionResult) _then) = __$ElasticSuggestionResultCopyWithImpl;
@override @useResult
$Res call({
 List<ElasticSuggestionDocument>? documents
});




}
/// @nodoc
class __$ElasticSuggestionResultCopyWithImpl<$Res>
    implements _$ElasticSuggestionResultCopyWith<$Res> {
  __$ElasticSuggestionResultCopyWithImpl(this._self, this._then);

  final _ElasticSuggestionResult _self;
  final $Res Function(_ElasticSuggestionResult) _then;

/// Create a copy of ElasticSuggestionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documents = freezed,}) {
  return _then(_ElasticSuggestionResult(
documents: freezed == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<ElasticSuggestionDocument>?,
  ));
}


}


/// @nodoc
mixin _$ElasticSuggestionDocument {

/// The suggestion contained in the document of the query suggestion
 String get suggestion;
/// Create a copy of ElasticSuggestionDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElasticSuggestionDocumentCopyWith<ElasticSuggestionDocument> get copyWith => _$ElasticSuggestionDocumentCopyWithImpl<ElasticSuggestionDocument>(this as ElasticSuggestionDocument, _$identity);

  /// Serializes this ElasticSuggestionDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElasticSuggestionDocument&&(identical(other.suggestion, suggestion) || other.suggestion == suggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestion);

@override
String toString() {
  return 'ElasticSuggestionDocument(suggestion: $suggestion)';
}


}

/// @nodoc
abstract mixin class $ElasticSuggestionDocumentCopyWith<$Res>  {
  factory $ElasticSuggestionDocumentCopyWith(ElasticSuggestionDocument value, $Res Function(ElasticSuggestionDocument) _then) = _$ElasticSuggestionDocumentCopyWithImpl;
@useResult
$Res call({
 String suggestion
});




}
/// @nodoc
class _$ElasticSuggestionDocumentCopyWithImpl<$Res>
    implements $ElasticSuggestionDocumentCopyWith<$Res> {
  _$ElasticSuggestionDocumentCopyWithImpl(this._self, this._then);

  final ElasticSuggestionDocument _self;
  final $Res Function(ElasticSuggestionDocument) _then;

/// Create a copy of ElasticSuggestionDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestion = null,}) {
  return _then(_self.copyWith(
suggestion: null == suggestion ? _self.suggestion : suggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ElasticSuggestionDocument].
extension ElasticSuggestionDocumentPatterns on ElasticSuggestionDocument {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElasticSuggestionDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElasticSuggestionDocument() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElasticSuggestionDocument value)  $default,){
final _that = this;
switch (_that) {
case _ElasticSuggestionDocument():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElasticSuggestionDocument value)?  $default,){
final _that = this;
switch (_that) {
case _ElasticSuggestionDocument() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String suggestion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElasticSuggestionDocument() when $default != null:
return $default(_that.suggestion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String suggestion)  $default,) {final _that = this;
switch (_that) {
case _ElasticSuggestionDocument():
return $default(_that.suggestion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String suggestion)?  $default,) {final _that = this;
switch (_that) {
case _ElasticSuggestionDocument() when $default != null:
return $default(_that.suggestion);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _ElasticSuggestionDocument extends ElasticSuggestionDocument {
   _ElasticSuggestionDocument({required this.suggestion}): super._();
  factory _ElasticSuggestionDocument.fromJson(Map<String, dynamic> json) => _$ElasticSuggestionDocumentFromJson(json);

/// The suggestion contained in the document of the query suggestion
@override final  String suggestion;

/// Create a copy of ElasticSuggestionDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElasticSuggestionDocumentCopyWith<_ElasticSuggestionDocument> get copyWith => __$ElasticSuggestionDocumentCopyWithImpl<_ElasticSuggestionDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElasticSuggestionDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElasticSuggestionDocument&&(identical(other.suggestion, suggestion) || other.suggestion == suggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestion);

@override
String toString() {
  return 'ElasticSuggestionDocument(suggestion: $suggestion)';
}


}

/// @nodoc
abstract mixin class _$ElasticSuggestionDocumentCopyWith<$Res> implements $ElasticSuggestionDocumentCopyWith<$Res> {
  factory _$ElasticSuggestionDocumentCopyWith(_ElasticSuggestionDocument value, $Res Function(_ElasticSuggestionDocument) _then) = __$ElasticSuggestionDocumentCopyWithImpl;
@override @useResult
$Res call({
 String suggestion
});




}
/// @nodoc
class __$ElasticSuggestionDocumentCopyWithImpl<$Res>
    implements _$ElasticSuggestionDocumentCopyWith<$Res> {
  __$ElasticSuggestionDocumentCopyWithImpl(this._self, this._then);

  final _ElasticSuggestionDocument _self;
  final $Res Function(_ElasticSuggestionDocument) _then;

/// Create a copy of ElasticSuggestionDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestion = null,}) {
  return _then(_ElasticSuggestionDocument(
suggestion: null == suggestion ? _self.suggestion : suggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
