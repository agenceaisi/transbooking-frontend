// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_company_notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedCompanyNotificationSettings
_$PatchedCompanyNotificationSettingsFromJson(Map<String, dynamic> json) =>
    _PatchedCompanyNotificationSettings(
      smsBookingConfirmation: json['sms_booking_confirmation'] as bool?,
      smsDepartureReminder: json['sms_departure_reminder'] as bool?,
      smsParcelArrival: json['sms_parcel_arrival'] as bool?,
    );

Map<String, dynamic> _$PatchedCompanyNotificationSettingsToJson(
  _PatchedCompanyNotificationSettings instance,
) => <String, dynamic>{
  'sms_booking_confirmation': instance.smsBookingConfirmation,
  'sms_departure_reminder': instance.smsDepartureReminder,
  'sms_parcel_arrival': instance.smsParcelArrival,
};
