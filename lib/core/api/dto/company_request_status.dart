// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status47e_enum.dart';

part 'company_request_status.freezed.dart';
part 'company_request_status.g.dart';

/// Accuse de reception d'une demande d'inscription.
@freezed
abstract class CompanyRequestStatus with _$CompanyRequestStatus {
  const factory CompanyRequestStatus({
    required int id,
    @JsonKey(name: 'company_name')
    required String companyName,
    @JsonKey(name: 'manager_name')
    required String managerName,
    required String phone,
    required String email,
    required String city,
    required Status47eEnum status,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _CompanyRequestStatus;

  factory CompanyRequestStatus.fromJson(Map<String, dynamic> json) =>
      _$CompanyRequestStatusFromJson(json);
}
