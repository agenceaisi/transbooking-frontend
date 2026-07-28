// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingRead {

 int get id;@JsonKey(name: 'ticket_number') String get ticketNumber; TripSummary get trip;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'passenger_name') String get passengerName; String get phone;@JsonKey(name: 'seat_number') String get seatNumber; String get amount;@JsonKey(name: 'payment_method') String? get paymentMethod;@JsonKey(name: 'qr_code') String? get qrCode; StatusEe3Enum? get status;@JsonKey(name: 'status_display') String get statusDisplay;@JsonKey(name: 'is_offline') bool? get isOffline;@JsonKey(name: 'is_boarded') bool get isBoarded; List<Baggage> get baggage;@JsonKey(name: 'baggage_total_weight_kg') String get baggageTotalWeightKg;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of BookingRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingReadCopyWith<BookingRead> get copyWith => _$BookingReadCopyWithImpl<BookingRead>(this as BookingRead, _$identity);

  /// Serializes this BookingRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingRead&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.isBoarded, isBoarded) || other.isBoarded == isBoarded)&&const DeepCollectionEquality().equals(other.baggage, baggage)&&(identical(other.baggageTotalWeightKg, baggageTotalWeightKg) || other.baggageTotalWeightKg == baggageTotalWeightKg)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,ticketNumber,trip,firstName,lastName,passengerName,phone,seatNumber,amount,paymentMethod,qrCode,status,statusDisplay,isOffline,isBoarded,const DeepCollectionEquality().hash(baggage),baggageTotalWeightKg,createdAt,updatedAt]);

@override
String toString() {
  return 'BookingRead(id: $id, ticketNumber: $ticketNumber, trip: $trip, firstName: $firstName, lastName: $lastName, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, amount: $amount, paymentMethod: $paymentMethod, qrCode: $qrCode, status: $status, statusDisplay: $statusDisplay, isOffline: $isOffline, isBoarded: $isBoarded, baggage: $baggage, baggageTotalWeightKg: $baggageTotalWeightKg, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BookingReadCopyWith<$Res>  {
  factory $BookingReadCopyWith(BookingRead value, $Res Function(BookingRead) _then) = _$BookingReadCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber, TripSummary trip,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'passenger_name') String passengerName, String phone,@JsonKey(name: 'seat_number') String seatNumber, String amount,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'qr_code') String? qrCode, StatusEe3Enum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'is_offline') bool? isOffline,@JsonKey(name: 'is_boarded') bool isBoarded, List<Baggage> baggage,@JsonKey(name: 'baggage_total_weight_kg') String baggageTotalWeightKg,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});


$TripSummaryCopyWith<$Res> get trip;

}
/// @nodoc
class _$BookingReadCopyWithImpl<$Res>
    implements $BookingReadCopyWith<$Res> {
  _$BookingReadCopyWithImpl(this._self, this._then);

  final BookingRead _self;
  final $Res Function(BookingRead) _then;

/// Create a copy of BookingRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? trip = null,Object? firstName = null,Object? lastName = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? amount = null,Object? paymentMethod = freezed,Object? qrCode = freezed,Object? status = freezed,Object? statusDisplay = null,Object? isOffline = freezed,Object? isBoarded = null,Object? baggage = null,Object? baggageTotalWeightKg = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as TripSummary,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEe3Enum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,isBoarded: null == isBoarded ? _self.isBoarded : isBoarded // ignore: cast_nullable_to_non_nullable
as bool,baggage: null == baggage ? _self.baggage : baggage // ignore: cast_nullable_to_non_nullable
as List<Baggage>,baggageTotalWeightKg: null == baggageTotalWeightKg ? _self.baggageTotalWeightKg : baggageTotalWeightKg // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of BookingRead
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripSummaryCopyWith<$Res> get trip {
  
  return $TripSummaryCopyWith<$Res>(_self.trip, (value) {
    return _then(_self.copyWith(trip: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingRead].
extension BookingReadPatterns on BookingRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingRead value)  $default,){
final _that = this;
switch (_that) {
case _BookingRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingRead value)?  $default,){
final _that = this;
switch (_that) {
case _BookingRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  TripSummary trip, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber,  String amount, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'qr_code')  String? qrCode,  StatusEe3Enum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'is_offline')  bool? isOffline, @JsonKey(name: 'is_boarded')  bool isBoarded,  List<Baggage> baggage, @JsonKey(name: 'baggage_total_weight_kg')  String baggageTotalWeightKg, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingRead() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.trip,_that.firstName,_that.lastName,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.qrCode,_that.status,_that.statusDisplay,_that.isOffline,_that.isBoarded,_that.baggage,_that.baggageTotalWeightKg,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  TripSummary trip, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber,  String amount, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'qr_code')  String? qrCode,  StatusEe3Enum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'is_offline')  bool? isOffline, @JsonKey(name: 'is_boarded')  bool isBoarded,  List<Baggage> baggage, @JsonKey(name: 'baggage_total_weight_kg')  String baggageTotalWeightKg, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BookingRead():
return $default(_that.id,_that.ticketNumber,_that.trip,_that.firstName,_that.lastName,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.qrCode,_that.status,_that.statusDisplay,_that.isOffline,_that.isBoarded,_that.baggage,_that.baggageTotalWeightKg,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  TripSummary trip, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber,  String amount, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'qr_code')  String? qrCode,  StatusEe3Enum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'is_offline')  bool? isOffline, @JsonKey(name: 'is_boarded')  bool isBoarded,  List<Baggage> baggage, @JsonKey(name: 'baggage_total_weight_kg')  String baggageTotalWeightKg, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BookingRead() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.trip,_that.firstName,_that.lastName,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.qrCode,_that.status,_that.statusDisplay,_that.isOffline,_that.isBoarded,_that.baggage,_that.baggageTotalWeightKg,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingRead implements BookingRead {
  const _BookingRead({required this.id, @JsonKey(name: 'ticket_number') required this.ticketNumber, required this.trip, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'passenger_name') required this.passengerName, required this.phone, @JsonKey(name: 'seat_number') required this.seatNumber, required this.amount, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'qr_code') this.qrCode, this.status, @JsonKey(name: 'status_display') required this.statusDisplay, @JsonKey(name: 'is_offline') this.isOffline, @JsonKey(name: 'is_boarded') required this.isBoarded, required final  List<Baggage> baggage, @JsonKey(name: 'baggage_total_weight_kg') required this.baggageTotalWeightKg, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _baggage = baggage;
  factory _BookingRead.fromJson(Map<String, dynamic> json) => _$BookingReadFromJson(json);

@override final  int id;
@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override final  TripSummary trip;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'passenger_name') final  String passengerName;
@override final  String phone;
@override@JsonKey(name: 'seat_number') final  String seatNumber;
@override final  String amount;
@override@JsonKey(name: 'payment_method') final  String? paymentMethod;
@override@JsonKey(name: 'qr_code') final  String? qrCode;
@override final  StatusEe3Enum? status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override@JsonKey(name: 'is_offline') final  bool? isOffline;
@override@JsonKey(name: 'is_boarded') final  bool isBoarded;
 final  List<Baggage> _baggage;
@override List<Baggage> get baggage {
  if (_baggage is EqualUnmodifiableListView) return _baggage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_baggage);
}

@override@JsonKey(name: 'baggage_total_weight_kg') final  String baggageTotalWeightKg;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of BookingRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingReadCopyWith<_BookingRead> get copyWith => __$BookingReadCopyWithImpl<_BookingRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingRead&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.isBoarded, isBoarded) || other.isBoarded == isBoarded)&&const DeepCollectionEquality().equals(other._baggage, _baggage)&&(identical(other.baggageTotalWeightKg, baggageTotalWeightKg) || other.baggageTotalWeightKg == baggageTotalWeightKg)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,ticketNumber,trip,firstName,lastName,passengerName,phone,seatNumber,amount,paymentMethod,qrCode,status,statusDisplay,isOffline,isBoarded,const DeepCollectionEquality().hash(_baggage),baggageTotalWeightKg,createdAt,updatedAt]);

@override
String toString() {
  return 'BookingRead(id: $id, ticketNumber: $ticketNumber, trip: $trip, firstName: $firstName, lastName: $lastName, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, amount: $amount, paymentMethod: $paymentMethod, qrCode: $qrCode, status: $status, statusDisplay: $statusDisplay, isOffline: $isOffline, isBoarded: $isBoarded, baggage: $baggage, baggageTotalWeightKg: $baggageTotalWeightKg, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BookingReadCopyWith<$Res> implements $BookingReadCopyWith<$Res> {
  factory _$BookingReadCopyWith(_BookingRead value, $Res Function(_BookingRead) _then) = __$BookingReadCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber, TripSummary trip,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'passenger_name') String passengerName, String phone,@JsonKey(name: 'seat_number') String seatNumber, String amount,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'qr_code') String? qrCode, StatusEe3Enum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'is_offline') bool? isOffline,@JsonKey(name: 'is_boarded') bool isBoarded, List<Baggage> baggage,@JsonKey(name: 'baggage_total_weight_kg') String baggageTotalWeightKg,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});


@override $TripSummaryCopyWith<$Res> get trip;

}
/// @nodoc
class __$BookingReadCopyWithImpl<$Res>
    implements _$BookingReadCopyWith<$Res> {
  __$BookingReadCopyWithImpl(this._self, this._then);

  final _BookingRead _self;
  final $Res Function(_BookingRead) _then;

/// Create a copy of BookingRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? trip = null,Object? firstName = null,Object? lastName = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? amount = null,Object? paymentMethod = freezed,Object? qrCode = freezed,Object? status = freezed,Object? statusDisplay = null,Object? isOffline = freezed,Object? isBoarded = null,Object? baggage = null,Object? baggageTotalWeightKg = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_BookingRead(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as TripSummary,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEe3Enum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,isBoarded: null == isBoarded ? _self.isBoarded : isBoarded // ignore: cast_nullable_to_non_nullable
as bool,baggage: null == baggage ? _self._baggage : baggage // ignore: cast_nullable_to_non_nullable
as List<Baggage>,baggageTotalWeightKg: null == baggageTotalWeightKg ? _self.baggageTotalWeightKg : baggageTotalWeightKg // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of BookingRead
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripSummaryCopyWith<$Res> get trip {
  
  return $TripSummaryCopyWith<$Res>(_self.trip, (value) {
    return _then(_self.copyWith(trip: value));
  });
}
}

// dart format on
