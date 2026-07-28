// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Station _$StationFromJson(Map<String, dynamic> json) => _Station(
  id: (json['id'] as num).toInt(),
  city: (json['city'] as num).toInt(),
  cityName: json['city_name'] as String,
  name: json['name'] as String,
  address: json['address'] as String?,
  localisation: json['localisation'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StationToJson(_Station instance) => <String, dynamic>{
  'id': instance.id,
  'city': instance.city,
  'city_name': instance.cityName,
  'name': instance.name,
  'address': instance.address,
  'localisation': instance.localisation,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
