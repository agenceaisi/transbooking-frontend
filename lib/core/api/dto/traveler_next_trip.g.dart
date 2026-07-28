// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveler_next_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelerNextTrip _$TravelerNextTripFromJson(Map<String, dynamic> json) =>
    _TravelerNextTrip(
      ticketNumber: json['ticket_number'] as String,
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      departureTime: DateTime.parse(json['departure_time'] as String),
      seatNumber: json['seat_number'] as String,
      status: json['status'] as String,
      companyName: json['company_name'] as String,
      companySigle: json['company_sigle'] as String?,
    );

Map<String, dynamic> _$TravelerNextTripToJson(_TravelerNextTrip instance) =>
    <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'origin': instance.origin,
      'destination': instance.destination,
      'departure_time': instance.departureTime.toIso8601String(),
      'seat_number': instance.seatNumber,
      'status': instance.status,
      'company_name': instance.companyName,
      'company_sigle': instance.companySigle,
    };
