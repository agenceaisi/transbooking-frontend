// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'parcel_update.freezed.dart';
part 'parcel_update.g.dart';

/// Mise a jour partielle des infos d'un colis (admin compagnie).
@freezed
abstract class ParcelUpdate with _$ParcelUpdate {
  const factory ParcelUpdate({
    @JsonKey(name: 'recipient_name')
    required String recipientName,
    @JsonKey(name: 'recipient_phone')
    required String recipientPhone,
    @JsonKey(name: 'sender_name')
    required String senderName,
    @JsonKey(name: 'sender_phone')
    required String senderPhone,
    String? description,
    @JsonKey(name: 'destination_station')
    int? destinationStation,
    int? trip,
  }) = _ParcelUpdate;

  factory ParcelUpdate.fromJson(Map<String, dynamic> json) =>
      _$ParcelUpdateFromJson(json);
}
