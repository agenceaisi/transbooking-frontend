// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_otp_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentOtpVerify {

 String get otp;
/// Create a copy of PaymentOtpVerify
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentOtpVerifyCopyWith<PaymentOtpVerify> get copyWith => _$PaymentOtpVerifyCopyWithImpl<PaymentOtpVerify>(this as PaymentOtpVerify, _$identity);

  /// Serializes this PaymentOtpVerify to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentOtpVerify&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'PaymentOtpVerify(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $PaymentOtpVerifyCopyWith<$Res>  {
  factory $PaymentOtpVerifyCopyWith(PaymentOtpVerify value, $Res Function(PaymentOtpVerify) _then) = _$PaymentOtpVerifyCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class _$PaymentOtpVerifyCopyWithImpl<$Res>
    implements $PaymentOtpVerifyCopyWith<$Res> {
  _$PaymentOtpVerifyCopyWithImpl(this._self, this._then);

  final PaymentOtpVerify _self;
  final $Res Function(PaymentOtpVerify) _then;

/// Create a copy of PaymentOtpVerify
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? otp = null,}) {
  return _then(_self.copyWith(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentOtpVerify].
extension PaymentOtpVerifyPatterns on PaymentOtpVerify {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentOtpVerify value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentOtpVerify() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentOtpVerify value)  $default,){
final _that = this;
switch (_that) {
case _PaymentOtpVerify():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentOtpVerify value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentOtpVerify() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String otp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentOtpVerify() when $default != null:
return $default(_that.otp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String otp)  $default,) {final _that = this;
switch (_that) {
case _PaymentOtpVerify():
return $default(_that.otp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String otp)?  $default,) {final _that = this;
switch (_that) {
case _PaymentOtpVerify() when $default != null:
return $default(_that.otp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentOtpVerify implements PaymentOtpVerify {
  const _PaymentOtpVerify({required this.otp});
  factory _PaymentOtpVerify.fromJson(Map<String, dynamic> json) => _$PaymentOtpVerifyFromJson(json);

@override final  String otp;

/// Create a copy of PaymentOtpVerify
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentOtpVerifyCopyWith<_PaymentOtpVerify> get copyWith => __$PaymentOtpVerifyCopyWithImpl<_PaymentOtpVerify>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentOtpVerifyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentOtpVerify&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'PaymentOtpVerify(otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$PaymentOtpVerifyCopyWith<$Res> implements $PaymentOtpVerifyCopyWith<$Res> {
  factory _$PaymentOtpVerifyCopyWith(_PaymentOtpVerify value, $Res Function(_PaymentOtpVerify) _then) = __$PaymentOtpVerifyCopyWithImpl;
@override @useResult
$Res call({
 String otp
});




}
/// @nodoc
class __$PaymentOtpVerifyCopyWithImpl<$Res>
    implements _$PaymentOtpVerifyCopyWith<$Res> {
  __$PaymentOtpVerifyCopyWithImpl(this._self, this._then);

  final _PaymentOtpVerify _self;
  final $Res Function(_PaymentOtpVerify) _then;

/// Create a copy of PaymentOtpVerify
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(_PaymentOtpVerify(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
