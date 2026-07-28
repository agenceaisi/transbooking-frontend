// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_notification_settings.freezed.dart';
part 'company_notification_settings.g.dart';

@freezed
abstract class CompanyNotificationSettings with _$CompanyNotificationSettings {
  const factory CompanyNotificationSettings({
    @JsonKey(name: 'sms_booking_confirmation')
    bool? smsBookingConfirmation,
    @JsonKey(name: 'sms_departure_reminder')
    bool? smsDepartureReminder,
    @JsonKey(name: 'sms_parcel_arrival')
    bool? smsParcelArrival,
  }) = _CompanyNotificationSettings;

  factory CompanyNotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$CompanyNotificationSettingsFromJson(json);
}
