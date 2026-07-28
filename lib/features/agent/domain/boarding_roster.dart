import 'package:freezed_annotation/freezed_annotation.dart';

import 'boarding_passenger.dart';

part 'boarding_roster.freezed.dart';

/// Instantané de l'embarquement d'un voyage (maquette « Liste passagers &
/// Embarquement »).
///
/// 🔴 Aucun endpoint ne renvoie de compte d'embarquement (mémoire du projet,
/// phase 3, point 5) : `boarding/{id}`, `boarding/all` et `validations[]`
/// (synchro) sont des écritures pures. Les compteurs ci-dessous sont donc
/// **calculés côté app** à partir du paquet du jour et du journal local des
/// embarquements confirmés (`BoardedTickets`), jamais relus du serveur.
@freezed
abstract class BoardingRoster with _$BoardingRoster {
  const factory BoardingRoster({
    required int tripId,
    required List<BoardingPassenger> passengers,

    /// Capacité du véhicule, déduite de `trip.availableSeats + inscrits` au
    /// moment du chargement — `null` si le voyage vient du cache hors ligne
    /// (pas de tarif ni de places restantes fiables, cf. `AgentTrip.price`).
    int? totalSeats,

    /// Renseigné uniquement si la liste vient du cache local.
    DateTime? cachedAt,

    required bool validated,
    DateTime? validatedAt,
  }) = _BoardingRoster;

  const BoardingRoster._();

  int get registeredCount => passengers.length;

  int get paidCount => passengers.where((p) => p.isPaid).length;

  int get unpaidCount => registeredCount - paidCount;

  int get boardedCount => passengers.where((p) => p.isBoarded).length;

  int get absentCount => registeredCount - boardedCount;

  /// `null` quand [totalSeats] est inconnu — l'écran affiche alors le compte
  /// d'inscrits plutôt qu'un nombre de places inventé.
  int? get remainingCapacity =>
      totalSeats == null ? null : totalSeats! - registeredCount;

  /// Dénominateur de la barre de progression : la capacité si connue, sinon
  /// le nombre d'inscrits (progression « sur les inscrits »).
  int get progressDenominator {
    final seats = totalSeats;
    if (seats != null && seats > 0) return seats;
    return registeredCount;
  }

  double get boardingRatio =>
      progressDenominator == 0 ? 0 : boardedCount / progressDenominator;

  bool get isFromCache => cachedAt != null;

  List<BoardingPassenger> get notYetBoarded =>
      passengers.where((p) => p.isPaid && !p.isBoarded).toList(growable: false);

  BoardingPassenger? byTicket(String ticketNumber) {
    for (final passenger in passengers) {
      if (passenger.ticketNumber == ticketNumber) return passenger;
    }
    return null;
  }
}
