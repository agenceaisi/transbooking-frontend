// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentBreakdown _$PaymentBreakdownFromJson(Map<String, dynamic> json) =>
    _PaymentBreakdown(
      method: json['method'] as String,
      amount: (json['amount'] as num).toDouble(),
      pct: (json['pct'] as num).toDouble(),
    );

Map<String, dynamic> _$PaymentBreakdownToJson(_PaymentBreakdown instance) =>
    <String, dynamic>{
      'method': instance.method,
      'amount': instance.amount,
      'pct': instance.pct,
    };
