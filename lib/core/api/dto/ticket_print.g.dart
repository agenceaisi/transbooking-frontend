// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_print.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketPrint _$TicketPrintFromJson(Map<String, dynamic> json) => _TicketPrint(
  ticketNumber: json['ticket_number'] as String,
  passengerName: json['passenger_name'] as String,
  phone: json['phone'] as String,
  seatNumber: json['seat_number'] as String,
  amount: json['amount'] as String,
  status: json['status'] as String,
  companyName: json['company_name'] as String,
  originCity: json['origin_city'] as String,
  destinationCity: json['destination_city'] as String,
  departureTime: DateTime.parse(json['departure_time'] as String),
  qrCode: json['qr_code'] as String,
  printedAt: DateTime.parse(json['printed_at'] as String),
  printCount: (json['print_count'] as num).toInt(),
);

Map<String, dynamic> _$TicketPrintToJson(_TicketPrint instance) =>
    <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'passenger_name': instance.passengerName,
      'phone': instance.phone,
      'seat_number': instance.seatNumber,
      'amount': instance.amount,
      'status': instance.status,
      'company_name': instance.companyName,
      'origin_city': instance.originCity,
      'destination_city': instance.destinationCity,
      'departure_time': instance.departureTime.toIso8601String(),
      'qr_code': instance.qrCode,
      'printed_at': instance.printedAt.toIso8601String(),
      'print_count': instance.printCount,
    };
