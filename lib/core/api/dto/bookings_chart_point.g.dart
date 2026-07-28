// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_chart_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingsChartPoint _$BookingsChartPointFromJson(Map<String, dynamic> json) =>
    _BookingsChartPoint(
      date: DateTime.parse(json['date'] as String),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$BookingsChartPointToJson(_BookingsChartPoint instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'count': instance.count,
    };
