// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'offline_parcel_notification_method_enum.dart';

part 'offline_parcel_notification.freezed.dart';
part 'offline_parcel_notification.g.dart';

/// « Marquer prevenu » d'un colis, enregistre hors ligne par un agent.
/// 
/// Seul l'appel manuel (`call`) est synchronisable : un SMS ne peut pas partir
/// hors ligne, l'app ne doit jamais laisser croire qu'un SMS a ete envoye.
/// Le couple (`tracking_number`, `offline_created_at`) sert de cle d'idempotence.
@freezed
abstract class OfflineParcelNotification with _$OfflineParcelNotification {
  const factory OfflineParcelNotification({
    @JsonKey(name: 'tracking_number')
    required String trackingNumber,
    OfflineParcelNotificationMethodEnum? method,
    @JsonKey(name: 'offline_created_at')
    required DateTime offlineCreatedAt,
  }) = _OfflineParcelNotification;

  factory OfflineParcelNotification.fromJson(Map<String, dynamic> json) =>
      _$OfflineParcelNotificationFromJson(json);
}
