import 'created_booking.dart';
import 'passenger_details.dart';
import 'traveler_booking.dart';
import 'trip_booking_detail.dart';

/// Accès à la réservation (voyageur authentifié).
///
/// Seul point d'entrée de la présentation ; lève une `Failure` en cas d'échec
/// (dont `ConflictFailure` sur un `409` de siège déjà pris — l'UI propose alors
/// un autre siège).
abstract interface class BookingRepository {
  /// Détail d'un voyage + sièges disponibles (`GET /trips/{id}/`).
  Future<TripBookingDetail> tripDetail(int tripId);

  /// Crée une réservation (`POST /bookings/`), au statut `pending`.
  ///
  /// [seatNumber] `null` = attribution automatique par le serveur.
  Future<CreatedBooking> createBooking({
    required int tripId,
    String? seatNumber,
    required PassengerDetails passenger,
  });

  /// Mes réservations (`GET /bookings/`), les plus récentes d'abord.
  Future<List<TravelerBooking>> myBookings();

  /// Détail d'une réservation (`GET /bookings/{id}/`).
  Future<TravelerBooking> booking(int id);

  /// Annule une réservation (`POST /bookings/{id}/cancel/`) avec un [reason]
  /// obligatoire ; renvoie la réservation mise à jour.
  Future<TravelerBooking> cancelBooking(int id, {required String reason});
}
