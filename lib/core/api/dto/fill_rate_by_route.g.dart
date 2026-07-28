// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fill_rate_by_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FillRateByRoute _$FillRateByRouteFromJson(Map<String, dynamic> json) =>
    _FillRateByRoute(
      routeLabel: json['route_label'] as String,
      fillRatePct: (json['fill_rate_pct'] as num).toDouble(),
    );

Map<String, dynamic> _$FillRateByRouteToJson(_FillRateByRoute instance) =>
    <String, dynamic>{
      'route_label': instance.routeLabel,
      'fill_rate_pct': instance.fillRatePct,
    };
