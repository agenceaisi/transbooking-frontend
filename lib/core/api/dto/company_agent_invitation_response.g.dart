// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_agent_invitation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyAgentInvitationResponse _$CompanyAgentInvitationResponseFromJson(
  Map<String, dynamic> json,
) => _CompanyAgentInvitationResponse(
  detail: json['detail'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  inviteUrl: json['invite_url'] as String,
  expiresInHours: (json['expires_in_hours'] as num).toInt(),
);

Map<String, dynamic> _$CompanyAgentInvitationResponseToJson(
  _CompanyAgentInvitationResponse instance,
) => <String, dynamic>{
  'detail': instance.detail,
  'phone': instance.phone,
  'role': instance.role,
  'invite_url': instance.inviteUrl,
  'expires_in_hours': instance.expiresInHours,
};
