// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role_enum.dart';

part 'patched_company_agent_update.freezed.dart';
part 'patched_company_agent_update.g.dart';

/// Modification / activation / desactivation d'un agent.
@freezed
abstract class PatchedCompanyAgentUpdate with _$PatchedCompanyAgentUpdate {
  const factory PatchedCompanyAgentUpdate({
    String? prenom,
    String? nom,
    String? email,
    @JsonKey(name: 'is_active')
    bool? isActive,
    RoleEnum? role,
    int? station,
  }) = _PatchedCompanyAgentUpdate;

  factory PatchedCompanyAgentUpdate.fromJson(Map<String, dynamic> json) =>
      _$PatchedCompanyAgentUpdateFromJson(json);
}
