// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClaimAttachment _$ClaimAttachmentFromJson(Map<String, dynamic> json) =>
    _ClaimAttachment(
      id: (json['id'] as num).toInt(),
      file: json['file'] as String,
      originalName: json['original_name'] as String?,
      contentType: json['content_type'] as String?,
      size: (json['size'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ClaimAttachmentToJson(_ClaimAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'original_name': instance.originalName,
      'content_type': instance.contentType,
      'size': instance.size,
      'created_at': instance.createdAt.toIso8601String(),
    };
