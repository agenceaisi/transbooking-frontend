// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RevenuePoint _$RevenuePointFromJson(Map<String, dynamic> json) =>
    _RevenuePoint(
      date: DateTime.parse(json['date'] as String),
      revenue: (json['revenue'] as num).toDouble(),
    );

Map<String, dynamic> _$RevenuePointToJson(_RevenuePoint instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'revenue': instance.revenue,
    };
