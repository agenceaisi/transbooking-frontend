// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_agent.freezed.dart';
part 'company_agent.g.dart';

/// Agent d'une compagnie vu par son company admin (lecture).
@freezed
abstract class CompanyAgent with _$CompanyAgent {
  const factory CompanyAgent({
    required int id,
    required String prenom,
    required String nom,
    required String phone,
    String? email,
    required String? role,
    @JsonKey(name: 'agent_type')
    required String agentType,
    required Map<String, dynamic>? station,
    @JsonKey(name: 'is_active')
    bool? isActive,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _CompanyAgent;

  factory CompanyAgent.fromJson(Map<String, dynamic> json) =>
      _$CompanyAgentFromJson(json);
}
