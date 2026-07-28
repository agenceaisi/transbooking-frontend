// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_commission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyCommission _$CompanyCommissionFromJson(Map<String, dynamic> json) =>
    _CompanyCommission(
      companyId: (json['company_id'] as num).toInt(),
      companyName: json['company_name'] as String,
      commissionRate: json['commission_rate'] as String?,
    );

Map<String, dynamic> _$CompanyCommissionToJson(_CompanyCommission instance) =>
    <String, dynamic>{
      'company_id': instance.companyId,
      'company_name': instance.companyName,
      'commission_rate': instance.commissionRate,
    };
