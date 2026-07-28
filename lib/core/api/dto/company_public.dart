// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_public.freezed.dart';
part 'company_public.g.dart';

/// Fiche publique d'une compagnie (page d'accueil, recherche).
@freezed
abstract class CompanyPublic with _$CompanyPublic {
  const factory CompanyPublic({
    required int id,
    required String name,
    String? sigle,
    required String? logo,
    String? description,
    String? city,
    required double? rating,
  }) = _CompanyPublic;

  factory CompanyPublic.fromJson(Map<String, dynamic> json) =>
      _$CompanyPublicFromJson(json);
}
