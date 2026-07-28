// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status62a_enum.dart';

part 'offline_parcel_read.freezed.dart';
part 'offline_parcel_read.g.dart';

/// Colis en attente de remise expose pour le travail hors ligne.
@freezed
abstract class OfflineParcelRead with _$OfflineParcelRead {
  const factory OfflineParcelRead({
    @JsonKey(name: 'tracking_number')
    required String trackingNumber,
    @JsonKey(name: 'recipient_name')
    required String recipientName,
    @JsonKey(name: 'recipient_phone')
    required String recipientPhone,
    @JsonKey(name: 'destination_city')
    required String destinationCity,
    Status62aEnum? status,
  }) = _OfflineParcelRead;

  factory OfflineParcelRead.fromJson(Map<String, dynamic> json) =>
      _$OfflineParcelReadFromJson(json);
}
