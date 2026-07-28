// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordChange _$PasswordChangeFromJson(Map<String, dynamic> json) =>
    _PasswordChange(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$PasswordChangeToJson(_PasswordChange instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
