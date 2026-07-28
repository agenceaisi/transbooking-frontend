// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_subscription_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedSubscriptionUpdate _$PatchedSubscriptionUpdateFromJson(
  Map<String, dynamic> json,
) => _PatchedSubscriptionUpdate(
  plan: (json['plan'] as num?)?.toInt(),
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  status: $enumDecodeNullable(_$StatusEaaEnumEnumMap, json['status']),
  autoRenew: json['auto_renew'] as bool?,
);

Map<String, dynamic> _$PatchedSubscriptionUpdateToJson(
  _PatchedSubscriptionUpdate instance,
) => <String, dynamic>{
  'plan': instance.plan,
  'start_date': instance.startDate?.toIso8601String(),
  'end_date': instance.endDate?.toIso8601String(),
  'status': _$StatusEaaEnumEnumMap[instance.status],
  'auto_renew': instance.autoRenew,
};

const _$StatusEaaEnumEnumMap = {
  StatusEaaEnum.active: 'active',
  StatusEaaEnum.expired: 'expired',
  StatusEaaEnum.cancelled: 'cancelled',
};
