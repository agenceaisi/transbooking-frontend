// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_overview_delta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyOverviewDelta _$CompanyOverviewDeltaFromJson(
  Map<String, dynamic> json,
) => _CompanyOverviewDelta(
  revenueTotal: (json['revenue_total'] as num).toDouble(),
  fillRateAvg: (json['fill_rate_avg'] as num).toDouble(),
  bookingsCount: (json['bookings_count'] as num).toInt(),
);

Map<String, dynamic> _$CompanyOverviewDeltaToJson(
  _CompanyOverviewDelta instance,
) => <String, dynamic>{
  'revenue_total': instance.revenueTotal,
  'fill_rate_avg': instance.fillRateAvg,
  'bookings_count': instance.bookingsCount,
};
