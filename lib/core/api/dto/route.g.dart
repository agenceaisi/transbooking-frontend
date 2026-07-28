// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
  id: (json['id'] as num).toInt(),
  originCity: (json['origin_city'] as num).toInt(),
  originCityName: json['origin_city_name'] as String,
  destinationCity: (json['destination_city'] as num).toInt(),
  destinationCityName: json['destination_city_name'] as String,
  originStation: (json['origin_station'] as num?)?.toInt(),
  destinationStation: (json['destination_station'] as num?)?.toInt(),
  distanceKm: json['distance_km'] as String?,
  basePrice: json['base_price'] as String,
  durationMinutes: (json['duration_minutes'] as num?)?.toInt(),
  isActive: json['is_active'] as bool?,
  stops: (json['stops'] as List<dynamic>)
      .map((e) => RouteStop.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$RouteToJson(_Route instance) => <String, dynamic>{
  'id': instance.id,
  'origin_city': instance.originCity,
  'origin_city_name': instance.originCityName,
  'destination_city': instance.destinationCity,
  'destination_city_name': instance.destinationCityName,
  'origin_station': instance.originStation,
  'destination_station': instance.destinationStation,
  'distance_km': instance.distanceKm,
  'base_price': instance.basePrice,
  'duration_minutes': instance.durationMinutes,
  'is_active': instance.isActive,
  'stops': instance.stops,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
