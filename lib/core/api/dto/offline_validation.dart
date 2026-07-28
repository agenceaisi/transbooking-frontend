// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_validation.freezed.dart';
part 'offline_validation.g.dart';

/// Embarquement valide hors ligne par un controleur.
@freezed
abstract class OfflineValidation with _$OfflineValidation {
  const factory OfflineValidation({
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    @JsonKey(name: 'offline_created_at')
    required DateTime offlineCreatedAt,
  }) = _OfflineValidation;

  factory OfflineValidation.fromJson(Map<String, dynamic> json) =>
      _$OfflineValidationFromJson(json);
}
