// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role_enum.dart';

part 'company_agent_create.freezed.dart';
part 'company_agent_create.g.dart';

/// Creation d'un agent par le company admin (mot de passe temporaire par SMS).
@freezed
abstract class CompanyAgentCreate with _$CompanyAgentCreate {
  const factory CompanyAgentCreate({
    required String prenom,
    required String nom,
    required String phone,
    required RoleEnum role,
    String? email,
    int? station,
  }) = _CompanyAgentCreate;

  factory CompanyAgentCreate.fromJson(Map<String, dynamic> json) =>
      _$CompanyAgentCreateFromJson(json);
}
