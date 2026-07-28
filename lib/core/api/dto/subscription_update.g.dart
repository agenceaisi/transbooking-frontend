// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionUpdate _$SubscriptionUpdateFromJson(Map<String, dynamic> json) =>
    _SubscriptionUpdate(
      plan: (json['plan'] as num).toInt(),
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      status: $enumDecodeNullable(_$StatusEaaEnumEnumMap, json['status']),
      autoRenew: json['auto_renew'] as bool?,
    );

Map<String, dynamic> _$SubscriptionUpdateToJson(_SubscriptionUpdate instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'status': _$StatusEaaEnumEnumMap[instance.status],
      'auto_renew': instance.autoRenew,
    };

const _$StatusEaaEnumEnumMap = {
  StatusEaaEnum.active: 'active',
  StatusEaaEnum.expired: 'expired',
  StatusEaaEnum.cancelled: 'cancelled',
};
