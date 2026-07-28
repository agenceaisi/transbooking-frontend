// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_agent_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyAgentUpdate _$CompanyAgentUpdateFromJson(Map<String, dynamic> json) =>
    _CompanyAgentUpdate(
      prenom: json['prenom'] as String?,
      nom: json['nom'] as String?,
      email: json['email'] as String?,
      isActive: json['is_active'] as bool?,
      role: $enumDecodeNullable(_$RoleEnumEnumMap, json['role']),
      station: (json['station'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CompanyAgentUpdateToJson(_CompanyAgentUpdate instance) =>
    <String, dynamic>{
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
