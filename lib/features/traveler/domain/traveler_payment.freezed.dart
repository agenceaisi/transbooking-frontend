// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TravelerPayment {

 int get id; String get ticketNumber;/// Montant, lecture seule (chaîne décimale de l'API).
 String get amount; String get methodDisplay; PaymentStatus? get status; String get statusDisplay;/// Date de paiement si réglé, sinon date de création.
 DateTime get date;
/// Create a copy of TravelerPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerPaymentCopyWith<TravelerPayment> get copyWith => _$TravelerPaymentCopyWithImpl<TravelerPayment>(this as TravelerPayment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,amount,methodDisplay,status,statusDisplay,date);

@override
String toString() {
  return 'TravelerPayment(id: $id, ticketNumber: $ticketNumber, amount: $amount, methodDisplay: $methodDisplay, status: $status, statusDisplay: $statusDisplay, date: $date)';
}


}

/// @nodoc
abstract mixin class $TravelerPaymentCopyWith<$Res>  {
  factory $TravelerPaymentCopyWith(TravelerPayment value, $Res Function(TravelerPayment) _then) = _$TravelerPaymentCopyWithImpl;
@useResult
$Res call({
 int id, String ticketNumber, String amount, String methodDisplay, PaymentStatus? status, String statusDisplay, DateTime date
});




}
/// @nodoc
class _$TravelerPaymentCopyWithImpl<$Res>
    implements $TravelerPaymentCopyWith<$Res> {
  _$TravelerPaymentCopyWithImpl(this._self, this._then);

  final TravelerPayment _self;
  final $Res Function(TravelerPayment) _then;

/// Create a copy of TravelerPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? amount = null,Object? methodDisplay = null,Object? status = freezed,Object? statusDisplay = null,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerPayment].
extension TravelerPaymentPatterns on TravelerPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerPayment value)  $default,){
final _that = this;
switch (_that) {
case _TravelerPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerPayment value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  String amount,  String methodDisplay,  PaymentStatus? status,  String statusDisplay,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerPayment() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.amount,_that.methodDisplay,_that.status,_that.statusDisplay,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  String amount,  String methodDisplay,  PaymentStatus? status,  String statusDisplay,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _TravelerPayment():
return $default(_that.id,_that.ticketNumber,_that.amount,_that.methodDisplay,_that.status,_that.statusDisplay,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String ticketNumber,  String amount,  String methodDisplay,  PaymentStatus? status,  String statusDisplay,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _TravelerPayment() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.amount,_that.methodDisplay,_that.status,_that.statusDisplay,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _TravelerPayment implements TravelerPayment {
  const _TravelerPayment({required this.id, required this.ticketNumber, required this.amount, required this.methodDisplay, this.status, required this.statusDisplay, required this.date});
  

@override final  int id;
@override final  String ticketNumber;
/// Montant, lecture seule (chaîne décimale de l'API).
@override final  String amount;
@override final  String methodDisplay;
@override final  PaymentStatus? status;
@override final  String statusDisplay;
/// Date de paiement si réglé, sinon date de création.
@override final  DateTime date;

/// Create a copy of TravelerPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerPaymentCopyWith<_TravelerPayment> get copyWith => __$TravelerPaymentCopyWithImpl<_TravelerPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,amount,methodDisplay,status,statusDisplay,date);

@override
String toString() {
  return 'TravelerPayment(id: $id, ticketNumber: $ticketNumber, amount: $amount, methodDisplay: $methodDisplay, status: $status, statusDisplay: $statusDisplay, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TravelerPaymentCopyWith<$Res> implements $TravelerPaymentCopyWith<$Res> {
  factory _$TravelerPaymentCopyWith(_TravelerPayment value, $Res Function(_TravelerPayment) _then) = __$TravelerPaymentCopyWithImpl;
@override @useResult
$Res call({
 int id, String ticketNumber, String amount, String methodDisplay, PaymentStatus? status, String statusDisplay, DateTime date
});




}
/// @nodoc
class __$TravelerPaymentCopyWithImpl<$Res>
    implements _$TravelerPaymentCopyWith<$Res> {
  __$TravelerPaymentCopyWithImpl(this._self, this._then);

  final _TravelerPayment _self;
  final $Res Function(_TravelerPayment) _then;

/// Create a copy of TravelerPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? amount = null,Object? methodDisplay = null,Object? status = freezed,Object? statusDisplay = null,Object? date = null,}) {
  return _then(_TravelerPayment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
