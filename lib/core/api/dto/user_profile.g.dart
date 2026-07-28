// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  prenom: json['prenom'] as String,
  nom: json['nom'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'prenom': instance.prenom,
      'nom': instance.nom,
      'phone': instance.phone,
      'email': instance.email,
      'role': instance.role,
    };
