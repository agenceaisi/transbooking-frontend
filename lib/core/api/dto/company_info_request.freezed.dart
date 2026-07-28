// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyInfoRequest {

 String get message;
/// Create a copy of CompanyInfoRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyInfoRequestCopyWith<CompanyInfoRequest> get copyWith => _$CompanyInfoRequestCopyWithImpl<CompanyInfoRequest>(this as CompanyInfoRequest, _$identity);

  /// Serializes this CompanyInfoRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyInfoRequest&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CompanyInfoRequest(message: $message)';
}


}

/// @nodoc
abstract mixin class $CompanyInfoRequestCopyWith<$Res>  {
  factory $CompanyInfoRequestCopyWith(CompanyInfoRequest value, $Res Function(CompanyInfoRequest) _then) = _$CompanyInfoRequestCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CompanyInfoRequestCopyWithImpl<$Res>
    implements $CompanyInfoRequestCopyWith<$Res> {
  _$CompanyInfoRequestCopyWithImpl(this._self, this._then);

  final CompanyInfoRequest _self;
  final $Res Function(CompanyInfoRequest) _then;

/// Create a copy of CompanyInfoRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyInfoRequest].
extension CompanyInfoRequestPatterns on CompanyInfoRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyInfoRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyInfoRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyInfoRequest value)  $default,){
final _that = this;
switch (_that) {
case _CompanyInfoRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyInfoRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyInfoRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyInfoRequest() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _CompanyInfoRequest():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _CompanyInfoRequest() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyInfoRequest implements CompanyInfoRequest {
  const _CompanyInfoRequest({required this.message});
  factory _CompanyInfoRequest.fromJson(Map<String, dynamic> json) => _$CompanyInfoRequestFromJson(json);

@override final  String message;

/// Create a copy of CompanyInfoRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyInfoRequestCopyWith<_CompanyInfoRequest> get copyWith => __$CompanyInfoRequestCopyWithImpl<_CompanyInfoRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyInfoRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyInfoRequest&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CompanyInfoRequest(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CompanyInfoRequestCopyWith<$Res> implements $CompanyInfoRequestCopyWith<$Res> {
  factory _$CompanyInfoRequestCopyWith(_CompanyInfoRequest value, $Res Function(_CompanyInfoRequest) _then) = __$CompanyInfoRequestCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CompanyInfoRequestCopyWithImpl<$Res>
    implements _$CompanyInfoRequestCopyWith<$Res> {
  __$CompanyInfoRequestCopyWithImpl(this._self, this._then);

  final _CompanyInfoRequest _self;
  final $Res Function(_CompanyInfoRequest) _then;

/// Create a copy of CompanyInfoRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CompanyInfoRequest(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
