// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_enum.dart';

part 'baggage_write.freezed.dart';
part 'baggage_write.g.dart';

/// Enregistrement d'un bagage pese au guichet (imbrique dans la reservation).
@freezed
abstract class BaggageWrite with _$BaggageWrite {
  const factory BaggageWrite({
    required String label,
    @JsonKey(name: 'weight_kg')
    required String weightKg,
    LocationEnum? location,
  }) = _BaggageWrite;

  factory BaggageWrite.fromJson(Map<String, dynamic> json) =>
      _$BaggageWriteFromJson(json);
}
