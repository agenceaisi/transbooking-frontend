// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baggage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Baggage _$BaggageFromJson(Map<String, dynamic> json) => _Baggage(
  id: (json['id'] as num).toInt(),
  label: json['label'] as String,
  tag: json['tag'] as String,
  weightKg: json['weight_kg'] as String,
  location: $enumDecodeNullable(_$LocationEnumEnumMap, json['location']),
  locationDisplay: json['location_display'] as String,
);

Map<String, dynamic> _$BaggageToJson(_Baggage instance) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'tag': instance.tag,
  'weight_kg': instance.weightKg,
  'location': _$LocationEnumEnumMap[instance.location],
  'location_display': instance.locationDisplay,
};

const _$LocationEnumEnumMap = {
  LocationEnum.hold: 'hold',
  LocationEnum.cabin: 'cabin',
};
