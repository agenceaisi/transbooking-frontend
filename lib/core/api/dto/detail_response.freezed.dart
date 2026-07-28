// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailResponse {

 String get detail;
/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailResponseCopyWith<DetailResponse> get copyWith => _$DetailResponseCopyWithImpl<DetailResponse>(this as DetailResponse, _$identity);

  /// Serializes this DetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailResponse&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'DetailResponse(detail: $detail)';
}


}

/// @nodoc
abstract mixin class $DetailResponseCopyWith<$Res>  {
  factory $DetailResponseCopyWith(DetailResponse value, $Res Function(DetailResponse) _then) = _$DetailResponseCopyWithImpl;
@useResult
$Res call({
 String detail
});




}
/// @nodoc
class _$DetailResponseCopyWithImpl<$Res>
    implements $DetailResponseCopyWith<$Res> {
  _$DetailResponseCopyWithImpl(this._self, this._then);

  final DetailResponse _self;
  final $Res Function(DetailResponse) _then;

/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detail = null,}) {
  return _then(_self.copyWith(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailResponse].
extension DetailResponsePatterns on DetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _DetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
return $default(_that.detail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String detail)  $default,) {final _that = this;
switch (_that) {
case _DetailResponse():
return $default(_that.detail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String detail)?  $default,) {final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
return $default(_that.detail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetailResponse implements DetailResponse {
  const _DetailResponse({required this.detail});
  factory _DetailResponse.fromJson(Map<String, dynamic> json) => _$DetailResponseFromJson(json);

@override final  String detail;

/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailResponseCopyWith<_DetailResponse> get copyWith => __$DetailResponseCopyWithImpl<_DetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailResponse&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'DetailResponse(detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$DetailResponseCopyWith<$Res> implements $DetailResponseCopyWith<$Res> {
  factory _$DetailResponseCopyWith(_DetailResponse value, $Res Function(_DetailResponse) _then) = __$DetailResponseCopyWithImpl;
@override @useResult
$Res call({
 String detail
});




}
/// @nodoc
class __$DetailResponseCopyWithImpl<$Res>
    implements _$DetailResponseCopyWith<$Res> {
  __$DetailResponseCopyWithImpl(this._self, this._then);

  final _DetailResponse _self;
  final $Res Function(_DetailResponse) _then;

/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detail = null,}) {
  return _then(_DetailResponse(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
