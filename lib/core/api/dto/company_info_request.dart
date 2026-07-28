// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info_request.freezed.dart';
part 'company_info_request.g.dart';

/// Message du super admin demandant des informations complementaires.
@freezed
abstract class CompanyInfoRequest with _$CompanyInfoRequest {
  const factory CompanyInfoRequest({
    required String message,
  }) = _CompanyInfoRequest;

  factory CompanyInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$CompanyInfoRequestFromJson(json);
}
