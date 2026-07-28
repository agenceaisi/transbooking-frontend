// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyCreate _$CompanyCreateFromJson(Map<String, dynamic> json) =>
    _CompanyCreate(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      sigle: json['sigle'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      responsibleName: json['responsible_name'] as String?,
      responsiblePhone: json['responsible_phone'] as String?,
      rccm: json['rccm'] as String?,
      ifu: json['ifu'] as String?,
      commissionRate: json['commission_rate'] as String?,
      status: $enumDecode(_$Status47eEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$CompanyCreateToJson(_CompanyCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sigle': instance.sigle,
      'description': instance.description,
      'city': instance.city,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'responsible_name': instance.responsibleName,
      'responsible_phone': instance.responsiblePhone,
      'rccm': instance.rccm,
      'ifu': instance.ifu,
      'commission_rate': instance.commissionRate,
      'status': _$Status47eEnumEnumMap[instance.status]!,
    };

const _$Status47eEnumEnumMap = {
  Status47eEnum.pending: 'pending',
  Status47eEnum.infoRequested: 'info_requested',
  Status47eEnum.active: 'active',
  Status47eEnum.suspended: 'suspended',
  Status47eEnum.rejected: 'rejected',
};
