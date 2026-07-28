// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PassengerRegistration {

 String get ticketNumber; String get firstName; String get lastName; String get phone; String get originCity; String get destinationCity; DateTime get departureTime; bool get isOffline; String? get companyName; String? get seatNumber; String? get amount; String? get qrCode; DateTime? get printedAt; int? get printCount;
/// Create a copy of PassengerRegistration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerRegistrationCopyWith<PassengerRegistration> get copyWith => _$PassengerRegistrationCopyWithImpl<PassengerRegistration>(this as PassengerRegistration, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerRegistration&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.printedAt, printedAt) || other.printedAt == printedAt)&&(identical(other.printCount, printCount) || other.printCount == printCount));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,firstName,lastName,phone,originCity,destinationCity,departureTime,isOffline,companyName,seatNumber,amount,qrCode,printedAt,printCount);

@override
String toString() {
  return 'PassengerRegistration(ticketNumber: $ticketNumber, firstName: $firstName, lastName: $lastName, phone: $phone, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, isOffline: $isOffline, companyName: $companyName, seatNumber: $seatNumber, amount: $amount, qrCode: $qrCode, printedAt: $printedAt, printCount: $printCount)';
}


}

/// @nodoc
abstract mixin class $PassengerRegistrationCopyWith<$Res>  {
  factory $PassengerRegistrationCopyWith(PassengerRegistration value, $Res Function(PassengerRegistration) _then) = _$PassengerRegistrationCopyWithImpl;
@useResult
$Res call({
 String ticketNumber, String firstName, String lastName, String phone, String originCity, String destinationCity, DateTime departureTime, bool isOffline, String? companyName, String? seatNumber, String? amount, String? qrCode, DateTime? printedAt, int? printCount
});




}
/// @nodoc
class _$PassengerRegistrationCopyWithImpl<$Res>
    implements $PassengerRegistrationCopyWith<$Res> {
  _$PassengerRegistrationCopyWithImpl(this._self, this._then);

  final PassengerRegistration _self;
  final $Res Function(PassengerRegistration) _then;

/// Create a copy of PassengerRegistration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? isOffline = null,Object? companyName = freezed,Object? seatNumber = freezed,Object? amount = freezed,Object? qrCode = freezed,Object? printedAt = freezed,Object? printCount = freezed,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,printedAt: freezed == printedAt ? _self.printedAt : printedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,printCount: freezed == printCount ? _self.printCount : printCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerRegistration].
extension PassengerRegistrationPatterns on PassengerRegistration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerRegistration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerRegistration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerRegistration value)  $default,){
final _that = this;
switch (_that) {
case _PassengerRegistration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerRegistration value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerRegistration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticketNumber,  String firstName,  String lastName,  String phone,  String originCity,  String destinationCity,  DateTime departureTime,  bool isOffline,  String? companyName,  String? seatNumber,  String? amount,  String? qrCode,  DateTime? printedAt,  int? printCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerRegistration() when $default != null:
return $default(_that.ticketNumber,_that.firstName,_that.lastName,_that.phone,_that.originCity,_that.destinationCity,_that.departureTime,_that.isOffline,_that.companyName,_that.seatNumber,_that.amount,_that.qrCode,_that.printedAt,_that.printCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticketNumber,  String firstName,  String lastName,  String phone,  String originCity,  String destinationCity,  DateTime departureTime,  bool isOffline,  String? companyName,  String? seatNumber,  String? amount,  String? qrCode,  DateTime? printedAt,  int? printCount)  $default,) {final _that = this;
switch (_that) {
case _PassengerRegistration():
return $default(_that.ticketNumber,_that.firstName,_that.lastName,_that.phone,_that.originCity,_that.destinationCity,_that.departureTime,_that.isOffline,_that.companyName,_that.seatNumber,_that.amount,_that.qrCode,_that.printedAt,_that.printCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticketNumber,  String firstName,  String lastName,  String phone,  String originCity,  String destinationCity,  DateTime departureTime,  bool isOffline,  String? companyName,  String? seatNumber,  String? amount,  String? qrCode,  DateTime? printedAt,  int? printCount)?  $default,) {final _that = this;
switch (_that) {
case _PassengerRegistration() when $default != null:
return $default(_that.ticketNumber,_that.firstName,_that.lastName,_that.phone,_that.originCity,_that.destinationCity,_that.departureTime,_that.isOffline,_that.companyName,_that.seatNumber,_that.amount,_that.qrCode,_that.printedAt,_that.printCount);case _:
  return null;

}
}

}

/// @nodoc


class _PassengerRegistration extends PassengerRegistration {
  const _PassengerRegistration({required this.ticketNumber, required this.firstName, required this.lastName, required this.phone, required this.originCity, required this.destinationCity, required this.departureTime, required this.isOffline, this.companyName, this.seatNumber, this.amount, this.qrCode, this.printedAt, this.printCount}): super._();
  

@override final  String ticketNumber;
@override final  String firstName;
@override final  String lastName;
@override final  String phone;
@override final  String originCity;
@override final  String destinationCity;
@override final  DateTime departureTime;
@override final  bool isOffline;
@override final  String? companyName;
@override final  String? seatNumber;
@override final  String? amount;
@override final  String? qrCode;
@override final  DateTime? printedAt;
@override final  int? printCount;

/// Create a copy of PassengerRegistration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerRegistrationCopyWith<_PassengerRegistration> get copyWith => __$PassengerRegistrationCopyWithImpl<_PassengerRegistration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerRegistration&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.printedAt, printedAt) || other.printedAt == printedAt)&&(identical(other.printCount, printCount) || other.printCount == printCount));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,firstName,lastName,phone,originCity,destinationCity,departureTime,isOffline,companyName,seatNumber,amount,qrCode,printedAt,printCount);

@override
String toString() {
  return 'PassengerRegistration(ticketNumber: $ticketNumber, firstName: $firstName, lastName: $lastName, phone: $phone, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, isOffline: $isOffline, companyName: $companyName, seatNumber: $seatNumber, amount: $amount, qrCode: $qrCode, printedAt: $printedAt, printCount: $printCount)';
}


}

/// @nodoc
abstract mixin class _$PassengerRegistrationCopyWith<$Res> implements $PassengerRegistrationCopyWith<$Res> {
  factory _$PassengerRegistrationCopyWith(_PassengerRegistration value, $Res Function(_PassengerRegistration) _then) = __$PassengerRegistrationCopyWithImpl;
@override @useResult
$Res call({
 String ticketNumber, String firstName, String lastName, String phone, String originCity, String destinationCity, DateTime departureTime, bool isOffline, String? companyName, String? seatNumber, String? amount, String? qrCode, DateTime? printedAt, int? printCount
});




}
/// @nodoc
class __$PassengerRegistrationCopyWithImpl<$Res>
    implements _$PassengerRegistrationCopyWith<$Res> {
  __$PassengerRegistrationCopyWithImpl(this._self, this._then);

  final _PassengerRegistration _self;
  final $Res Function(_PassengerRegistration) _then;

/// Create a copy of PassengerRegistration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? isOffline = null,Object? companyName = freezed,Object? seatNumber = freezed,Object? amount = freezed,Object? qrCode = freezed,Object? printedAt = freezed,Object? printCount = freezed,}) {
  return _then(_PassengerRegistration(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,printedAt: freezed == printedAt ? _self.printedAt : printedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,printCount: freezed == printCount ? _self.printCount : printCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
