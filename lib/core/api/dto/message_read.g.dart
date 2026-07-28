// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageRead _$MessageReadFromJson(Map<String, dynamic> json) => _MessageRead(
  id: (json['id'] as num).toInt(),
  sender: (json['sender'] as num).toInt(),
  senderName: json['sender_name'] as String,
  recipient: (json['recipient'] as num).toInt(),
  recipientName: json['recipient_name'] as String,
  subject: json['subject'] as String?,
  body: json['body'] as String,
  isRead: json['is_read'] as bool?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$MessageReadToJson(_MessageRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'sender_name': instance.senderName,
      'recipient': instance.recipient,
      'recipient_name': instance.recipientName,
      'subject': instance.subject,
      'body': instance.body,
      'is_read': instance.isRead,
      'created_at': instance.createdAt.toIso8601String(),
    };
