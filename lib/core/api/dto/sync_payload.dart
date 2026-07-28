// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'offline_booking.dart';
import 'offline_parcel.dart';
import 'offline_parcel_notification.dart';
import 'offline_validation.dart';

part 'sync_payload.freezed.dart';
part 'sync_payload.g.dart';

/// Corps de `POST /api/v1/agent/sync/` : lots a synchroniser.
@freezed
abstract class SyncPayload with _$SyncPayload {
  const factory SyncPayload({
    List<OfflineBooking>? bookings,
    List<OfflineParcel>? parcels,
    List<OfflineValidation>? validations,
    @JsonKey(name: 'parcel_notifications')
    List<OfflineParcelNotification>? parcelNotifications,
  }) = _SyncPayload;

  factory SyncPayload.fromJson(Map<String, dynamic> json) =>
      _$SyncPayloadFromJson(json);
}
