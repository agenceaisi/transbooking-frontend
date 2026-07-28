// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionRead _$SubscriptionReadFromJson(Map<String, dynamic> json) =>
    _SubscriptionRead(
      id: (json['id'] as num).toInt(),
      company: (json['company'] as num).toInt(),
      companyName: json['company_name'] as String,
      plan: SubscriptionPlan.fromJson(json['plan'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      status: $enumDecodeNullable(_$StatusEaaEnumEnumMap, json['status']),
      statusDisplay: json['status_display'] as String,
      autoRenew: json['auto_renew'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$SubscriptionReadToJson(_SubscriptionRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'company_name': instance.companyName,
      'plan': instance.plan,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'status': _$StatusEaaEnumEnumMap[instance.status],
      'status_display': instance.statusDisplay,
      'auto_renew': instance.autoRenew,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$StatusEaaEnumEnumMap = {
  StatusEaaEnum.active: 'active',
  StatusEaaEnum.expired: 'expired',
  StatusEaaEnum.cancelled: 'cancelled',
};
