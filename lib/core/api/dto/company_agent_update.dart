// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role_enum.dart';

part 'company_agent_update.freezed.dart';
part 'company_agent_update.g.dart';

/// Modification / activation / desactivation d'un agent.
@freezed
abstract class CompanyAgentUpdate with _$CompanyAgentUpdate {
  const factory CompanyAgentUpdate({
    String? prenom,
    String? nom,
    String? email,
    @JsonKey(name: 'is_active')
    bool? isActive,
    RoleEnum? role,
    int? station,
  }) = _CompanyAgentUpdate;

  factory CompanyAgentUpdate.fromJson(Map<String, dynamic> json) =>
      _$CompanyAgentUpdateFromJson(json);
}
