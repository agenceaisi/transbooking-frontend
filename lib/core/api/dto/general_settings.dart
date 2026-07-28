// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_settings.freezed.dart';
part 'general_settings.g.dart';

/// Parametres generaux de la plateforme (super admin).
/// 
/// ``sms_provider`` est en lecture seule : les identifiants du fournisseur SMS
/// restent dans les variables d'environnement et ne transitent jamais par l'API.
@freezed
abstract class GeneralSettings with _$GeneralSettings {
  const factory GeneralSettings({
    @JsonKey(name: 'platform_name')
    String? platformName,
    @JsonKey(name: 'support_phone')
    String? supportPhone,
    @JsonKey(name: 'support_email')
    String? supportEmail,
    @JsonKey(name: 'maintenance_mode')
    bool? maintenanceMode,
    @JsonKey(name: 'sms_provider')
    required String smsProvider,
  }) = _GeneralSettings;

  factory GeneralSettings.fromJson(Map<String, dynamic> json) =>
      _$GeneralSettingsFromJson(json);
}
