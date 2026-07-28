// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_company_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedCompanyPaymentMethod _$PatchedCompanyPaymentMethodFromJson(
  Map<String, dynamic> json,
) => _PatchedCompanyPaymentMethod(
  method: $enumDecodeNullable(_$Method80cEnumEnumMap, json['method']),
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$PatchedCompanyPaymentMethodToJson(
  _PatchedCompanyPaymentMethod instance,
) => <String, dynamic>{
  'method': _$Method80cEnumEnumMap[instance.method],
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
