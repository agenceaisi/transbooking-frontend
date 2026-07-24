import 'package:freezed_annotation/freezed_annotation.dart';

import 'monogram.dart';

part 'company_profile.freezed.dart';

/// Un trajet actif desservi par la compagnie (`CompanyRouteSummary`), affiché
/// dans la section « Trajets desservis » de la fiche publique.
@immutable
class CompanyRoute {
  const CompanyRoute({
    required this.id,
    required this.originCityName,
    required this.destinationCityName,
    required this.basePrice,
    this.durationMinutes,
  });

  final int id;
  final String originCityName;
  final String destinationCityName;

  /// Tarif de base en FCFA (chaîne décimale, lecture seule).
  final String basePrice;
  final int? durationMinutes;
}

/// Fiche publique détaillée d'une compagnie (écran « Page compagnie »).
///
/// Issue de `GET /public/companies/{id}/` (`CompanyPublicDetail`) : coordonnées
/// de contact, **trajets desservis** (`routes`) et **répartition des notes**
/// (`rating_breakdown` + `reviews_count`) exposés depuis le complément d'API
/// (2026-07-23). Le champ `reviews` du DTO reste vide (guide §6.2) → la liste
/// d'avis est chargée séparément via `GET /reviews/?company_id=`.
@freezed
abstract class CompanyProfile with _$CompanyProfile {
  const factory CompanyProfile({
    required int id,
    required String name,
    String? sigle,
    String? logoUrl,
    String? description,
    String? city,
    double? rating,
    String? phone,
    String? email,

    /// Trajets actifs de la compagnie.
    @Default(<CompanyRoute>[]) List<CompanyRoute> routes,

    /// Répartition des notes {étoile 1–5 → nombre d'avis}, agrégée côté serveur.
    @Default(<int, int>{}) Map<int, int> ratingBreakdown,

    /// Nombre total d'avis pris en compte dans l'agrégat.
    int? reviewsCount,
  }) = _CompanyProfile;

  const CompanyProfile._();

  /// Monogramme de repli — deux lettres, sigle sinon initiales du nom.
  String get monogram => companyMonogram(sigle: sigle, name: name);
}
