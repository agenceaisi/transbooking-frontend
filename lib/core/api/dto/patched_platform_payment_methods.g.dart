// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_platform_payment_methods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedPlatformPaymentMethods _$PatchedPlatformPaymentMethodsFromJson(
  Map<String, dynamic> json,
) => _PatchedPlatformPaymentMethods(
  paymentMethods: (json['payment_methods'] as List<dynamic>?)
      ?.map((e) => PlatformPaymentMethod.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PatchedPlatformPaymentMethodsToJson(
  _PatchedPlatformPaymentMethods instance,
) => <String, dynamic>{'payment_methods': instance.paymentMethods};
