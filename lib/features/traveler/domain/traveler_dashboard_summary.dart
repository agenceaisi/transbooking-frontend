import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_notification.dart';

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

    /// Billets payés (`paid_count`) — compteur « Payé » de la carte de statut.
    required int paidCount,

    /// Billets annulés + remboursés (`cancelled_count`) — compteur « Annulé ».
    required int cancelledCount,
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

    /// Nom de la compagnie du trajet (`company_name`).
    required String companyName,

    /// Sigle de la compagnie (`company_sigle`), `null` si absent.
    String? companySigle,

    /// Valeur technique du statut (`paid`, `pending`, `scheduled`…). Le libellé
    /// et la couleur sont dérivés côté présentation.
    required String status,
  }) = _TravelerTripPreview;
}

/// Aperçu d'une notification récente.
@freezed
abstract class TravelerNotificationPreview with _$TravelerNotificationPreview {
  const factory TravelerNotificationPreview({
    required int id,
    required String title,
    required String body,

    /// Type technique (`type`) → choix de l'icône et de la couleur côté UI.
    required NotificationKind kind,

    /// Libellé FR du type (`type_display`), facultatif.
    String? typeDisplay,
    required bool isRead,
    required DateTime createdAt,
  }) = _TravelerNotificationPreview;
}
