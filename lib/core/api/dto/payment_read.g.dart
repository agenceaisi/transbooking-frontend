// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentRead _$PaymentReadFromJson(Map<String, dynamic> json) => _PaymentRead(
  id: (json['id'] as num).toInt(),
  ticketNumber: json['ticket_number'] as String,
  amount: json['amount'] as String,
  method: $enumDecode(_$Method80cEnumEnumMap, json['method']),
  methodDisplay: json['method_display'] as String,
  status: $enumDecodeNullable(_$PaymentReadStatusEnumEnumMap, json['status']),
  statusDisplay: json['status_display'] as String,
  transactionRef: json['transaction_ref'] as String,
  phone: json['phone'] as String,
  otpExpiresAt: json['otp_expires_at'] as String?,
  otpAttemptsRemaining: (json['otp_attempts_remaining'] as num?)?.toInt(),
  receiptUrl: json['receipt_url'] as String?,
  paidAt: json['paid_at'] == null
      ? null
      : DateTime.parse(json['paid_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$PaymentReadToJson(_PaymentRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket_number': instance.ticketNumber,
      'amount': instance.amount,
      'method': _$Method80cEnumEnumMap[instance.method]!,
      'method_display': instance.methodDisplay,
      'status': _$PaymentReadStatusEnumEnumMap[instance.status],
      'status_display': instance.statusDisplay,
      'transaction_ref': instance.transactionRef,
      'phone': instance.phone,
      'otp_expires_at': instance.otpExpiresAt,
      'otp_attempts_remaining': instance.otpAttemptsRemaining,
      'receipt_url': instance.receiptUrl,
      'paid_at': instance.paidAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$Method80cEnumEnumMap = {
  Method80cEnum.cash: 'cash',
  Method80cEnum.orangeMoney: 'orange_money',
  Method80cEnum.moovMoney: 'moov_money',
  Method80cEnum.corisMoney: 'coris_money',
  Method80cEnum.telecelMoney: 'telecel_money',
  Method80cEnum.card: 'card',
};

const _$PaymentReadStatusEnumEnumMap = {
  PaymentReadStatusEnum.pending: 'pending',
  PaymentReadStatusEnum.otpRequired: 'otp_required',
  PaymentReadStatusEnum.paid: 'paid',
  PaymentReadStatusEnum.failed: 'failed',
  PaymentReadStatusEnum.refunded: 'refunded',
};
