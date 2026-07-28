// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_agent_invitation_response.freezed.dart';
part 'company_agent_invitation_response.g.dart';

/// Reponse d'une invitation d'agent (documentation OpenAPI).
@freezed
abstract class CompanyAgentInvitationResponse with _$CompanyAgentInvitationResponse {
  const factory CompanyAgentInvitationResponse({
    required String detail,
    required String phone,
    required String role,
    @JsonKey(name: 'invite_url')
    required String inviteUrl,
    @JsonKey(name: 'expires_in_hours')
    required int expiresInHours,
  }) = _CompanyAgentInvitationResponse;

  factory CompanyAgentInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyAgentInvitationResponseFromJson(json);
}
