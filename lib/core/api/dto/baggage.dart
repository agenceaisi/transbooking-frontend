// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_enum.dart';

part 'baggage.freezed.dart';
part 'baggage.g.dart';

/// Lecture d'un bagage enregistre (ecran « Bagages » du voyageur).
@freezed
abstract class Baggage with _$Baggage {
  const factory Baggage({
    required int id,
    required String label,
    required String tag,
    @JsonKey(name: 'weight_kg')
    required String weightKg,
    LocationEnum? location,
    @JsonKey(name: 'location_display')
    required String locationDisplay,
  }) = _Baggage;

  factory Baggage.fromJson(Map<String, dynamic> json) =>
      _$BaggageFromJson(json);
}
