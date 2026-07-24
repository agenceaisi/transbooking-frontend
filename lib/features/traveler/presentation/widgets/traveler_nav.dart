import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';

/// Les sections de l'espace voyageur, dans l'ordre du menu latéral (maquette
/// « Tableau de bord voyageur »).
enum TravelerDestination {
  dashboard,
  search,
  bookings,
  parcels,
  claims,
  baggage,
  profile,
}

/// Description d'un élément de navigation : libellé, icône et cible de route.
///
/// « Rechercher » et « Suivi de colis » pointent vers les écrans publics déjà
/// construits en 4A ; le reste vit dans l'espace voyageur protégé.
class TravelerNavSpec {
  const TravelerNavSpec({
    required this.destination,
    required this.label,
    required this.shortLabel,
    required this.icon,
    required this.routeName,
    this.inBottomNav = false,
  });

  final TravelerDestination destination;
  final String label;

  /// Libellé court pour la barre basse mobile.
  final String shortLabel;
  final IconData icon;
  final String routeName;

  /// Présent dans la barre basse mobile (5 onglets seulement).
  final bool inBottomNav;

  /// Construit la liste complète des sections, libellés traduits.
  static List<TravelerNavSpec> all(BuildContext context) {
    final l10n = context.l10n;
    return [
      TravelerNavSpec(
        destination: TravelerDestination.dashboard,
        label: l10n.travelerNavHome,
        shortLabel: l10n.travelerNavHome,
        icon: Icons.home_outlined,
        routeName: AppRoutes.travelerName,
        inBottomNav: true,
      ),
      TravelerNavSpec(
        destination: TravelerDestination.search,
        label: l10n.travelerNavSearch,
        shortLabel: l10n.travelerNavSearch,
        icon: Icons.search,
        routeName: AppRoutes.searchResultsName,
        inBottomNav: true,
      ),
      TravelerNavSpec(
        destination: TravelerDestination.bookings,
        label: l10n.travelerNavBookings,
        shortLabel: l10n.travelerNavBookingsShort,
        icon: Icons.confirmation_number_outlined,
        routeName: AppRoutes.travelerBookingsName,
        inBottomNav: true,
      ),
      TravelerNavSpec(
        destination: TravelerDestination.parcels,
        label: l10n.travelerNavParcels,
        shortLabel: l10n.travelerNavParcelsShort,
        icon: Icons.inventory_2_outlined,
        routeName: AppRoutes.parcelTrackingName,
        inBottomNav: true,
      ),
      TravelerNavSpec(
        destination: TravelerDestination.claims,
        label: l10n.travelerNavClaims,
        shortLabel: l10n.travelerNavClaims,
        icon: Icons.feedback_outlined,
        routeName: AppRoutes.travelerClaimsName,
      ),
      TravelerNavSpec(
        destination: TravelerDestination.baggage,
        label: l10n.travelerNavBaggage,
        shortLabel: l10n.travelerNavBaggage,
        icon: Icons.luggage_outlined,
        routeName: AppRoutes.travelerBaggageName,
      ),
      TravelerNavSpec(
        destination: TravelerDestination.profile,
        label: l10n.travelerNavProfile,
        shortLabel: l10n.travelerNavProfile,
        icon: Icons.person_outline,
        routeName: AppRoutes.travelerProfileName,
        inBottomNav: true,
      ),
    ];
  }
}
