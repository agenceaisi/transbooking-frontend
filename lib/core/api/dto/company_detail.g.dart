// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyDetail _$CompanyDetailFromJson(Map<String, dynamic> json) =>
    _CompanyDetail(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      sigle: json['sigle'] as String?,
      description: json['description'] as String?,
      logo: json['logo'] as String?,
      banner: json['banner'] as String?,
      primaryColor: json['primary_color'] as String?,
      welcomeMessage: json['welcome_message'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      responsibleName: json['responsible_name'] as String?,
      responsiblePhone: json['responsible_phone'] as String?,
      rccm: json['rccm'] as String?,
      ifu: json['ifu'] as String?,
      commissionRate: json['commission_rate'] as String?,
      status: $enumDecodeNullable(_$Status47eEnumEnumMap, json['status']),
      rejectionReason: json['rejection_reason'] as String?,
      suspensionReason: json['suspension_reason'] as String?,
      infoRequestMessage: json['info_request_message'] as String?,
      activePaymentMethods: (json['active_payment_methods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subscriptionStatus: json['subscription_status'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CompanyDetailToJson(_CompanyDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sigle': instance.sigle,
      'description': instance.description,
      'logo': instance.logo,
      'banner': instance.banner,
      'primary_color': instance.primaryColor,
      'welcome_message': instance.welcomeMessage,
      'city': instance.city,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'responsible_name': instance.responsibleName,
      'responsible_phone': instance.responsiblePhone,
      'rccm': instance.rccm,
      'ifu': instance.ifu,
      'commission_rate': instance.commissionRate,
      'status': _$Status47eEnumEnumMap[instance.status],
      'rejection_reason': instance.rejectionReason,
      'suspension_reason': instance.suspensionReason,
      'info_request_message': instance.infoRequestMessage,
      'active_payment_methods': instance.activePaymentMethods,
      'subscription_status': instance.subscriptionStatus,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$Status47eEnumEnumMap = {
  Status47eEnum.pending: 'pending',
  Status47eEnum.infoRequested: 'info_requested',
  Status47eEnum.active: 'active',
  Status47eEnum.suspended: 'suspended',
  Status47eEnum.rejected: 'rejected',
};
