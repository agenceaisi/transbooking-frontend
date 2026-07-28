// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuperOverview _$SuperOverviewFromJson(Map<String, dynamic> json) =>
    _SuperOverview(
      totalCompanies: (json['total_companies'] as num).toInt(),
      activeCompanies: (json['active_companies'] as num).toInt(),
      totalBookings: (json['total_bookings'] as num).toInt(),
      totalCommissionRevenue: (json['total_commission_revenue'] as num)
          .toDouble(),
      activeUsers: (json['active_users'] as num).toInt(),
    );

Map<String, dynamic> _$SuperOverviewToJson(_SuperOverview instance) =>
    <String, dynamic>{
      'total_companies': instance.totalCompanies,
      'active_companies': instance.activeCompanies,
      'total_bookings': instance.totalBookings,
      'total_commission_revenue': instance.totalCommissionRevenue,
      'active_users': instance.activeUsers,
    };
