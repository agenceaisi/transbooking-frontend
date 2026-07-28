// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteStop _$RouteStopFromJson(Map<String, dynamic> json) => _RouteStop(
  id: (json['id'] as num).toInt(),
  city: (json['city'] as num).toInt(),
  cityName: json['city_name'] as String,
  stopOrder: (json['stop_order'] as num).toInt(),
  stopPrice: json['stop_price'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$RouteStopToJson(_RouteStop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'city_name': instance.cityName,
      'stop_order': instance.stopOrder,
      'stop_price': instance.stopPrice,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
