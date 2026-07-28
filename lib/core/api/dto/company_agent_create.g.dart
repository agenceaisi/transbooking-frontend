// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_agent_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyAgentCreate _$CompanyAgentCreateFromJson(Map<String, dynamic> json) =>
    _CompanyAgentCreate(
      prenom: json['prenom'] as String,
      nom: json['nom'] as String,
      phone: json['phone'] as String,
      role: $enumDecode(_$RoleEnumEnumMap, json['role']),
      email: json['email'] as String?,
      station: (json['station'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CompanyAgentCreateToJson(_CompanyAgentCreate instance) =>
    <String, dynamic>{
      'prenom': instance.prenom,
      'nom': instance.nom,
      'phone': instance.phone,
      'role': _$RoleEnumEnumMap[instance.role]!,
      'email': instance.email,
      'station': instance.station,
    };

const _$RoleEnumEnumMap = {
  RoleEnum.agentGuichet: 'agent_guichet',
  RoleEnum.controleur: 'controleur',
};
