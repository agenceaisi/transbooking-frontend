// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClaimCreate _$ClaimCreateFromJson(Map<String, dynamic> json) => _ClaimCreate(
  company: (json['company'] as num?)?.toInt(),
  booking: (json['booking'] as num?)?.toInt(),
  claimType: $enumDecode(_$ClaimTypeEnumEnumMap, json['claim_type']),
  subject: json['subject'] as String,
  description: json['description'] as String,
  attachment: json['attachment'] as String?,
);

Map<String, dynamic> _$ClaimCreateToJson(_ClaimCreate instance) =>
    <String, dynamic>{
      'company': instance.company,
      'booking': instance.booking,
      'claim_type': _$ClaimTypeEnumEnumMap[instance.claimType]!,
      'subject': instance.subject,
      'description': instance.description,
      'attachment': instance.attachment,
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
