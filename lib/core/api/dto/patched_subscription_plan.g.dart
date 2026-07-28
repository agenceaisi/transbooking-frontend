// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_subscription_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedSubscriptionPlan _$PatchedSubscriptionPlanFromJson(
  Map<String, dynamic> json,
) => _PatchedSubscriptionPlan(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  price: json['price'] as String?,
  durationMonths: (json['duration_months'] as num?)?.toInt(),
  features: json['features'],
  isActive: json['is_active'] as bool?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$PatchedSubscriptionPlanToJson(
  _PatchedSubscriptionPlan instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  'duration_months': instance.durationMonths,
  'features': instance.features,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
};
