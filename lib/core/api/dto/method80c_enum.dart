// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `cash` - Especes
/// * `orange_money` - Orange Money
/// * `moov_money` - Moov Money
/// * `coris_money` - Coris Money
/// * `telecel_money` - Telecel Money
/// * `card` - Carte bancaire
enum Method80cEnum {
  @JsonValue('cash')
  cash('cash'),
  @JsonValue('orange_money')
  orangeMoney('orange_money'),
  @JsonValue('moov_money')
  moovMoney('moov_money'),
  @JsonValue('coris_money')
  corisMoney('coris_money'),
  @JsonValue('telecel_money')
  telecelMoney('telecel_money'),
  @JsonValue('card')
  card('card');

  const Method80cEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
