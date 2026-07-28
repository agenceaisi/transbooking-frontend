// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_agent_invite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyAgentInvite _$CompanyAgentInviteFromJson(Map<String, dynamic> json) =>
    _CompanyAgentInvite(
      phone: json['phone'] as String,
      role: $enumDecode(_$RoleEnumEnumMap, json['role']),
      prenom: json['prenom'] as String?,
      nom: json['nom'] as String?,
    );

Map<String, dynamic> _$CompanyAgentInviteToJson(_CompanyAgentInvite instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'role': _$RoleEnumEnumMap[instance.role]!,
      'prenom': instance.prenom,
      'nom': instance.nom,
    };

const _$RoleEnumEnumMap = {
  RoleEnum.agentGuichet: 'agent_guichet',
  RoleEnum.controleur: 'controleur',
};
