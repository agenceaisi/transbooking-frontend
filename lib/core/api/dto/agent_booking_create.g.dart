// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_booking_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentBookingCreate _$AgentBookingCreateFromJson(Map<String, dynamic> json) =>
    _AgentBookingCreate(
      trip: (json['trip'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      seatNumber: json['seat_number'] as String?,
      amount: json['amount'] as String?,
      paymentMethod: json['payment_method'] as String,
      transactionRef: json['transaction_ref'] as String?,
      ticketNumber: json['ticket_number'] as String?,
      isOffline: json['is_offline'] as bool?,
      offlineCreatedAt: json['offline_created_at'] == null
          ? null
          : DateTime.parse(json['offline_created_at'] as String),
      baggage: (json['baggage'] as List<dynamic>?)
          ?.map((e) => BaggageWrite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AgentBookingCreateToJson(_AgentBookingCreate instance) =>
    <String, dynamic>{
      'trip': instance.trip,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'seat_number': instance.seatNumber,
      'amount': instance.amount,
      'payment_method': instance.paymentMethod,
      'transaction_ref': instance.transactionRef,
      'ticket_number': instance.ticketNumber,
      'is_offline': instance.isOffline,
      'offline_created_at': instance.offlineCreatedAt?.toIso8601String(),
      'baggage': instance.baggage,
    };
