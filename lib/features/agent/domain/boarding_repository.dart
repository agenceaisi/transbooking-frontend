import 'agent_trip.dart';
import 'boarding_passenger.dart';
import 'boarding_roster.dart';
import 'boarding_validation_summary.dart';

/// Origine d'une confirmation d'embarquement — trace uniquement, le serveur
/// et l'outbox ne distinguent que par `ticket_number`.
enum BoardingConfirmMethod { manual, scan }

/// Liste des passagers et pointage d'embarquement d'un voyage (CLAUDE.md §6,
/// guide §6.7).
abstract interface class BoardingRepository {
  /// Assemble la liste depuis le paquet du jour (`CachedBookings`) et les
  /// réservations saisies aujourd'hui (`OfflineBookings`), enrichie de l'état
  /// d'embarquement local (`BoardedTickets`). Ne fait jamais d'appel réseau :
  /// aucun endpoit ne relit la liste (mémoire du projet, point 5).
  Future<BoardingRoster> loadRoster(AgentTrip trip);

  /// Coche un passager — manuellement (case à cocher) ou après confirmation
  /// d'un scan. En ligne : résout l'id numérique du billet
  /// (`GET /agent/bookings/{ticket_number}/`) puis
  /// `POST /agent/trips/{trip}/boarding/{booking}/`. Hors ligne : file
  /// d'attente (`validations[]`, clé = `ticket_number`) — jamais bloqué faute
  /// de réseau (CLAUDE.md §6).
  Future<void> confirmBoarding(
    String ticketNumber, {
    BoardingConfirmMethod method = BoardingConfirmMethod.manual,
  });

  /// « Tout embarquer » — les payés non encore embarqués. En ligne :
  /// `POST /agent/trips/{id}/boarding/all/` (un seul appel). Hors ligne :
  /// une écriture en file par passager restant, avec le même effet à la
  /// synchronisation. Renvoie le nombre de passagers embarqués.
  Future<int> boardAllPaid(AgentTrip trip, BoardingRoster roster);

  /// Verrouille l'embarquement (`boarding/validate`) — **en ligne
  /// uniquement** : la synchronisation ne porte aucune liste pour cette
  /// action (`SyncPayload` n'a pas de champ dédié). Hors ligne, l'écran
  /// désactive le bouton avec une explication plutôt que d'échouer
  /// silencieusement (CLAUDE.md §6).
  Future<BoardingValidationSummary> validate(AgentTrip trip);

  /// Vrai si ce voyage a déjà été verrouillé (persistant, survit un
  /// redémarrage).
  Future<bool> isValidated(int tripId);

  /// Passager de dernière minute — délègue à l'enregistrement du guichet
  /// (même règles en ligne/hors ligne, CLAUDE.md §3 : pas de logique
  /// dupliquée) puis rend le passager visible dans la liste immédiatement.
  Future<BoardingPassenger> addLastMinutePassenger({
    required AgentTrip trip,
    required String firstName,
    required String lastName,
    required String phone,
    required String paymentMethodWire,
    String? transactionRef,
  });
}
