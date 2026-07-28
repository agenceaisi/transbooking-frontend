// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionInvoice _$SubscriptionInvoiceFromJson(Map<String, dynamic> json) =>
    _SubscriptionInvoice(
      id: (json['id'] as num).toInt(),
      reference: json['reference'] as String,
      subscription: (json['subscription'] as num).toInt(),
      planName: json['plan_name'] as String,
      amount: json['amount'] as String,
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$SubscriptionInvoiceToJson(
  _SubscriptionInvoice instance,
) => <String, dynamic>{
  'id': instance.id,
  'reference': instance.reference,
  'subscription': instance.subscription,
  'plan_name': instance.planName,
  'amount': instance.amount,
  'paid_at': instance.paidAt?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
};
