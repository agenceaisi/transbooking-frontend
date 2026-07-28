// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedStation _$PatchedStationFromJson(Map<String, dynamic> json) =>
    _PatchedStation(
      id: (json['id'] as num?)?.toInt(),
      city: (json['city'] as num?)?.toInt(),
      cityName: json['city_name'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      localisation: json['localisation'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PatchedStationToJson(_PatchedStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'city_name': instance.cityName,
      'name': instance.name,
      'address': instance.address,
      'localisation': instance.localisation,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
