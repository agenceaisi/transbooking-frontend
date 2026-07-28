// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingRead _$BookingReadFromJson(Map<String, dynamic> json) => _BookingRead(
  id: (json['id'] as num).toInt(),
  ticketNumber: json['ticket_number'] as String,
  trip: TripSummary.fromJson(json['trip'] as Map<String, dynamic>),
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  passengerName: json['passenger_name'] as String,
  phone: json['phone'] as String,
  seatNumber: json['seat_number'] as String,
  amount: json['amount'] as String,
  paymentMethod: json['payment_method'] as String?,
  qrCode: json['qr_code'] as String?,
  status: $enumDecodeNullable(_$StatusEe3EnumEnumMap, json['status']),
  statusDisplay: json['status_display'] as String,
  isOffline: json['is_offline'] as bool?,
  isBoarded: json['is_boarded'] as bool,
  baggage: (json['baggage'] as List<dynamic>)
      .map((e) => Baggage.fromJson(e as Map<String, dynamic>))
      .toList(),
  baggageTotalWeightKg: json['baggage_total_weight_kg'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$BookingReadToJson(_BookingRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket_number': instance.ticketNumber,
      'trip': instance.trip,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'passenger_name': instance.passengerName,
      'phone': instance.phone,
      'seat_number': instance.seatNumber,
      'amount': instance.amount,
      'payment_method': instance.paymentMethod,
      'qr_code': instance.qrCode,
      'status': _$StatusEe3EnumEnumMap[instance.status],
      'status_display': instance.statusDisplay,
      'is_offline': instance.isOffline,
      'is_boarded': instance.isBoarded,
      'baggage': instance.baggage,
      'baggage_total_weight_kg': instance.baggageTotalWeightKg,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$StatusEe3EnumEnumMap = {
  StatusEe3Enum.pending: 'pending',
  StatusEe3Enum.paid: 'paid',
  StatusEe3Enum.cancelled: 'cancelled',
  StatusEe3Enum.refunded: 'refunded',
};
