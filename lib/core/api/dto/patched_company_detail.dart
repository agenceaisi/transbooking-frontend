// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status47e_enum.dart';

part 'patched_company_detail.freezed.dart';
part 'patched_company_detail.g.dart';

/// Vue complete pour le super admin et le company admin.
@freezed
abstract class PatchedCompanyDetail with _$PatchedCompanyDetail {
  const factory PatchedCompanyDetail({
    int? id,
    String? name,
    String? sigle,
    String? description,
    String? logo,
    String? banner,
    @JsonKey(name: 'primary_color')
    String? primaryColor,
    @JsonKey(name: 'welcome_message')
    String? welcomeMessage,
    String? city,
    String? address,
    String? phone,
    String? email,
    @JsonKey(name: 'responsible_name')
    String? responsibleName,
    @JsonKey(name: 'responsible_phone')
    String? responsiblePhone,
    String? rccm,
    String? ifu,
    @JsonKey(name: 'commission_rate')
    String? commissionRate,
    Status47eEnum? status,
    @JsonKey(name: 'rejection_reason')
    String? rejectionReason,
    @JsonKey(name: 'suspension_reason')
    String? suspensionReason,
    @JsonKey(name: 'info_request_message')
    String? infoRequestMessage,
    @JsonKey(name: 'active_payment_methods')
    List<String>? activePaymentMethods,
    @JsonKey(name: 'subscription_status')
    String? subscriptionStatus,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _PatchedCompanyDetail;

  factory PatchedCompanyDetail.fromJson(Map<String, dynamic> json) =>
      _$PatchedCompanyDetailFromJson(json);
}
