// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncPayload _$SyncPayloadFromJson(Map<String, dynamic> json) => _SyncPayload(
  bookings: (json['bookings'] as List<dynamic>?)
      ?.map((e) => OfflineBooking.fromJson(e as Map<String, dynamic>))
      .toList(),
  parcels: (json['parcels'] as List<dynamic>?)
      ?.map((e) => OfflineParcel.fromJson(e as Map<String, dynamic>))
      .toList(),
  validations: (json['validations'] as List<dynamic>?)
      ?.map((e) => OfflineValidation.fromJson(e as Map<String, dynamic>))
      .toList(),
  parcelNotifications: (json['parcel_notifications'] as List<dynamic>?)
      ?.map(
        (e) => OfflineParcelNotification.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$SyncPayloadToJson(_SyncPayload instance) =>
    <String, dynamic>{
      'bookings': instance.bookings,
      'parcels': instance.parcels,
      'validations': instance.validations,
      'parcel_notifications': instance.parcelNotifications,
    };
