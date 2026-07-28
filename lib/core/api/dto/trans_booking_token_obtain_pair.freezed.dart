// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trans_booking_token_obtain_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransBookingTokenObtainPair {

 String get phone; String get password;
/// Create a copy of TransBookingTokenObtainPair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransBookingTokenObtainPairCopyWith<TransBookingTokenObtainPair> get copyWith => _$TransBookingTokenObtainPairCopyWithImpl<TransBookingTokenObtainPair>(this as TransBookingTokenObtainPair, _$identity);

  /// Serializes this TransBookingTokenObtainPair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransBookingTokenObtainPair&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,password);

@override
String toString() {
  return 'TransBookingTokenObtainPair(phone: $phone, password: $password)';
}


}

/// @nodoc
abstract mixin class $TransBookingTokenObtainPairCopyWith<$Res>  {
  factory $TransBookingTokenObtainPairCopyWith(TransBookingTokenObtainPair value, $Res Function(TransBookingTokenObtainPair) _then) = _$TransBookingTokenObtainPairCopyWithImpl;
@useResult
$Res call({
 String phone, String password
});




}
/// @nodoc
class _$TransBookingTokenObtainPairCopyWithImpl<$Res>
    implements $TransBookingTokenObtainPairCopyWith<$Res> {
  _$TransBookingTokenObtainPairCopyWithImpl(this._self, this._then);

  final TransBookingTokenObtainPair _self;
  final $Res Function(TransBookingTokenObtainPair) _then;

/// Create a copy of TransBookingTokenObtainPair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? password = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransBookingTokenObtainPair].
extension TransBookingTokenObtainPairPatterns on TransBookingTokenObtainPair {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransBookingTokenObtainPair value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransBookingTokenObtainPair() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransBookingTokenObtainPair value)  $default,){
final _that = this;
switch (_that) {
case _TransBookingTokenObtainPair():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransBookingTokenObtainPair value)?  $default,){
final _that = this;
switch (_that) {
case _TransBookingTokenObtainPair() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransBookingTokenObtainPair() when $default != null:
return $default(_that.phone,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  String password)  $default,) {final _that = this;
switch (_that) {
case _TransBookingTokenObtainPair():
return $default(_that.phone,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  String password)?  $default,) {final _that = this;
switch (_that) {
case _TransBookingTokenObtainPair() when $default != null:
return $default(_that.phone,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransBookingTokenObtainPair implements TransBookingTokenObtainPair {
  const _TransBookingTokenObtainPair({required this.phone, required this.password});
  factory _TransBookingTokenObtainPair.fromJson(Map<String, dynamic> json) => _$TransBookingTokenObtainPairFromJson(json);

@override final  String phone;
@override final  String password;

/// Create a copy of TransBookingTokenObtainPair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransBookingTokenObtainPairCopyWith<_TransBookingTokenObtainPair> get copyWith => __$TransBookingTokenObtainPairCopyWithImpl<_TransBookingTokenObtainPair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransBookingTokenObtainPairToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransBookingTokenObtainPair&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,password);

@override
String toString() {
  return 'TransBookingTokenObtainPair(phone: $phone, password: $password)';
}


}

/// @nodoc
abstract mixin class _$TransBookingTokenObtainPairCopyWith<$Res> implements $TransBookingTokenObtainPairCopyWith<$Res> {
  factory _$TransBookingTokenObtainPairCopyWith(_TransBookingTokenObtainPair value, $Res Function(_TransBookingTokenObtainPair) _then) = __$TransBookingTokenObtainPairCopyWithImpl;
@override @useResult
$Res call({
 String phone, String password
});




}
/// @nodoc
class __$TransBookingTokenObtainPairCopyWithImpl<$Res>
    implements _$TransBookingTokenObtainPairCopyWith<$Res> {
  __$TransBookingTokenObtainPairCopyWithImpl(this._self, this._then);

  final _TransBookingTokenObtainPair _self;
  final $Res Function(_TransBookingTokenObtainPair) _then;

/// Create a copy of TransBookingTokenObtainPair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? password = null,}) {
  return _then(_TransBookingTokenObtainPair(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
