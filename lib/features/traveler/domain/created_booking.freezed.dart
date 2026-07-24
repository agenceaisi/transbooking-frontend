// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreatedBooking {

 int get id; String get ticketNumber; String get passengerName; String get phone; String get seatNumber;/// Montant total facturé, calculé et renvoyé par l'API (lecture seule).
 String get amount; BookingStatus? get status; String get statusDisplay; String get originCity; String get destinationCity; DateTime get departureTime;
/// Create a copy of CreatedBooking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedBookingCopyWith<CreatedBooking> get copyWith => _$CreatedBookingCopyWithImpl<CreatedBooking>(this as CreatedBooking, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedBooking&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,passengerName,phone,seatNumber,amount,status,statusDisplay,originCity,destinationCity,departureTime);

@override
String toString() {
  return 'CreatedBooking(id: $id, ticketNumber: $ticketNumber, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, amount: $amount, status: $status, statusDisplay: $statusDisplay, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime)';
}


}

/// @nodoc
abstract mixin class $CreatedBookingCopyWith<$Res>  {
  factory $CreatedBookingCopyWith(CreatedBooking value, $Res Function(CreatedBooking) _then) = _$CreatedBookingCopyWithImpl;
@useResult
$Res call({
 int id, String ticketNumber, String passengerName, String phone, String seatNumber, String amount, BookingStatus? status, String statusDisplay, String originCity, String destinationCity, DateTime departureTime
});




}
/// @nodoc
class _$CreatedBookingCopyWithImpl<$Res>
    implements $CreatedBookingCopyWith<$Res> {
  _$CreatedBookingCopyWithImpl(this._self, this._then);

  final CreatedBooking _self;
  final $Res Function(CreatedBooking) _then;

/// Create a copy of CreatedBooking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? amount = null,Object? status = freezed,Object? statusDisplay = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BookingStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedBooking].
extension CreatedBookingPatterns on CreatedBooking {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedBooking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedBooking() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedBooking value)  $default,){
final _that = this;
switch (_that) {
case _CreatedBooking():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedBooking value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedBooking() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  String passengerName,  String phone,  String seatNumber,  String amount,  BookingStatus? status,  String statusDisplay,  String originCity,  String destinationCity,  DateTime departureTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedBooking() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.status,_that.statusDisplay,_that.originCity,_that.destinationCity,_that.departureTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  String passengerName,  String phone,  String seatNumber,  String amount,  BookingStatus? status,  String statusDisplay,  String originCity,  String destinationCity,  DateTime departureTime)  $default,) {final _that = this;
switch (_that) {
case _CreatedBooking():
return $default(_that.id,_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.status,_that.statusDisplay,_that.originCity,_that.destinationCity,_that.departureTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String ticketNumber,  String passengerName,  String phone,  String seatNumber,  String amount,  BookingStatus? status,  String statusDisplay,  String originCity,  String destinationCity,  DateTime departureTime)?  $default,) {final _that = this;
switch (_that) {
case _CreatedBooking() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.status,_that.statusDisplay,_that.originCity,_that.destinationCity,_that.departureTime);case _:
  return null;

}
}

}

/// @nodoc


class _CreatedBooking implements CreatedBooking {
  const _CreatedBooking({required this.id, required this.ticketNumber, required this.passengerName, required this.phone, required this.seatNumber, required this.amount, this.status, required this.statusDisplay, required this.originCity, required this.destinationCity, required this.departureTime});
  

@override final  int id;
@override final  String ticketNumber;
@override final  String passengerName;
@override final  String phone;
@override final  String seatNumber;
/// Montant total facturé, calculé et renvoyé par l'API (lecture seule).
@override final  String amount;
@override final  BookingStatus? status;
@override final  String statusDisplay;
@override final  String originCity;
@override final  String destinationCity;
@override final  DateTime departureTime;

/// Create a copy of CreatedBooking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedBookingCopyWith<_CreatedBooking> get copyWith => __$CreatedBookingCopyWithImpl<_CreatedBooking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedBooking&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,passengerName,phone,seatNumber,amount,status,statusDisplay,originCity,destinationCity,departureTime);

@override
String toString() {
  return 'CreatedBooking(id: $id, ticketNumber: $ticketNumber, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, amount: $amount, status: $status, statusDisplay: $statusDisplay, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime)';
}


}

/// @nodoc
abstract mixin class _$CreatedBookingCopyWith<$Res> implements $CreatedBookingCopyWith<$Res> {
  factory _$CreatedBookingCopyWith(_CreatedBooking value, $Res Function(_CreatedBooking) _then) = __$CreatedBookingCopyWithImpl;
@override @useResult
$Res call({
 int id, String ticketNumber, String passengerName, String phone, String seatNumber, String amount, BookingStatus? status, String statusDisplay, String originCity, String destinationCity, DateTime departureTime
});




}
/// @nodoc
class __$CreatedBookingCopyWithImpl<$Res>
    implements _$CreatedBookingCopyWith<$Res> {
  __$CreatedBookingCopyWithImpl(this._self, this._then);

  final _CreatedBooking _self;
  final $Res Function(_CreatedBooking) _then;

/// Create a copy of CreatedBooking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? amount = null,Object? status = freezed,Object? statusDisplay = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,}) {
  return _then(_CreatedBooking(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BookingStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
