// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_platform_payment_methods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedPlatformPaymentMethods {

@JsonKey(name: 'payment_methods') List<PlatformPaymentMethod>? get paymentMethods;
/// Create a copy of PatchedPlatformPaymentMethods
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedPlatformPaymentMethodsCopyWith<PatchedPlatformPaymentMethods> get copyWith => _$PatchedPlatformPaymentMethodsCopyWithImpl<PatchedPlatformPaymentMethods>(this as PatchedPlatformPaymentMethods, _$identity);

  /// Serializes this PatchedPlatformPaymentMethods to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedPlatformPaymentMethods&&const DeepCollectionEquality().equals(other.paymentMethods, paymentMethods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(paymentMethods));

@override
String toString() {
  return 'PatchedPlatformPaymentMethods(paymentMethods: $paymentMethods)';
}


}

/// @nodoc
abstract mixin class $PatchedPlatformPaymentMethodsCopyWith<$Res>  {
  factory $PatchedPlatformPaymentMethodsCopyWith(PatchedPlatformPaymentMethods value, $Res Function(PatchedPlatformPaymentMethods) _then) = _$PatchedPlatformPaymentMethodsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_methods') List<PlatformPaymentMethod>? paymentMethods
});




}
/// @nodoc
class _$PatchedPlatformPaymentMethodsCopyWithImpl<$Res>
    implements $PatchedPlatformPaymentMethodsCopyWith<$Res> {
  _$PatchedPlatformPaymentMethodsCopyWithImpl(this._self, this._then);

  final PatchedPlatformPaymentMethods _self;
  final $Res Function(PatchedPlatformPaymentMethods) _then;

/// Create a copy of PatchedPlatformPaymentMethods
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentMethods = freezed,}) {
  return _then(_self.copyWith(
paymentMethods: freezed == paymentMethods ? _self.paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PlatformPaymentMethod>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedPlatformPaymentMethods].
extension PatchedPlatformPaymentMethodsPatterns on PatchedPlatformPaymentMethods {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedPlatformPaymentMethods value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedPlatformPaymentMethods() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedPlatformPaymentMethods value)  $default,){
final _that = this;
switch (_that) {
case _PatchedPlatformPaymentMethods():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedPlatformPaymentMethods value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedPlatformPaymentMethods() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_methods')  List<PlatformPaymentMethod>? paymentMethods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedPlatformPaymentMethods() when $default != null:
return $default(_that.paymentMethods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_methods')  List<PlatformPaymentMethod>? paymentMethods)  $default,) {final _that = this;
switch (_that) {
case _PatchedPlatformPaymentMethods():
return $default(_that.paymentMethods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payment_methods')  List<PlatformPaymentMethod>? paymentMethods)?  $default,) {final _that = this;
switch (_that) {
case _PatchedPlatformPaymentMethods() when $default != null:
return $default(_that.paymentMethods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedPlatformPaymentMethods implements PatchedPlatformPaymentMethods {
  const _PatchedPlatformPaymentMethods({@JsonKey(name: 'payment_methods') final  List<PlatformPaymentMethod>? paymentMethods}): _paymentMethods = paymentMethods;
  factory _PatchedPlatformPaymentMethods.fromJson(Map<String, dynamic> json) => _$PatchedPlatformPaymentMethodsFromJson(json);

 final  List<PlatformPaymentMethod>? _paymentMethods;
@override@JsonKey(name: 'payment_methods') List<PlatformPaymentMethod>? get paymentMethods {
  final value = _paymentMethods;
  if (value == null) return null;
  if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PatchedPlatformPaymentMethods
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedPlatformPaymentMethodsCopyWith<_PatchedPlatformPaymentMethods> get copyWith => __$PatchedPlatformPaymentMethodsCopyWithImpl<_PatchedPlatformPaymentMethods>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedPlatformPaymentMethodsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedPlatformPaymentMethods&&const DeepCollectionEquality().equals(other._paymentMethods, _paymentMethods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_paymentMethods));

@override
String toString() {
  return 'PatchedPlatformPaymentMethods(paymentMethods: $paymentMethods)';
}


}

/// @nodoc
abstract mixin class _$PatchedPlatformPaymentMethodsCopyWith<$Res> implements $PatchedPlatformPaymentMethodsCopyWith<$Res> {
  factory _$PatchedPlatformPaymentMethodsCopyWith(_PatchedPlatformPaymentMethods value, $Res Function(_PatchedPlatformPaymentMethods) _then) = __$PatchedPlatformPaymentMethodsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_methods') List<PlatformPaymentMethod>? paymentMethods
});




}
/// @nodoc
class __$PatchedPlatformPaymentMethodsCopyWithImpl<$Res>
    implements _$PatchedPlatformPaymentMethodsCopyWith<$Res> {
  __$PatchedPlatformPaymentMethodsCopyWithImpl(this._self, this._then);

  final _PatchedPlatformPaymentMethods _self;
  final $Res Function(_PatchedPlatformPaymentMethods) _then;

/// Create a copy of PatchedPlatformPaymentMethods
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentMethods = freezed,}) {
  return _then(_PatchedPlatformPaymentMethods(
paymentMethods: freezed == paymentMethods ? _self._paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PlatformPaymentMethod>?,
  ));
}


}

// dart format on
