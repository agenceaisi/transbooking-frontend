// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_print.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketPrint {

@JsonKey(name: 'ticket_number') String get ticketNumber;@JsonKey(name: 'passenger_name') String get passengerName; String get phone;@JsonKey(name: 'seat_number') String get seatNumber; String get amount; String get status;@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'origin_city') String get originCity;@JsonKey(name: 'destination_city') String get destinationCity;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'qr_code') String get qrCode;@JsonKey(name: 'printed_at') DateTime get printedAt;@JsonKey(name: 'print_count') int get printCount;
/// Create a copy of TicketPrint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketPrintCopyWith<TicketPrint> get copyWith => _$TicketPrintCopyWithImpl<TicketPrint>(this as TicketPrint, _$identity);

  /// Serializes this TicketPrint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketPrint&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.printedAt, printedAt) || other.printedAt == printedAt)&&(identical(other.printCount, printCount) || other.printCount == printCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,passengerName,phone,seatNumber,amount,status,companyName,originCity,destinationCity,departureTime,qrCode,printedAt,printCount);

@override
String toString() {
  return 'TicketPrint(ticketNumber: $ticketNumber, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, amount: $amount, status: $status, companyName: $companyName, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, qrCode: $qrCode, printedAt: $printedAt, printCount: $printCount)';
}


}

/// @nodoc
abstract mixin class $TicketPrintCopyWith<$Res>  {
  factory $TicketPrintCopyWith(TicketPrint value, $Res Function(TicketPrint) _then) = _$TicketPrintCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'passenger_name') String passengerName, String phone,@JsonKey(name: 'seat_number') String seatNumber, String amount, String status,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'qr_code') String qrCode,@JsonKey(name: 'printed_at') DateTime printedAt,@JsonKey(name: 'print_count') int printCount
});




}
/// @nodoc
class _$TicketPrintCopyWithImpl<$Res>
    implements $TicketPrintCopyWith<$Res> {
  _$TicketPrintCopyWithImpl(this._self, this._then);

  final TicketPrint _self;
  final $Res Function(TicketPrint) _then;

/// Create a copy of TicketPrint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? amount = null,Object? status = null,Object? companyName = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? qrCode = null,Object? printedAt = null,Object? printCount = null,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,printedAt: null == printedAt ? _self.printedAt : printedAt // ignore: cast_nullable_to_non_nullable
as DateTime,printCount: null == printCount ? _self.printCount : printCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketPrint].
extension TicketPrintPatterns on TicketPrint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketPrint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketPrint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketPrint value)  $default,){
final _that = this;
switch (_that) {
case _TicketPrint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketPrint value)?  $default,){
final _that = this;
switch (_that) {
case _TicketPrint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber,  String amount,  String status, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'qr_code')  String qrCode, @JsonKey(name: 'printed_at')  DateTime printedAt, @JsonKey(name: 'print_count')  int printCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketPrint() when $default != null:
return $default(_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.status,_that.companyName,_that.originCity,_that.destinationCity,_that.departureTime,_that.qrCode,_that.printedAt,_that.printCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber,  String amount,  String status, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'qr_code')  String qrCode, @JsonKey(name: 'printed_at')  DateTime printedAt, @JsonKey(name: 'print_count')  int printCount)  $default,) {final _that = this;
switch (_that) {
case _TicketPrint():
return $default(_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.status,_that.companyName,_that.originCity,_that.destinationCity,_that.departureTime,_that.qrCode,_that.printedAt,_that.printCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'passenger_name')  String passengerName,  String phone, @JsonKey(name: 'seat_number')  String seatNumber,  String amount,  String status, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'qr_code')  String qrCode, @JsonKey(name: 'printed_at')  DateTime printedAt, @JsonKey(name: 'print_count')  int printCount)?  $default,) {final _that = this;
switch (_that) {
case _TicketPrint() when $default != null:
return $default(_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.amount,_that.status,_that.companyName,_that.originCity,_that.destinationCity,_that.departureTime,_that.qrCode,_that.printedAt,_that.printCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketPrint implements TicketPrint {
  const _TicketPrint({@JsonKey(name: 'ticket_number') required this.ticketNumber, @JsonKey(name: 'passenger_name') required this.passengerName, required this.phone, @JsonKey(name: 'seat_number') required this.seatNumber, required this.amount, required this.status, @JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'destination_city') required this.destinationCity, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'qr_code') required this.qrCode, @JsonKey(name: 'printed_at') required this.printedAt, @JsonKey(name: 'print_count') required this.printCount});
  factory _TicketPrint.fromJson(Map<String, dynamic> json) => _$TicketPrintFromJson(json);

@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override@JsonKey(name: 'passenger_name') final  String passengerName;
@override final  String phone;
@override@JsonKey(name: 'seat_number') final  String seatNumber;
@override final  String amount;
@override final  String status;
@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'origin_city') final  String originCity;
@override@JsonKey(name: 'destination_city') final  String destinationCity;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'qr_code') final  String qrCode;
@override@JsonKey(name: 'printed_at') final  DateTime printedAt;
@override@JsonKey(name: 'print_count') final  int printCount;

/// Create a copy of TicketPrint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketPrintCopyWith<_TicketPrint> get copyWith => __$TicketPrintCopyWithImpl<_TicketPrint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketPrintToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketPrint&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.printedAt, printedAt) || other.printedAt == printedAt)&&(identical(other.printCount, printCount) || other.printCount == printCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,passengerName,phone,seatNumber,amount,status,companyName,originCity,destinationCity,departureTime,qrCode,printedAt,printCount);

@override
String toString() {
  return 'TicketPrint(ticketNumber: $ticketNumber, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, amount: $amount, status: $status, companyName: $companyName, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, qrCode: $qrCode, printedAt: $printedAt, printCount: $printCount)';
}


}

/// @nodoc
abstract mixin class _$TicketPrintCopyWith<$Res> implements $TicketPrintCopyWith<$Res> {
  factory _$TicketPrintCopyWith(_TicketPrint value, $Res Function(_TicketPrint) _then) = __$TicketPrintCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'passenger_name') String passengerName, String phone,@JsonKey(name: 'seat_number') String seatNumber, String amount, String status,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'qr_code') String qrCode,@JsonKey(name: 'printed_at') DateTime printedAt,@JsonKey(name: 'print_count') int printCount
});




}
/// @nodoc
class __$TicketPrintCopyWithImpl<$Res>
    implements _$TicketPrintCopyWith<$Res> {
  __$TicketPrintCopyWithImpl(this._self, this._then);

  final _TicketPrint _self;
  final $Res Function(_TicketPrint) _then;

/// Create a copy of TicketPrint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? passengerName = null,Object? phone = null,Object? seatNumber = null,Object? amount = null,Object? status = null,Object? companyName = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? qrCode = null,Object? printedAt = null,Object? printCount = null,}) {
  return _then(_TicketPrint(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,printedAt: null == printedAt ? _self.printedAt : printedAt // ignore: cast_nullable_to_non_nullable
as DateTime,printCount: null == printCount ? _self.printCount : printCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
