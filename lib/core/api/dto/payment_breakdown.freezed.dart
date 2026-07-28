// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_breakdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentBreakdown {

 String get method; double get amount; double get pct;
/// Create a copy of PaymentBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentBreakdownCopyWith<PaymentBreakdown> get copyWith => _$PaymentBreakdownCopyWithImpl<PaymentBreakdown>(this as PaymentBreakdown, _$identity);

  /// Serializes this PaymentBreakdown to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentBreakdown&&(identical(other.method, method) || other.method == method)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.pct, pct) || other.pct == pct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,amount,pct);

@override
String toString() {
  return 'PaymentBreakdown(method: $method, amount: $amount, pct: $pct)';
}


}

/// @nodoc
abstract mixin class $PaymentBreakdownCopyWith<$Res>  {
  factory $PaymentBreakdownCopyWith(PaymentBreakdown value, $Res Function(PaymentBreakdown) _then) = _$PaymentBreakdownCopyWithImpl;
@useResult
$Res call({
 String method, double amount, double pct
});




}
/// @nodoc
class _$PaymentBreakdownCopyWithImpl<$Res>
    implements $PaymentBreakdownCopyWith<$Res> {
  _$PaymentBreakdownCopyWithImpl(this._self, this._then);

  final PaymentBreakdown _self;
  final $Res Function(PaymentBreakdown) _then;

/// Create a copy of PaymentBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? amount = null,Object? pct = null,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,pct: null == pct ? _self.pct : pct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentBreakdown].
extension PaymentBreakdownPatterns on PaymentBreakdown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentBreakdown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentBreakdown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentBreakdown value)  $default,){
final _that = this;
switch (_that) {
case _PaymentBreakdown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentBreakdown value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentBreakdown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String method,  double amount,  double pct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentBreakdown() when $default != null:
return $default(_that.method,_that.amount,_that.pct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String method,  double amount,  double pct)  $default,) {final _that = this;
switch (_that) {
case _PaymentBreakdown():
return $default(_that.method,_that.amount,_that.pct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String method,  double amount,  double pct)?  $default,) {final _that = this;
switch (_that) {
case _PaymentBreakdown() when $default != null:
return $default(_that.method,_that.amount,_that.pct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentBreakdown implements PaymentBreakdown {
  const _PaymentBreakdown({required this.method, required this.amount, required this.pct});
  factory _PaymentBreakdown.fromJson(Map<String, dynamic> json) => _$PaymentBreakdownFromJson(json);

@override final  String method;
@override final  double amount;
@override final  double pct;

/// Create a copy of PaymentBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentBreakdownCopyWith<_PaymentBreakdown> get copyWith => __$PaymentBreakdownCopyWithImpl<_PaymentBreakdown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentBreakdownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentBreakdown&&(identical(other.method, method) || other.method == method)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.pct, pct) || other.pct == pct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,amount,pct);

@override
String toString() {
  return 'PaymentBreakdown(method: $method, amount: $amount, pct: $pct)';
}


}

/// @nodoc
abstract mixin class _$PaymentBreakdownCopyWith<$Res> implements $PaymentBreakdownCopyWith<$Res> {
  factory _$PaymentBreakdownCopyWith(_PaymentBreakdown value, $Res Function(_PaymentBreakdown) _then) = __$PaymentBreakdownCopyWithImpl;
@override @useResult
$Res call({
 String method, double amount, double pct
});




}
/// @nodoc
class __$PaymentBreakdownCopyWithImpl<$Res>
    implements _$PaymentBreakdownCopyWith<$Res> {
  __$PaymentBreakdownCopyWithImpl(this._self, this._then);

  final _PaymentBreakdown _self;
  final $Res Function(_PaymentBreakdown) _then;

/// Create a copy of PaymentBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? amount = null,Object? pct = null,}) {
  return _then(_PaymentBreakdown(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,pct: null == pct ? _self.pct : pct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
