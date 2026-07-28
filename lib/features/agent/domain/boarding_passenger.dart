import 'package:freezed_annotation/freezed_annotation.dart';

part 'boarding_passenger.freezed.dart';

/// Un passager inscrit sur le voyage en cours d'embarquement (maquette
/// « Liste passagers & Embarquement »).
///
/// Assemblé à partir du paquet du jour (`CachedBookings`, phase 5A) et, le cas
/// échéant, des réservations de dernière minute saisies pendant l'embarquement
/// — jamais d'un DTO généré directement (CLAUDE.md §3).
@freezed
abstract class BoardingPassenger with _$BoardingPassenger {
  const factory BoardingPassenger({
    required String ticketNumber,
    required String fullName,
    String? phone,
    String? seatNumber,

    /// Réservation au statut `paid` — seul un billet payé peut embarquer
    /// (guide §6.7 : `boarding/{id}` exige `paid`).
    required bool isPaid,

    required bool isBoarded,

    /// Embarquement confirmé hors ligne, en attente de synchronisation.
    required bool boardedOffline,
  }) = _BoardingPassenger;

  const BoardingPassenger._();

  /// Un billet non payé ne peut pas être coché (le serveur le refuserait).
  bool get canToggleBoarding => isPaid;
}
