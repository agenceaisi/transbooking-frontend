import 'agent_trip.dart';
import 'passenger_registration.dart';

/// Enregistrement d'un passager au guichet (CLAUDE.md §3, §6).
abstract interface class AgentBookingRepository {
  /// `POST /agent/bookings/` si le réseau répond, sinon mise en file
  /// d'attente (outbox) — jamais bloqué faute de réseau.
  ///
  /// [transactionRef] est requis pour tout moyen différent de `cash`, en
  /// ligne comme hors ligne : la file d'attente (outbox) le transmet lui
  /// aussi, il est donc disponible dans les deux cas (cf. écran).
  Future<PassengerRegistration> registerPassenger({
    required AgentTrip trip,
    required String firstName,
    required String lastName,
    required String phone,
    required String paymentMethodWire,
    String? transactionRef,
  });

  /// `POST /agent/bookings/{ticket_number}/print/` — marque imprimé et
  /// renvoie le payload d'impression. Réimpression autorisée.
  Future<PassengerRegistration> printTicket(String ticketNumber);
}
