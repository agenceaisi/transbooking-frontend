// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_route_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyRouteSummary _$CompanyRouteSummaryFromJson(Map<String, dynamic> json) =>
    _CompanyRouteSummary(
      id: (json['id'] as num).toInt(),
      originCityName: json['origin_city_name'] as String,
      destinationCityName: json['destination_city_name'] as String,
      basePrice: json['base_price'] as String,
      durationMinutes: (json['duration_minutes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CompanyRouteSummaryToJson(
  _CompanyRouteSummary instance,
) => <String, dynamic>{
  'id': instance.id,
  'origin_city_name': instance.originCityName,
  'destination_city_name': instance.destinationCityName,
  'base_price': instance.basePrice,
  'duration_minutes': instance.durationMinutes,
};
