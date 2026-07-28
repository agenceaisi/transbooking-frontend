// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'parcel_history_entry.dart';
import 'status62a_enum.dart';

part 'parcel_track.freezed.dart';
part 'parcel_track.g.dart';

/// Suivi public d'un colis : statut + historique, sans donnees sensibles.
@freezed
abstract class ParcelTrack with _$ParcelTrack {
  const factory ParcelTrack({
    @JsonKey(name: 'tracking_number')
    required String trackingNumber,
    Status62aEnum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    @JsonKey(name: 'origin_city')
    required String originCity,
    @JsonKey(name: 'destination_city')
    required String destinationCity,
    @JsonKey(name: 'recipient_name')
    required String recipientName,
    @JsonKey(name: 'recipient_phone')
    required String recipientPhone,
    @JsonKey(name: 'current_location')
    required String? currentLocation,
    @JsonKey(name: 'estimated_delivery')
    required DateTime? estimatedDelivery,
    required List<ParcelHistoryEntry> history,
  }) = _ParcelTrack;

  factory ParcelTrack.fromJson(Map<String, dynamic> json) =>
      _$ParcelTrackFromJson(json);
}
