// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionCreate _$SubscriptionCreateFromJson(Map<String, dynamic> json) =>
    _SubscriptionCreate(
      company: (json['company'] as num).toInt(),
      plan: (json['plan'] as num).toInt(),
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      autoRenew: json['auto_renew'] as bool?,
    );

Map<String, dynamic> _$SubscriptionCreateToJson(_SubscriptionCreate instance) =>
    <String, dynamic>{
      'company': instance.company,
      'plan': instance.plan,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'auto_renew': instance.autoRenew,
    };
