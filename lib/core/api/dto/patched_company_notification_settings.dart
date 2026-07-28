// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_company_notification_settings.freezed.dart';
part 'patched_company_notification_settings.g.dart';

@freezed
abstract class PatchedCompanyNotificationSettings with _$PatchedCompanyNotificationSettings {
  const factory PatchedCompanyNotificationSettings({
    @JsonKey(name: 'sms_booking_confirmation')
    bool? smsBookingConfirmation,
    @JsonKey(name: 'sms_departure_reminder')
    bool? smsDepartureReminder,
    @JsonKey(name: 'sms_parcel_arrival')
    bool? smsParcelArrival,
  }) = _PatchedCompanyNotificationSettings;

  factory PatchedCompanyNotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$PatchedCompanyNotificationSettingsFromJson(json);
}
