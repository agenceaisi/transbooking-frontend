// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyAgent _$CompanyAgentFromJson(Map<String, dynamic> json) =>
    _CompanyAgent(
      id: (json['id'] as num).toInt(),
      prenom: json['prenom'] as String,
      nom: json['nom'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String?,
      role: json['role'] as String?,
      agentType: json['agent_type'] as String,
      station: json['station'] as Map<String, dynamic>?,
      isActive: json['is_active'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$CompanyAgentToJson(_CompanyAgent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'prenom': instance.prenom,
      'nom': instance.nom,
      'phone': instance.phone,
      'email': instance.email,
      'role': instance.role,
      'agent_type': instance.agentType,
      'station': instance.station,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
    };
