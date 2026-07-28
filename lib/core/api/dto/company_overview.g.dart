// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyOverview _$CompanyOverviewFromJson(Map<String, dynamic> json) =>
    _CompanyOverview(
      period: json['period'] as String,
      revenueTotal: (json['revenue_total'] as num).toDouble(),
      fillRateAvg: (json['fill_rate_avg'] as num).toDouble(),
      bookingsCount: (json['bookings_count'] as num).toInt(),
      avgRating: (json['avg_rating'] as num?)?.toDouble(),
      vsPreviousPeriod: CompanyOverviewDelta.fromJson(
        json['vs_previous_period'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CompanyOverviewToJson(_CompanyOverview instance) =>
    <String, dynamic>{
      'period': instance.period,
      'revenue_total': instance.revenueTotal,
      'fill_rate_avg': instance.fillRateAvg,
      'bookings_count': instance.bookingsCount,
      'avg_rating': instance.avgRating,
      'vs_previous_period': instance.vsPreviousPeriod,
    };
