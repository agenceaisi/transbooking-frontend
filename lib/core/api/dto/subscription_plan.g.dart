// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionPlan _$SubscriptionPlanFromJson(Map<String, dynamic> json) =>
    _SubscriptionPlan(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      price: json['price'] as String?,
      durationMonths: (json['duration_months'] as num?)?.toInt(),
      features: json['features'],
      isActive: json['is_active'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$SubscriptionPlanToJson(_SubscriptionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'duration_months': instance.durationMonths,
      'features': instance.features,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
    };
