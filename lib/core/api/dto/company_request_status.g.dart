// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_request_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyRequestStatus _$CompanyRequestStatusFromJson(
  Map<String, dynamic> json,
) => _CompanyRequestStatus(
  id: (json['id'] as num).toInt(),
  companyName: json['company_name'] as String,
  managerName: json['manager_name'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String,
  city: json['city'] as String,
  status: $enumDecode(_$Status47eEnumEnumMap, json['status']),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$CompanyRequestStatusToJson(
  _CompanyRequestStatus instance,
) => <String, dynamic>{
  'id': instance.id,
  'company_name': instance.companyName,
  'manager_name': instance.managerName,
  'phone': instance.phone,
  'email': instance.email,
  'city': instance.city,
  'status': _$Status47eEnumEnumMap[instance.status]!,
  'created_at': instance.createdAt.toIso8601String(),
};

const _$Status47eEnumEnumMap = {
  Status47eEnum.pending: 'pending',
  Status47eEnum.infoRequested: 'info_requested',
  Status47eEnum.active: 'active',
  Status47eEnum.suspended: 'suspended',
  Status47eEnum.rejected: 'rejected',
};
