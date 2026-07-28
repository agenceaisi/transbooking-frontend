import 'package:freezed_annotation/freezed_annotation.dart';

import 'created_booking.dart';
import 'traveler_baggage.dart';

part 'traveler_booking.freezed.dart';

/// Statut du voyage (`TripSummary.status`, `StatusF60Enum`) — distinct du
/// statut de la réservation. Un voyage passe à `completed` soit
/// automatiquement (heure d'arrivée dépassée sans annulation), soit à la main
/// par le contrôleur de la gare d'arrivée, même avant l'heure prévue : c'est
/// ce champ, jamais une comparaison locale de dates, qui fait foi pour
/// autoriser le dépôt d'un avis (guide §6.12).
enum TripStatusKind {
  scheduled('scheduled'),
  inProgress('in_progress'),
  delayed('delayed'),
  cancelled('cancelled'),
  completed('completed');

  const TripStatusKind(this.wire);

  final String wire;

  static TripStatusKind? fromWire(String? wire) {
    if (wire == null) return null;
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return null;
  }
}

/// Une réservation du voyageur (`BookingRead`, guide §6.7).
///
/// Entité du domaine, distincte du DTO généré : elle porte tout ce que les
/// écrans « Mes réservations » et « Mon billet » affichent, sans laisser fuiter
/// un DTO jusqu'à l'UI (CLAUDE.md §3). Le statut réutilise [BookingStatus].
@freezed
abstract class TravelerBooking with _$TravelerBooking {
  const factory TravelerBooking({
    required int id,
    required String ticketNumber,

    /// Identifiant du voyage (`BookingRead.trip.id`) — nécessaire pour lier un
    /// avis (`ReviewCreate.trip`), distinct de l'id de la réservation.
    required int tripId,
    required String originCity,
    required String destinationCity,

    /// Nom de la compagnie (via `trip.company_name`), pour l'en-tête du billet.
    required String companyName,
    String? companySigle,
    required DateTime departureTime,
    DateTime? arrivalTime,
    required String passengerName,
    required String phone,
    required String seatNumber,

    /// Bagages enregistrés sur la réservation (`BookingRead.baggage`).
    @Default([]) List<TravelerBaggageItem> baggage,

    /// Poids total des bagages (chaîne, lecture seule) ; `null` si aucun.
    String? baggageTotalWeightKg,

    /// Montant payé, calculé et renvoyé par l'API (lecture seule, CLAUDE.md §13).
    required String amount,

    /// Moyen de paiement (valeur technique) ou `null` si non payé.
    String? paymentMethod,

    /// QR du billet, image PNG encodée en base64 ; `null` tant que non émis.
    String? qrCode,
    BookingStatus? status,
    required String statusDisplay,
    required bool isBoarded,
    required DateTime createdAt,

    /// Statut du voyage lui-même (`trip.status`) — voir [TripStatusKind].
    TripStatusKind? tripStatus,
  }) = _TravelerBooking;

  const TravelerBooking._();

  /// Vrai si le billet peut encore être annulé : ni déjà annulé/remboursé, ni
  /// pour un départ passé (la maquette grise l'action sinon).
  bool get isCancellable {
    if (status == BookingStatus.cancelled || status == BookingStatus.refunded) {
      return false;
    }
    return departureTime.isAfter(DateTime.now());
  }

  /// Vrai si le voyage a déjà eu lieu.
  bool get isPast => departureTime.isBefore(DateTime.now());

  /// Le QR est disponible et affichable.
  bool get hasQrCode => qrCode != null && qrCode!.isNotEmpty;

  /// Vrai si un avis peut être déposé : voyage **terminé** (`trip.status`,
  /// jamais déduit de l'heure locale — cf. [TripStatusKind]) et réservation
  /// payée (guide §6.12 : « après voyage terminé + booking payé »).
  bool get isReviewable =>
      tripStatus == TripStatusKind.completed && status == BookingStatus.paid;
}
