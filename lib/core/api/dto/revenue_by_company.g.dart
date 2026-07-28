// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_by_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RevenueByCompany _$RevenueByCompanyFromJson(Map<String, dynamic> json) =>
    _RevenueByCompany(
      company: json['company'] as String,
      revenue: (json['revenue'] as num).toDouble(),
      commission: (json['commission'] as num).toDouble(),
    );

Map<String, dynamic> _$RevenueByCompanyToJson(_RevenueByCompany instance) =>
    <String, dynamic>{
      'company': instance.company,
      'revenue': instance.revenue,
      'commission': instance.commission,
    };
