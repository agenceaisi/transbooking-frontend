import 'package:freezed_annotation/freezed_annotation.dart';

import 'monogram.dart';

part 'company_summary.freezed.dart';

/// Fiche résumée d'une compagnie partenaire (grille de l'accueil, en-tête de
/// résultats).
///
/// Issue de `GET /public/companies/` (`CompanyPublic`). `logo` reste une URL
/// réseau éventuelle — l'écran affiche un monogramme tant qu'aucune image n'est
/// fournie (zones photo = placeholders, CLAUDE.md §0).
@freezed
abstract class CompanySummary with _$CompanySummary {
  const factory CompanySummary({
    required int id,
    required String name,
    String? sigle,
    String? logoUrl,
    String? description,
    String? city,

    /// Note moyenne sur 5, `null` tant qu'aucun avis n'a été agrégé.
    double? rating,
  }) = _CompanySummary;

  const CompanySummary._();

  /// Monogramme de repli — deux lettres, sigle sinon initiales du nom.
  String get monogram => companyMonogram(sigle: sigle, name: name);
}
