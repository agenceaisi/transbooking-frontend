// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_booking_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfflineBookingRead {

@JsonKey(name: 'ticket_number') String get ticketNumber;@JsonKey(name: 'trip_id') int get tripId;@JsonKey(name: 'passenger_name') String get passengerName; String get phone;@JsonKey(name: 'seat_number') String get seatNumber;@JsonKey(name: 'qr_code') String? get qrCode; StatusEe3Enum? get status;
/// Create a copy of OfflineBookingRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineBookingReadCopyWith<OfflineBookingRead> get copyWith => _$OfflineBookingReadCopyWithImpl<OfflineBookingRead>(this as OfflineBookingRead, _$identity);

  /// Serializes this OfflineBookingRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineBookingRead&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,tripId,passengerName,phone,seatNumber,qrCode,status);

@override
String toString() {
  return 'OfflineBookingRead(ticketNumber: $ticketNumber, tripId: $tripId, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, qrCode: $qrCode, status: $status)';
}


}

/// @nodoc
abstract mixin class $OfflineBookingReadCopyWith<$Res>  {
  factory $OfflineBookingReadCopyWith(OfflineBookingRead value, $Res Function(OfflineBookingRead) _then) = _$OfflineBookingReadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'trip_id') int tripId,@JsonKey(name: 'passenger_name') String passengerName, String phone,@JsonKey(name: 'seat_number') String seatNumber,@JsonKey(name: 'qr_code') String? qrCode, StatusEe3Enum? status
});




}
/// @nodoc
class _$OfflineBookingReadCopyWithImpl<$Res>
    implements $OfflineBookingReadCopyWith<$Res> {
  _$OfflineBookingReadCopyWithImpl(this._self, this._then);

  final OfflineBookingRead _self;
  final $Res Function(OfflineBookingRead) _then;

/// Create a copy of OfflineBookingRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? tripId = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? qrCode = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEe3Enum?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfflineBookingRead].
extension OfflineBookingReadPatterns on OfflineBookingRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineBookingRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineBookingRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineBookingRead value)  $default,){
final _that = this;
switch (_that) {
case _OfflineBookingRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineBookingRead value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineBookingRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'trip_id')  int tripId, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber, @JsonKey(name: 'qr_code')  String? qrCode,  StatusEe3Enum? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineBookingRead() when $default != null:
return $default(_that.ticketNumber,_that.tripId,_that.passengerName,_that.phone,_that.seatNumber,_that.qrCode,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'trip_id')  int tripId, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber, @JsonKey(name: 'qr_code')  String? qrCode,  StatusEe3Enum? status)  $default,) {final _that = this;
switch (_that) {
case _OfflineBookingRead():
return $default(_that.ticketNumber,_that.tripId,_that.passengerName,_that.phone,_that.seatNumber,_that.qrCode,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'trip_id')  int tripId, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber, @JsonKey(name: 'qr_code')  String? qrCode,  StatusEe3Enum? status)?  $default,) {final _that = this;
switch (_that) {
case _OfflineBookingRead() when $default != null:
return $default(_that.ticketNumber,_that.tripId,_that.passengerName,_that.phone,_that.seatNumber,_that.qrCode,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineBookingRead implements OfflineBookingRead {
  const _OfflineBookingRead({@JsonKey(name: 'ticket_number') required this.ticketNumber, @JsonKey(name: 'trip_id') required this.tripId, @JsonKey(name: 'passenger_name') required this.passengerName, required this.phone, @JsonKey(name: 'seat_number') required this.seatNumber, @JsonKey(name: 'qr_code') this.qrCode, this.status});
  factory _OfflineBookingRead.fromJson(Map<String, dynamic> json) => _$OfflineBookingReadFromJson(json);

@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override@JsonKey(name: 'trip_id') final  int tripId;
@override@JsonKey(name: 'passenger_name') final  String passengerName;
@override final  String phone;
@override@JsonKey(name: 'seat_number') final  String seatNumber;
@override@JsonKey(name: 'qr_code') final  String? qrCode;
@override final  StatusEe3Enum? status;

/// Create a copy of OfflineBookingRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineBookingReadCopyWith<_OfflineBookingRead> get copyWith => __$OfflineBookingReadCopyWithImpl<_OfflineBookingRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineBookingReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineBookingRead&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,tripId,passengerName,phone,seatNumber,qrCode,status);

@override
String toString() {
  return 'OfflineBookingRead(ticketNumber: $ticketNumber, tripId: $tripId, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, qrCode: $qrCode, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OfflineBookingReadCopyWith<$Res> implements $OfflineBookingReadCopyWith<$Res> {
  factory _$OfflineBookingReadCopyWith(_OfflineBookingRead value, $Res Function(_OfflineBookingRead) _then) = __$OfflineBookingReadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'trip_id') int tripId,@JsonKey(name: 'passenger_name') String passengerName, String phone,@JsonKey(name: 'seat_number') String seatNumber,@JsonKey(name: 'qr_code') String? qrCode, StatusEe3Enum? status
});




}
/// @nodoc
class __$OfflineBookingReadCopyWithImpl<$Res>
    implements _$OfflineBookingReadCopyWith<$Res> {
  __$OfflineBookingReadCopyWithImpl(this._self, this._then);

  final _OfflineBookingRead _self;
  final $Res Function(_OfflineBookingRead) _then;

/// Create a copy of OfflineBookingRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? tripId = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? qrCode = freezed,Object? status = freezed,}) {
  return _then(_OfflineBookingRead(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEe3Enum?,
  ));
}


}

// dart format on
