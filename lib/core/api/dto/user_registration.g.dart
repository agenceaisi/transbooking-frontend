// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRegistration _$UserRegistrationFromJson(Map<String, dynamic> json) =>
    _UserRegistration(
      prenom: json['prenom'] as String,
      nom: json['nom'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserRegistrationToJson(_UserRegistration instance) =>
    <String, dynamic>{
      'prenom': instance.prenom,
      'nom': instance.nom,
      'phone': instance.phone,
      'password': instance.password,
      'email': instance.email,
    };
