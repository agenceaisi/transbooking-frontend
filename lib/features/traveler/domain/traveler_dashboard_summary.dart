import 'package:freezed_annotation/freezed_annotation.dart';

part 'traveler_dashboard_summary.freezed.dart';

/// Synthèse de l'accueil voyageur (`GET /dashboard/traveler/`, guide §6.16).
@freezed
abstract class TravelerDashboardSummary with _$TravelerDashboardSummary {
  const factory TravelerDashboardSummary({
    required List<TravelerTripPreview> nextTrips,

    /// Réservations actives (non annulées) à venir.
    required int activeBookingsCount,

    /// Réservations en attente de paiement.
    required int pendingCount,
    required List<TravelerNotificationPreview> recentNotifications,
  }) = _TravelerDashboardSummary;
}

/// Prochain voyage tel qu'affiché dans le tableau de bord.
@freezed
abstract class TravelerTripPreview with _$TravelerTripPreview {
  const factory TravelerTripPreview({
    required String ticketNumber,
    required String origin,
    required String destination,
    required DateTime departureTime,
    required String seatNumber,

    /// Valeur technique du statut (`paid`, `pending`, `scheduled`…). Le libellé
    /// et la couleur sont dérivés côté présentation.
    required String status,
  }) = _TravelerTripPreview;
}

/// Aperçu d'une notification récente (résumé, sans le type technique).
@freezed
abstract class TravelerNotificationPreview with _$TravelerNotificationPreview {
  const factory TravelerNotificationPreview({
    required int id,
    required String title,
    required String body,
    required bool isRead,
    required DateTime createdAt,
  }) = _TravelerNotificationPreview;
}
