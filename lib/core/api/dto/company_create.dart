// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status47e_enum.dart';

part 'company_create.freezed.dart';
part 'company_create.g.dart';

/// Formulaire de creation d'une compagnie par le super admin.
@freezed
abstract class CompanyCreate with _$CompanyCreate {
  const factory CompanyCreate({
    required int id,
    required String name,
    String? sigle,
    String? description,
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
    required Status47eEnum status,
  }) = _CompanyCreate;

  factory CompanyCreate.fromJson(Map<String, dynamic> json) =>
      _$CompanyCreateFromJson(json);
}
