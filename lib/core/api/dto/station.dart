// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

/// Gare d'une compagnie. `company` est deduite de l'utilisateur courant.
@freezed
abstract class Station with _$Station {
  const factory Station({
    required int id,
    required int city,
    @JsonKey(name: 'city_name')
    required String cityName,
    required String name,
    String? address,
    String? localisation,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
