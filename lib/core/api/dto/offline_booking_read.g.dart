// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_booking_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfflineBookingRead _$OfflineBookingReadFromJson(Map<String, dynamic> json) =>
    _OfflineBookingRead(
      ticketNumber: json['ticket_number'] as String,
      tripId: (json['trip_id'] as num).toInt(),
      passengerName: json['passenger_name'] as String,
      phone: json['phone'] as String,
      seatNumber: json['seat_number'] as String,
      qrCode: json['qr_code'] as String?,
      status: $enumDecodeNullable(_$StatusEe3EnumEnumMap, json['status']),
    );

Map<String, dynamic> _$OfflineBookingReadToJson(_OfflineBookingRead instance) =>
    <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'trip_id': instance.tripId,
      'passenger_name': instance.passengerName,
      'phone': instance.phone,
      'seat_number': instance.seatNumber,
      'qr_code': instance.qrCode,
      'status': _$StatusEe3EnumEnumMap[instance.status],
    };

const _$StatusEe3EnumEnumMap = {
  StatusEe3Enum.pending: 'pending',
  StatusEe3Enum.paid: 'paid',
  StatusEe3Enum.cancelled: 'cancelled',
  StatusEe3Enum.refunded: 'refunded',
};
