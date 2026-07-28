// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_parcel_update.freezed.dart';
part 'patched_parcel_update.g.dart';

/// Mise a jour partielle des infos d'un colis (admin compagnie).
@freezed
abstract class PatchedParcelUpdate with _$PatchedParcelUpdate {
  const factory PatchedParcelUpdate({
    @JsonKey(name: 'recipient_name')
    String? recipientName,
    @JsonKey(name: 'recipient_phone')
    String? recipientPhone,
    @JsonKey(name: 'sender_name')
    String? senderName,
    @JsonKey(name: 'sender_phone')
    String? senderPhone,
    String? description,
    @JsonKey(name: 'destination_station')
    int? destinationStation,
    int? trip,
  }) = _PatchedParcelUpdate;

  factory PatchedParcelUpdate.fromJson(Map<String, dynamic> json) =>
      _$PatchedParcelUpdateFromJson(json);
}
