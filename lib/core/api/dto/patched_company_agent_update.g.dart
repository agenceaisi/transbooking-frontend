// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_company_agent_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedCompanyAgentUpdate _$PatchedCompanyAgentUpdateFromJson(
  Map<String, dynamic> json,
) => _PatchedCompanyAgentUpdate(
  prenom: json['prenom'] as String?,
  nom: json['nom'] as String?,
  email: json['email'] as String?,
  isActive: json['is_active'] as bool?,
  role: $enumDecodeNullable(_$RoleEnumEnumMap, json['role']),
  station: (json['station'] as num?)?.toInt(),
);

Map<String, dynamic> _$PatchedCompanyAgentUpdateToJson(
  _PatchedCompanyAgentUpdate instance,
) => <String, dynamic>{
  'prenom': instance.prenom,
  'nom': instance.nom,
  'email': instance.email,
  'is_active': instance.isActive,
  'role': _$RoleEnumEnumMap[instance.role],
  'station': instance.station,
};

const _$RoleEnumEnumMap = {
  RoleEnum.agentGuichet: 'agent_guichet',
  RoleEnum.controleur: 'controleur',
};
