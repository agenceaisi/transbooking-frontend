// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfflineBooking _$OfflineBookingFromJson(Map<String, dynamic> json) =>
    _OfflineBooking(
      ticketNumber: json['ticket_number'] as String,
      tripId: (json['trip_id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      seatNumber: json['seat_number'] as String?,
      amount: json['amount'] as String?,
      paymentMethod: json['payment_method'] as String?,
      transactionRef: json['transaction_ref'] as String?,
      offlineCreatedAt: DateTime.parse(json['offline_created_at'] as String),
    );

Map<String, dynamic> _$OfflineBookingToJson(_OfflineBooking instance) =>
    <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'trip_id': instance.tripId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'seat_number': instance.seatNumber,
      'amount': instance.amount,
      'payment_method': instance.paymentMethod,
      'transaction_ref': instance.transactionRef,
      'offline_created_at': instance.offlineCreatedAt.toIso8601String(),
    };
