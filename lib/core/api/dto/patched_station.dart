// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_station.freezed.dart';
part 'patched_station.g.dart';

/// Gare d'une compagnie. `company` est deduite de l'utilisateur courant.
@freezed
abstract class PatchedStation with _$PatchedStation {
  const factory PatchedStation({
    int? id,
    int? city,
    @JsonKey(name: 'city_name')
    String? cityName,
    String? name,
    String? address,
    String? localisation,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _PatchedStation;

  factory PatchedStation.fromJson(Map<String, dynamic> json) =>
      _$PatchedStationFromJson(json);
}
