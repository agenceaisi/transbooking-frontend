// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripWrite _$TripWriteFromJson(Map<String, dynamic> json) => _TripWrite(
  id: (json['id'] as num).toInt(),
  route: (json['route'] as num).toInt(),
  vehicle: (json['vehicle'] as num).toInt(),
  departureTime: DateTime.parse(json['departure_time'] as String),
  arrivalTime: json['arrival_time'] == null
      ? null
      : DateTime.parse(json['arrival_time'] as String),
  price: json['price'] as String?,
  status: $enumDecodeNullable(_$StatusF60EnumEnumMap, json['status']),
  cancellationReason: json['cancellation_reason'] as String,
);

Map<String, dynamic> _$TripWriteToJson(_TripWrite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'route': instance.route,
      'vehicle': instance.vehicle,
      'departure_time': instance.departureTime.toIso8601String(),
      'arrival_time': instance.arrivalTime?.toIso8601String(),
      'price': instance.price,
      'status': _$StatusF60EnumEnumMap[instance.status],
      'cancellation_reason': instance.cancellationReason,
    };

const _$StatusF60EnumEnumMap = {
  StatusF60Enum.scheduled: 'scheduled',
  StatusF60Enum.inProgress: 'in_progress',
  StatusF60Enum.delayed: 'delayed',
  StatusF60Enum.cancelled: 'cancelled',
  StatusF60Enum.completed: 'completed',
};
