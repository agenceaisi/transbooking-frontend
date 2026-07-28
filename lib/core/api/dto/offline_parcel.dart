// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_parcel.freezed.dart';
part 'offline_parcel.g.dart';

/// Colis enregistre hors ligne par un agent guichet.
@freezed
abstract class OfflineParcel with _$OfflineParcel {
  const factory OfflineParcel({
    @JsonKey(name: 'tracking_number')
    required String trackingNumber,
    @JsonKey(name: 'origin_city')
    required int originCity,
    @JsonKey(name: 'destination_city')
    required int destinationCity,
    @JsonKey(name: 'destination_station')
    int? destinationStation,
    int? trip,
    @JsonKey(name: 'sender_name')
    required String senderName,
    @JsonKey(name: 'sender_phone')
    required String senderPhone,
    @JsonKey(name: 'recipient_name')
    required String recipientName,
    @JsonKey(name: 'recipient_phone')
    required String recipientPhone,
    String? description,
    @JsonKey(name: 'weight_kg')
    required String weightKg,
    @JsonKey(name: 'offline_created_at')
    required DateTime offlineCreatedAt,
  }) = _OfflineParcel;

  factory OfflineParcel.fromJson(Map<String, dynamic> json) =>
      _$OfflineParcelFromJson(json);
}
