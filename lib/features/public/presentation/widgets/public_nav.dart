import 'package:flutter/widgets.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';

/// Destinations de la navigation publique.
///
/// Centralise libellé et route de chaque entrée, pour que l'en-tête desktop, le
/// menu mobile et le pied de page pointent tous au même endroit.
enum PublicNavDestination {
  home,
  search,
  trackParcel,
  companies;

  String label(BuildContext context) {
    final l10n = context.l10n;
    return switch (this) {
      PublicNavDestination.home => l10n.publicNavHome,
      PublicNavDestination.search => l10n.publicNavSearch,
      PublicNavDestination.trackParcel => l10n.publicNavTrackParcel,
      PublicNavDestination.companies => l10n.publicNavCompanies,
    };
  }

  /// Nom de route go_router cible.
  String get routeName => switch (this) {
    PublicNavDestination.home => AppRoutes.homeName,
    PublicNavDestination.search => AppRoutes.searchResultsName,
    PublicNavDestination.trackParcel => AppRoutes.parcelTrackingName,
    // Aucun écran « liste des compagnies » n'existe (hors des 38) : la nav
    // renvoie à l'accueil, où figure la grille des partenaires.
    PublicNavDestination.companies => AppRoutes.homeName,
  };
}
