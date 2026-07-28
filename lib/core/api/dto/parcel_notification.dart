// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'parcel_notification_method_enum.dart';

part 'parcel_notification.freezed.dart';
part 'parcel_notification.g.dart';

/// Lecture d'une notification colis.
@freezed
abstract class ParcelNotification with _$ParcelNotification {
  const factory ParcelNotification({
    required int id,
    ParcelNotificationMethodEnum? method,
    @JsonKey(name: 'method_display')
    required String methodDisplay,
    String? message,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _ParcelNotification;

  factory ParcelNotification.fromJson(Map<String, dynamic> json) =>
      _$ParcelNotificationFromJson(json);
}
