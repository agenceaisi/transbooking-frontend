// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

/// Ville desservie par le reseau (lecture publique, creation super admin).
@freezed
abstract class City with _$City {
  const factory City({
    required int id,
    required String name,
    String? region,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}
