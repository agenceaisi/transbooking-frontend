// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlatformPaymentMethod _$PlatformPaymentMethodFromJson(
  Map<String, dynamic> json,
) => _PlatformPaymentMethod(
  method: $enumDecode(_$Method80cEnumEnumMap, json['method']),
  methodDisplay: json['method_display'] as String,
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$PlatformPaymentMethodToJson(
  _PlatformPaymentMethod instance,
) => <String, dynamic>{
  'method': _$Method80cEnumEnumMap[instance.method]!,
  'method_display': instance.methodDisplay,
  'is_active': instance.isActive,
};

const _$Method80cEnumEnumMap = {
  Method80cEnum.cash: 'cash',
  Method80cEnum.orangeMoney: 'orange_money',
  Method80cEnum.moovMoney: 'moov_money',
  Method80cEnum.corisMoney: 'coris_money',
  Method80cEnum.telecelMoney: 'telecel_money',
  Method80cEnum.card: 'card',
};
