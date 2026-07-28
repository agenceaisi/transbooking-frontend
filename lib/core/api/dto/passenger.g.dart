// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Passenger _$PassengerFromJson(Map<String, dynamic> json) => _Passenger(
  id: (json['id'] as num).toInt(),
  fullName: json['full_name'] as String,
  phone: json['phone'] as String,
);

Map<String, dynamic> _$PassengerToJson(_Passenger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'phone': instance.phone,
    };
