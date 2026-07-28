// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingCreate _$BookingCreateFromJson(Map<String, dynamic> json) =>
    _BookingCreate(
      trip: (json['trip'] as num).toInt(),
      seatNumber: json['seat_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$BookingCreateToJson(_BookingCreate instance) =>
    <String, dynamic>{
      'trip': instance.trip,
      'seat_number': instance.seatNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
    };
