// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TravelerBooking {

 int get id; String get ticketNumber;/// Identifiant du voyage (`BookingRead.trip.id`) — nécessaire pour lier un
/// avis (`ReviewCreate.trip`), distinct de l'id de la réservation.
 int get tripId; String get originCity; String get destinationCity;/// Nom de la compagnie (via `trip.company_name`), pour l'en-tête du billet.
 String get companyName; String? get companySigle; DateTime get departureTime; DateTime? get arrivalTime; String get passengerName; String get phone; String get seatNumber;/// Bagages enregistrés sur la réservation (`BookingRead.baggage`).
 List<TravelerBaggageItem> get baggage;/// Poids total des bagages (chaîne, lecture seule) ; `null` si aucun.
 String? get baggageTotalWeightKg;/// Montant payé, calculé et renvoyé par l'API (lecture seule, CLAUDE.md §13).
 String get amount;/// Moyen de paiement (valeur technique) ou `null` si non payé.
 String? get paymentMethod;/// QR du billet, image PNG encodée en base64 ; `null` tant que non émis.
 String? get qrCode; BookingStatus? get status; String get statusDisplay; bool get isBoarded; DateTime get createdAt;/// Statut du voyage lui-même (`trip.status`) — voir [TripStatusKind].
 TripStatusKind? get tripStatus;
/// Create a copy of TravelerBooking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerBookingCopyWith<TravelerBooking> get copyWith => _$TravelerBookingCopyWithImpl<TravelerBooking>(this as TravelerBooking, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerBooking&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&const DeepCollectionEquality().equals(other.baggage, baggage)&&(identical(other.baggageTotalWeightKg, baggageTotalWeightKg) || other.baggageTotalWeightKg == baggageTotalWeightKg)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.isBoarded, isBoarded) || other.isBoarded == isBoarded)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.tripStatus, tripStatus) || other.tripStatus == tripStatus));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,ticketNumber,tripId,originCity,destinationCity,companyName,companySigle,departureTime,arrivalTime,passengerName,phone,seatNumber,const DeepCollectionEquality().hash(baggage),baggageTotalWeightKg,amount,paymentMethod,qrCode,status,statusDisplay,isBoarded,createdAt,tripStatus]);

@override
String toString() {
  return 'TravelerBooking(id: $id, ticketNumber: $ticketNumber, tripId: $tripId, originCity: $originCity, destinationCity: $destinationCity, companyName: $companyName, companySigle: $companySigle, departureTime: $departureTime, arrivalTime: $arrivalTime, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, baggage: $baggage, baggageTotalWeightKg: $baggageTotalWeightKg, amount: $amount, paymentMethod: $paymentMethod, qrCode: $qrCode, status: $status, statusDisplay: $statusDisplay, isBoarded: $isBoarded, createdAt: $createdAt, tripStatus: $tripStatus)';
}


}

/// @nodoc
abstract mixin class $TravelerBookingCopyWith<$Res>  {
  factory $TravelerBookingCopyWith(TravelerBooking value, $Res Function(TravelerBooking) _then) = _$TravelerBookingCopyWithImpl;
@useResult
$Res call({
 int id, String ticketNumber, int tripId, String originCity, String destinationCity, String companyName, String? companySigle, DateTime departureTime, DateTime? arrivalTime, String passengerName, String phone, String seatNumber, List<TravelerBaggageItem> baggage, String? baggageTotalWeightKg, String amount, String? paymentMethod, String? qrCode, BookingStatus? status, String statusDisplay, bool isBoarded, DateTime createdAt, TripStatusKind? tripStatus
});




}
/// @nodoc
class _$TravelerBookingCopyWithImpl<$Res>
    implements $TravelerBookingCopyWith<$Res> {
  _$TravelerBookingCopyWithImpl(this._self, this._then);

  final TravelerBooking _self;
  final $Res Function(TravelerBooking) _then;

/// Create a copy of TravelerBooking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? tripId = null,Object? originCity = null,Object? destinationCity = null,Object? companyName = null,Object? companySigle = freezed,Object? departureTime = null,Object? arrivalTime = freezed,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? baggage = null,Object? baggageTotalWeightKg = freezed,Object? amount = null,Object? paymentMethod = freezed,Object? qrCode = freezed,Object? status = freezed,Object? statusDisplay = null,Object? isBoarded = null,Object? createdAt = null,Object? tripStatus = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,baggage: null == baggage ? _self.baggage : baggage // ignore: cast_nullable_to_non_nullable
as List<TravelerBaggageItem>,baggageTotalWeightKg: freezed == baggageTotalWeightKg ? _self.baggageTotalWeightKg : baggageTotalWeightKg // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BookingStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,isBoarded: null == isBoarded ? _self.isBoarded : isBoarded // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,tripStatus: freezed == tripStatus ? _self.tripStatus : tripStatus // ignore: cast_nullable_to_non_nullable
as TripStatusKind?,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerBooking].
extension TravelerBookingPatterns on TravelerBooking {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerBooking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerBooking() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerBooking value)  $default,){
final _that = this;
switch (_that) {
case _TravelerBooking():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerBooking value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerBooking() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  int tripId,  String originCity,  String destinationCity,  String companyName,  String? companySigle,  DateTime departureTime,  DateTime? arrivalTime,  String passengerName,  String phone,  String seatNumber,  List<TravelerBaggageItem> baggage,  String? baggageTotalWeightKg,  String amount,  String? paymentMethod,  String? qrCode,  BookingStatus? status,  String statusDisplay,  bool isBoarded,  DateTime createdAt,  TripStatusKind? tripStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerBooking() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.tripId,_that.originCity,_that.destinationCity,_that.companyName,_that.companySigle,_that.departureTime,_that.arrivalTime,_that.passengerName,_that.phone,_that.seatNumber,_that.baggage,_that.baggageTotalWeightKg,_that.amount,_that.paymentMethod,_that.qrCode,_that.status,_that.statusDisplay,_that.isBoarded,_that.createdAt,_that.tripStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  int tripId,  String originCity,  String destinationCity,  String companyName,  String? companySigle,  DateTime departureTime,  DateTime? arrivalTime,  String passengerName,  String phone,  String seatNumber,  List<TravelerBaggageItem> baggage,  String? baggageTotalWeightKg,  String amount,  String? paymentMethod,  String? qrCode,  BookingStatus? status,  String statusDisplay,  bool isBoarded,  DateTime createdAt,  TripStatusKind? tripStatus)  $default,) {final _that = this;
switch (_that) {
case _TravelerBooking():
return $default(_that.id,_that.ticketNumber,_that.tripId,_that.originCity,_that.destinationCity,_that.companyName,_that.companySigle,_that.departureTime,_that.arrivalTime,_that.passengerName,_that.phone,_that.seatNumber,_that.baggage,_that.baggageTotalWeightKg,_that.amount,_that.paymentMethod,_that.qrCode,_that.status,_that.statusDisplay,_that.isBoarded,_that.createdAt,_that.tripStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String ticketNumber,  int tripId,  String originCity,  String destinationCity,  String companyName,  String? companySigle,  DateTime departureTime,  DateTime? arrivalTime,  String passengerName,  String phone,  String seatNumber,  List<TravelerBaggageItem> baggage,  String? baggageTotalWeightKg,  String amount,  String? paymentMethod,  String? qrCode,  BookingStatus? status,  String statusDisplay,  bool isBoarded,  DateTime createdAt,  TripStatusKind? tripStatus)?  $default,) {final _that = this;
switch (_that) {
case _TravelerBooking() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.tripId,_that.originCity,_that.destinationCity,_that.companyName,_that.companySigle,_that.departureTime,_that.arrivalTime,_that.passengerName,_that.phone,_that.seatNumber,_that.baggage,_that.baggageTotalWeightKg,_that.amount,_that.paymentMethod,_that.qrCode,_that.status,_that.statusDisplay,_that.isBoarded,_that.createdAt,_that.tripStatus);case _:
  return null;

}
}

}

/// @nodoc


class _TravelerBooking extends TravelerBooking {
  const _TravelerBooking({required this.id, required this.ticketNumber, required this.tripId, required this.originCity, required this.destinationCity, required this.companyName, this.companySigle, required this.departureTime, this.arrivalTime, required this.passengerName, required this.phone, required this.seatNumber, final  List<TravelerBaggageItem> baggage = const [], this.baggageTotalWeightKg, required this.amount, this.paymentMethod, this.qrCode, this.status, required this.statusDisplay, required this.isBoarded, required this.createdAt, this.tripStatus}): _baggage = baggage,super._();
  

@override final  int id;
@override final  String ticketNumber;
/// Identifiant du voyage (`BookingRead.trip.id`) — nécessaire pour lier un
/// avis (`ReviewCreate.trip`), distinct de l'id de la réservation.
@override final  int tripId;
@override final  String originCity;
@override final  String destinationCity;
/// Nom de la compagnie (via `trip.company_name`), pour l'en-tête du billet.
@override final  String companyName;
@override final  String? companySigle;
@override final  DateTime departureTime;
@override final  DateTime? arrivalTime;
@override final  String passengerName;
@override final  String phone;
@override final  String seatNumber;
/// Bagages enregistrés sur la réservation (`BookingRead.baggage`).
 final  List<TravelerBaggageItem> _baggage;
/// Bagages enregistrés sur la réservation (`BookingRead.baggage`).
@override@JsonKey() List<TravelerBaggageItem> get baggage {
  if (_baggage is EqualUnmodifiableListView) return _baggage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_baggage);
}

/// Poids total des bagages (chaîne, lecture seule) ; `null` si aucun.
@override final  String? baggageTotalWeightKg;
/// Montant payé, calculé et renvoyé par l'API (lecture seule, CLAUDE.md §13).
@override final  String amount;
/// Moyen de paiement (valeur technique) ou `null` si non payé.
@override final  String? paymentMethod;
/// QR du billet, image PNG encodée en base64 ; `null` tant que non émis.
@override final  String? qrCode;
@override final  BookingStatus? status;
@override final  String statusDisplay;
@override final  bool isBoarded;
@override final  DateTime createdAt;
/// Statut du voyage lui-même (`trip.status`) — voir [TripStatusKind].
@override final  TripStatusKind? tripStatus;

/// Create a copy of TravelerBooking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerBookingCopyWith<_TravelerBooking> get copyWith => __$TravelerBookingCopyWithImpl<_TravelerBooking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerBooking&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&const DeepCollectionEquality().equals(other._baggage, _baggage)&&(identical(other.baggageTotalWeightKg, baggageTotalWeightKg) || other.baggageTotalWeightKg == baggageTotalWeightKg)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.isBoarded, isBoarded) || other.isBoarded == isBoarded)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.tripStatus, tripStatus) || other.tripStatus == tripStatus));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,ticketNumber,tripId,originCity,destinationCity,companyName,companySigle,departureTime,arrivalTime,passengerName,phone,seatNumber,const DeepCollectionEquality().hash(_baggage),baggageTotalWeightKg,amount,paymentMethod,qrCode,status,statusDisplay,isBoarded,createdAt,tripStatus]);

@override
String toString() {
  return 'TravelerBooking(id: $id, ticketNumber: $ticketNumber, tripId: $tripId, originCity: $originCity, destinationCity: $destinationCity, companyName: $companyName, companySigle: $companySigle, departureTime: $departureTime, arrivalTime: $arrivalTime, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, baggage: $baggage, baggageTotalWeightKg: $baggageTotalWeightKg, amount: $amount, paymentMethod: $paymentMethod, qrCode: $qrCode, status: $status, statusDisplay: $statusDisplay, isBoarded: $isBoarded, createdAt: $createdAt, tripStatus: $tripStatus)';
}


}

/// @nodoc
abstract mixin class _$TravelerBookingCopyWith<$Res> implements $TravelerBookingCopyWith<$Res> {
  factory _$TravelerBookingCopyWith(_TravelerBooking value, $Res Function(_TravelerBooking) _then) = __$TravelerBookingCopyWithImpl;
@override @useResult
$Res call({
 int id, String ticketNumber, int tripId, String originCity, String destinationCity, String companyName, String? companySigle, DateTime departureTime, DateTime? arrivalTime, String passengerName, String phone, String seatNumber, List<TravelerBaggageItem> baggage, String? baggageTotalWeightKg, String amount, String? paymentMethod, String? qrCode, BookingStatus? status, String statusDisplay, bool isBoarded, DateTime createdAt, TripStatusKind? tripStatus
});




}
/// @nodoc
class __$TravelerBookingCopyWithImpl<$Res>
    implements _$TravelerBookingCopyWith<$Res> {
  __$TravelerBookingCopyWithImpl(this._self, this._then);

  final _TravelerBooking _self;
  final $Res Function(_TravelerBooking) _then;

/// Create a copy of TravelerBooking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? tripId = null,Object? originCity = null,Object? destinationCity = null,Object? companyName = null,Object? companySigle = freezed,Object? departureTime = null,Object? arrivalTime = freezed,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? baggage = null,Object? baggageTotalWeightKg = freezed,Object? amount = null,Object? paymentMethod = freezed,Object? qrCode = freezed,Object? status = freezed,Object? statusDisplay = null,Object? isBoarded = null,Object? createdAt = null,Object? tripStatus = freezed,}) {
  return _then(_TravelerBooking(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,baggage: null == baggage ? _self._baggage : baggage // ignore: cast_nullable_to_non_nullable
as List<TravelerBaggageItem>,baggageTotalWeightKg: freezed == baggageTotalWeightKg ? _self.baggageTotalWeightKg : baggageTotalWeightKg // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BookingStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,isBoarded: null == isBoarded ? _self.isBoarded : isBoarded // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,tripStatus: freezed == tripStatus ? _self.tripStatus : tripStatus // ignore: cast_nullable_to_non_nullable
as TripStatusKind?,
  ));
}


}

// dart format on
