// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopRoute _$TopRouteFromJson(Map<String, dynamic> json) => _TopRoute(
  route: json['route'] as String,
  revenue: (json['revenue'] as num).toDouble(),
  passengers: (json['passengers'] as num).toInt(),
);

Map<String, dynamic> _$TopRouteToJson(_TopRoute instance) => <String, dynamic>{
  'route': instance.route,
  'revenue': instance.revenue,
  'passengers': instance.passengers,
};
