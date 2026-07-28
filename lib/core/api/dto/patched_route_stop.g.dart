// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_route_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedRouteStop _$PatchedRouteStopFromJson(Map<String, dynamic> json) =>
    _PatchedRouteStop(
      id: (json['id'] as num?)?.toInt(),
      city: (json['city'] as num?)?.toInt(),
      cityName: json['city_name'] as String?,
      stopOrder: (json['stop_order'] as num?)?.toInt(),
      stopPrice: json['stop_price'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PatchedRouteStopToJson(_PatchedRouteStop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'city_name': instance.cityName,
      'stop_order': instance.stopOrder,
      'stop_price': instance.stopPrice,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
