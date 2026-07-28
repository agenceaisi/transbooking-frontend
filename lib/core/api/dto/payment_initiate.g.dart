// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_initiate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentInitiate _$PaymentInitiateFromJson(Map<String, dynamic> json) =>
    _PaymentInitiate(
      bookingId: (json['booking_id'] as num?)?.toInt(),
      parcelId: (json['parcel_id'] as num?)?.toInt(),
      method: $enumDecode(_$Method80cEnumEnumMap, json['method']),
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$PaymentInitiateToJson(_PaymentInitiate instance) =>
    <String, dynamic>{
      'booking_id': instance.bookingId,
      'parcel_id': instance.parcelId,
      'method': _$Method80cEnumEnumMap[instance.method]!,
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
