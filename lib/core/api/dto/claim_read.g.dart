// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClaimRead _$ClaimReadFromJson(Map<String, dynamic> json) => _ClaimRead(
  id: (json['id'] as num).toInt(),
  company: (json['company'] as num).toInt(),
  companyName: json['company_name'] as String,
  booking: (json['booking'] as num?)?.toInt(),
  ticketNumber: json['ticket_number'] as String,
  claimType: $enumDecode(_$ClaimTypeEnumEnumMap, json['claim_type']),
  claimTypeDisplay: json['claim_type_display'] as String,
  subject: json['subject'] as String,
  description: json['description'] as String,
  status: $enumDecodeNullable(_$ClaimReadStatusEnumEnumMap, json['status']),
  statusDisplay: json['status_display'] as String,
  response: json['response'] as String?,
  respondedAt: json['responded_at'] == null
      ? null
      : DateTime.parse(json['responded_at'] as String),
  isOverdue: json['is_overdue'] as bool,
  attachments: (json['attachments'] as List<dynamic>)
      .map((e) => ClaimAttachment.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ClaimReadToJson(_ClaimRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'company_name': instance.companyName,
      'booking': instance.booking,
      'ticket_number': instance.ticketNumber,
      'claim_type': _$ClaimTypeEnumEnumMap[instance.claimType]!,
      'claim_type_display': instance.claimTypeDisplay,
      'subject': instance.subject,
      'description': instance.description,
      'status': _$ClaimReadStatusEnumEnumMap[instance.status],
      'status_display': instance.statusDisplay,
      'response': instance.response,
      'responded_at': instance.respondedAt?.toIso8601String(),
      'is_overdue': instance.isOverdue,
      'attachments': instance.attachments,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$ClaimTypeEnumEnumMap = {
  ClaimTypeEnum.retard: 'retard',
  ClaimTypeEnum.perteBagage: 'perte_bagage',
  ClaimTypeEnum.bagageEndommage: 'bagage_endommage',
  ClaimTypeEnum.comportement: 'comportement',
  ClaimTypeEnum.surcharge: 'surcharge',
  ClaimTypeEnum.remboursement: 'remboursement',
  ClaimTypeEnum.autre: 'autre',
};

const _$ClaimReadStatusEnumEnumMap = {
  ClaimReadStatusEnum.submitted: 'submitted',
  ClaimReadStatusEnum.inProgress: 'in_progress',
  ClaimReadStatusEnum.resolved: 'resolved',
  ClaimReadStatusEnum.closed: 'closed',
  ClaimReadStatusEnum.escalated: 'escalated',
};
