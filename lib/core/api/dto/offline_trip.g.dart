// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfflineTrip _$OfflineTripFromJson(Map<String, dynamic> json) => _OfflineTrip(
  id: (json['id'] as num).toInt(),
  originCity: json['origin_city'] as String,
  destinationCity: json['destination_city'] as String,
  departureTime: DateTime.parse(json['departure_time'] as String),
  availableSeats: (json['available_seats'] as num?)?.toInt(),
  vehicle: json['vehicle'] as String,
  seatPlan: json['seat_plan'],
  status: $enumDecodeNullable(_$StatusF60EnumEnumMap, json['status']),
);

Map<String, dynamic> _$OfflineTripToJson(_OfflineTrip instance) =>
    <String, dynamic>{
      'id': instance.id,
      'origin_city': instance.originCity,
      'destination_city': instance.destinationCity,
      'departure_time': instance.departureTime.toIso8601String(),
      'available_seats': instance.availableSeats,
      'vehicle': instance.vehicle,
      'seat_plan': instance.seatPlan,
      'status': _$StatusF60EnumEnumMap[instance.status],
    };

const _$StatusF60EnumEnumMap = {
  StatusF60Enum.scheduled: 'scheduled',
  StatusF60Enum.inProgress: 'in_progress',
  StatusF60Enum.delayed: 'delayed',
  StatusF60Enum.cancelled: 'cancelled',
  StatusF60Enum.completed: 'completed',
};
