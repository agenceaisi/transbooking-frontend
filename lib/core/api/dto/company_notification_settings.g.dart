// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyNotificationSettings _$CompanyNotificationSettingsFromJson(
  Map<String, dynamic> json,
) => _CompanyNotificationSettings(
  smsBookingConfirmation: json['sms_booking_confirmation'] as bool?,
  smsDepartureReminder: json['sms_departure_reminder'] as bool?,
  smsParcelArrival: json['sms_parcel_arrival'] as bool?,
);

Map<String, dynamic> _$CompanyNotificationSettingsToJson(
  _CompanyNotificationSettings instance,
) => <String, dynamic>{
  'sms_booking_confirmation': instance.smsBookingConfirmation,
  'sms_departure_reminder': instance.smsDepartureReminder,
  'sms_parcel_arrival': instance.smsParcelArrival,
};
