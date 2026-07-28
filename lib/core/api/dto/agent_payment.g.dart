// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentPayment _$AgentPaymentFromJson(Map<String, dynamic> json) =>
    _AgentPayment(
      bookingId: (json['booking_id'] as num).toInt(),
      method: $enumDecode(_$Method80cEnumEnumMap, json['method']),
      transactionRef: json['transaction_ref'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$AgentPaymentToJson(_AgentPayment instance) =>
    <String, dynamic>{
      'booking_id': instance.bookingId,
      'method': _$Method80cEnumEnumMap[instance.method]!,
      'transaction_ref': instance.transactionRef,
      'phone': instance.phone,
    };

const _$Method80cEnumEnumMap = {
  Method80cEnum.cash: 'cash',
  Method80cEnum.orangeMoney: 'orange_money',
  Method80cEnum.moovMoney: 'moov_money',
  Method80cEnum.corisMoney: 'coris_money',
  Method80cEnum.telecelMoney: 'telecel_money',
  Method80cEnum.card: 'card',
};
