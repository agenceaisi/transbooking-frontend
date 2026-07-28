// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'claim_type_enum.dart';

part 'claim_create.freezed.dart';
part 'claim_create.g.dart';

/// Depot d'une reclamation par un voyageur.
/// 
/// La compagnie peut etre fournie directement ou deduite de la reservation
/// referencee. La reservation doit appartenir au voyageur courant. Une piece
/// jointe facultative (`attachment`, multipart) peut accompagner le depot.
@freezed
abstract class ClaimCreate with _$ClaimCreate {
  const factory ClaimCreate({
    int? company,
    int? booking,
    @JsonKey(name: 'claim_type')
    required ClaimTypeEnum claimType,
    required String subject,
    required String description,
    String? attachment,
  }) = _ClaimCreate;

  factory ClaimCreate.fromJson(Map<String, dynamic> json) =>
      _$ClaimCreateFromJson(json);
}
