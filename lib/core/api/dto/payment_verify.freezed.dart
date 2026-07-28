// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentVerify {

@JsonKey(name: 'transaction_ref') String? get transactionRef;
/// Create a copy of PaymentVerify
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentVerifyCopyWith<PaymentVerify> get copyWith => _$PaymentVerifyCopyWithImpl<PaymentVerify>(this as PaymentVerify, _$identity);

  /// Serializes this PaymentVerify to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentVerify&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionRef);

@override
String toString() {
  return 'PaymentVerify(transactionRef: $transactionRef)';
}


}

/// @nodoc
abstract mixin class $PaymentVerifyCopyWith<$Res>  {
  factory $PaymentVerifyCopyWith(PaymentVerify value, $Res Function(PaymentVerify) _then) = _$PaymentVerifyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transaction_ref') String? transactionRef
});




}
/// @nodoc
class _$PaymentVerifyCopyWithImpl<$Res>
    implements $PaymentVerifyCopyWith<$Res> {
  _$PaymentVerifyCopyWithImpl(this._self, this._then);

  final PaymentVerify _self;
  final $Res Function(PaymentVerify) _then;

/// Create a copy of PaymentVerify
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionRef = freezed,}) {
  return _then(_self.copyWith(
transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentVerify].
extension PaymentVerifyPatterns on PaymentVerify {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentVerify value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentVerify() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentVerify value)  $default,){
final _that = this;
switch (_that) {
case _PaymentVerify():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentVerify value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentVerify() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'transaction_ref')  String? transactionRef)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentVerify() when $default != null:
return $default(_that.transactionRef);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'transaction_ref')  String? transactionRef)  $default,) {final _that = this;
switch (_that) {
case _PaymentVerify():
return $default(_that.transactionRef);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'transaction_ref')  String? transactionRef)?  $default,) {final _that = this;
switch (_that) {
case _PaymentVerify() when $default != null:
return $default(_that.transactionRef);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentVerify implements PaymentVerify {
  const _PaymentVerify({@JsonKey(name: 'transaction_ref') this.transactionRef});
  factory _PaymentVerify.fromJson(Map<String, dynamic> json) => _$PaymentVerifyFromJson(json);

@override@JsonKey(name: 'transaction_ref') final  String? transactionRef;

/// Create a copy of PaymentVerify
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentVerifyCopyWith<_PaymentVerify> get copyWith => __$PaymentVerifyCopyWithImpl<_PaymentVerify>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentVerifyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentVerify&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionRef);

@override
String toString() {
  return 'PaymentVerify(transactionRef: $transactionRef)';
}


}

/// @nodoc
abstract mixin class _$PaymentVerifyCopyWith<$Res> implements $PaymentVerifyCopyWith<$Res> {
  factory _$PaymentVerifyCopyWith(_PaymentVerify value, $Res Function(_PaymentVerify) _then) = __$PaymentVerifyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transaction_ref') String? transactionRef
});




}
/// @nodoc
class __$PaymentVerifyCopyWithImpl<$Res>
    implements _$PaymentVerifyCopyWith<$Res> {
  __$PaymentVerifyCopyWithImpl(this._self, this._then);

  final _PaymentVerify _self;
  final $Res Function(_PaymentVerify) _then;

/// Create a copy of PaymentVerify
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionRef = freezed,}) {
  return _then(_PaymentVerify(
transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
