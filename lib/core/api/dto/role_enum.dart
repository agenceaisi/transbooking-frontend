// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `agent_guichet` - agent_guichet
/// * `controleur` - controleur
enum RoleEnum {
  @JsonValue('agent_guichet')
  agentGuichet('agent_guichet'),
  @JsonValue('controleur')
  controleur('controleur');

  const RoleEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
