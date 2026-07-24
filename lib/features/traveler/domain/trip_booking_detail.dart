import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_booking_detail.freezed.dart';

/// Détail d'un voyage pour la réservation (`GET /trips/{id}/`, `TripDetail`).
///
/// ⚠️ Le contrat expose `available_seat_numbers` (liste **plate** des sièges
/// libres) mais **pas le plan du véhicule** (grille rangées/colonnes, réservé au
/// back-office `company/vehicles/{id}/seat-plan/`). On ne peut donc pas rendre
/// une grille de bus fidèle : les sièges libres sont proposés en pastilles
/// sélectionnables, avec l'option « attribution automatique » (siège laissé au
/// serveur). Le type de véhicule et la distance de la maquette ne sont pas non
/// plus dans `TripDetail` → non affichés (jamais inventés, CLAUDE.md §7).
@freezed
abstract class TripBookingDetail with _$TripBookingDetail {
  const factory TripBookingDetail({
    required int id,
    required String routeLabel,
    required String originCity,
    required String destinationCity,
    required DateTime departureTime,
    DateTime? arrivalTime,

    /// Prix par place en FCFA (chaîne décimale, lecture seule).
    required String price,
    int? availableSeats,
    required List<String> availableSeatNumbers,
    String? vehicleRegistration,
    required String statusDisplay,
  }) = _TripBookingDetail;

  const TripBookingDetail._();

  /// Montant numérique du prix, pour l'affichage du total (jamais recalculé
  /// comme tarif : le montant facturé fait foi côté API).
  double get priceValue => double.tryParse(price) ?? 0;

  bool get hasSeats => availableSeatNumbers.isNotEmpty;

  /// Durée en minutes si l'heure d'arrivée est connue.
  int? get durationMinutes {
    final arrival = arrivalTime;
    if (arrival == null) return null;
    final minutes = arrival.difference(departureTime).inMinutes;
    return minutes > 0 ? minutes : null;
  }
}
