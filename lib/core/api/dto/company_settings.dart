// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_settings.freezed.dart';
part 'company_settings.g.dart';

/// Parametres editables par le company admin (charte graphique, accueil).
@freezed
abstract class CompanySettings with _$CompanySettings {
  const factory CompanySettings({
    required String name,
    String? sigle,
    String? description,
    String? logo,
    String? banner,
    @JsonKey(name: 'primary_color')
    String? primaryColor,
    @JsonKey(name: 'welcome_message')
    String? welcomeMessage,
    String? address,
    String? phone,
    String? email,
    @JsonKey(name: 'responsible_name')
    String? responsibleName,
    @JsonKey(name: 'responsible_phone')
    String? responsiblePhone,
  }) = _CompanySettings;

  factory CompanySettings.fromJson(Map<String, dynamic> json) =>
      _$CompanySettingsFromJson(json);
}
