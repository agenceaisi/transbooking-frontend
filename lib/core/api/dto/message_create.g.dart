// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageCreate _$MessageCreateFromJson(Map<String, dynamic> json) =>
    _MessageCreate(
      recipient: (json['recipient'] as num).toInt(),
      subject: json['subject'] as String?,
      body: json['body'] as String,
    );

Map<String, dynamic> _$MessageCreateToJson(_MessageCreate instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'subject': instance.subject,
      'body': instance.body,
    };
