// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_City _$CityFromJson(Map<String, dynamic> json) => _City(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  region: json['region'] as String?,
);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'region': instance.region,
};
