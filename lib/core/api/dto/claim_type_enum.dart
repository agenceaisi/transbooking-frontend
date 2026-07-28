// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `retard` - Retard
/// * `perte_bagage` - Perte de bagage
/// * `bagage_endommage` - Bagage endommage
/// * `comportement` - Comportement
/// * `surcharge` - Surcharge
/// * `remboursement` - Remboursement
/// * `autre` - Autre
enum ClaimTypeEnum {
  @JsonValue('retard')
  retard('retard'),
  @JsonValue('perte_bagage')
  perteBagage('perte_bagage'),
  @JsonValue('bagage_endommage')
  bagageEndommage('bagage_endommage'),
  @JsonValue('comportement')
  comportement('comportement'),
  @JsonValue('surcharge')
  surcharge('surcharge'),
  @JsonValue('remboursement')
  remboursement('remboursement'),
  @JsonValue('autre')
  autre('autre');

  const ClaimTypeEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
