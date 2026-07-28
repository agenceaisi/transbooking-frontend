// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role_enum.dart';

part 'company_agent_invite.freezed.dart';
part 'company_agent_invite.g.dart';

/// Invitation d'un agent par SMS (lien de creation de compte).
@freezed
abstract class CompanyAgentInvite with _$CompanyAgentInvite {
  const factory CompanyAgentInvite({
    required String phone,
    required RoleEnum role,
    String? prenom,
    String? nom,
  }) = _CompanyAgentInvite;

  factory CompanyAgentInvite.fromJson(Map<String, dynamic> json) =>
      _$CompanyAgentInviteFromJson(json);
}
