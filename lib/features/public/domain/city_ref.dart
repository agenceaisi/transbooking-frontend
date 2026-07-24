import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_ref.freezed.dart';

/// Ville desservie par le réseau.
///
/// Entité du domaine issue de `GET /cities/` : alimente les listes déroulantes
/// départ / arrivée de la recherche. On ne fait pas fuiter le DTO `City` jusque
/// dans l'UI (CLAUDE.md §3).
@freezed
abstract class CityRef with _$CityRef {
  const factory CityRef({
    required int id,
    required String name,
    String? region,
  }) = _CityRef;
}
