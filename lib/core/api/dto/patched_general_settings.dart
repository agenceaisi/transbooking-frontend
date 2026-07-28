// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_general_settings.freezed.dart';
part 'patched_general_settings.g.dart';

/// Parametres generaux de la plateforme (super admin).
/// 
/// ``sms_provider`` est en lecture seule : les identifiants du fournisseur SMS
/// restent dans les variables d'environnement et ne transitent jamais par l'API.
@freezed
abstract class PatchedGeneralSettings with _$PatchedGeneralSettings {
  const factory PatchedGeneralSettings({
    @JsonKey(name: 'platform_name')
    String? platformName,
    @JsonKey(name: 'support_phone')
    String? supportPhone,
    @JsonKey(name: 'support_email')
    String? supportEmail,
    @JsonKey(name: 'maintenance_mode')
    bool? maintenanceMode,
    @JsonKey(name: 'sms_provider')
    String? smsProvider,
  }) = _PatchedGeneralSettings;

  factory PatchedGeneralSettings.fromJson(Map<String, dynamic> json) =>
      _$PatchedGeneralSettingsFromJson(json);
}
