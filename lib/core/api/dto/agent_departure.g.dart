// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_departure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentDeparture _$AgentDepartureFromJson(Map<String, dynamic> json) =>
    _AgentDeparture(
      tripId: (json['trip_id'] as num).toInt(),
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      departureTime: DateTime.parse(json['departure_time'] as String),
      availableSeats: (json['available_seats'] as num).toInt(),
      passengerCount: (json['passenger_count'] as num).toInt(),
    );

Map<String, dynamic> _$AgentDepartureToJson(_AgentDeparture instance) =>
    <String, dynamic>{
      'trip_id': instance.tripId,
      'origin': instance.origin,
      'destination': instance.destination,
      'departure_time': instance.departureTime.toIso8601String(),
      'available_seats': instance.availableSeats,
      'passenger_count': instance.passengerCount,
    };
