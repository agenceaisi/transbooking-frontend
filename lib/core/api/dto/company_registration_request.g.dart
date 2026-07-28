// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyRegistrationRequest _$CompanyRegistrationRequestFromJson(
  Map<String, dynamic> json,
) => _CompanyRegistrationRequest(
  companyName: json['company_name'] as String,
  managerName: json['manager_name'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String,
  city: json['city'] as String,
  documents: json['documents'] as String?,
);

Map<String, dynamic> _$CompanyRegistrationRequestToJson(
  _CompanyRegistrationRequest instance,
) => <String, dynamic>{
  'company_name': instance.companyName,
  'manager_name': instance.managerName,
  'phone': instance.phone,
  'email': instance.email,
  'city': instance.city,
  'documents': instance.documents,
};
