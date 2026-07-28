// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baggage_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaggageWrite _$BaggageWriteFromJson(Map<String, dynamic> json) =>
    _BaggageWrite(
      label: json['label'] as String,
      weightKg: json['weight_kg'] as String,
      location: $enumDecodeNullable(_$LocationEnumEnumMap, json['location']),
    );

Map<String, dynamic> _$BaggageWriteToJson(_BaggageWrite instance) =>
    <String, dynamic>{
      'label': instance.label,
      'weight_kg': instance.weightKg,
      'location': _$LocationEnumEnumMap[instance.location],
    };

const _$LocationEnumEnumMap = {
  LocationEnum.hold: 'hold',
  LocationEnum.cabin: 'cabin',
};
