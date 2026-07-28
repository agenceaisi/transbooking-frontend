// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_registration_request.freezed.dart';
part 'company_registration_request.g.dart';

/// Demande publique d'inscription d'une compagnie (aucun compte cree).
@freezed
abstract class CompanyRegistrationRequest with _$CompanyRegistrationRequest {
  const factory CompanyRegistrationRequest({
    @JsonKey(name: 'company_name')
    required String companyName,
    @JsonKey(name: 'manager_name')
    required String managerName,
    required String phone,
    required String email,
    required String city,
    String? documents,
  }) = _CompanyRegistrationRequest;

  factory CompanyRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$CompanyRegistrationRequestFromJson(json);
}
