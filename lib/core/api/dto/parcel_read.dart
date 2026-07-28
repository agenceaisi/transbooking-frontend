// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'parcel_notification.dart';
import 'status62a_enum.dart';

part 'parcel_read.freezed.dart';
part 'parcel_read.g.dart';

/// Lecture detaillee d'un colis (agent, admin) avec historique complet.
@freezed
abstract class ParcelRead with _$ParcelRead {
  const factory ParcelRead({
    required int id,
    @JsonKey(name: 'tracking_number')
    required String trackingNumber,
    required int company,
    int? trip,
    @JsonKey(name: 'origin_city')
    required String originCity,
    @JsonKey(name: 'destination_city')
    required String destinationCity,
    @JsonKey(name: 'origin_station')
    int? originStation,
    @JsonKey(name: 'destination_station')
    int? destinationStation,
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
    String? tariff,
    @JsonKey(name: 'qr_code')
    String? qrCode,
    Status62aEnum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    @JsonKey(name: 'collected_at')
    DateTime? collectedAt,
    @JsonKey(name: 'is_offline')
    bool? isOffline,
    required List<ParcelNotification> notifications,
    required List<dynamic> history,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _ParcelRead;

  factory ParcelRead.fromJson(Map<String, dynamic> json) =>
      _$ParcelReadFromJson(json);
}
