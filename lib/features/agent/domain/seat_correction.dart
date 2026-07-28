/// Siège réattribué automatiquement à la synchronisation d'un billet créé
/// hors ligne (guide §6.15, `seat_conflict`).
///
/// Émis par [AgentSyncRepository.seatCorrections] pour alimenter la modale
/// « billet corrigé » avec proposition de réimpression.
class SeatCorrection {
  const SeatCorrection({
    required this.ticketNumber,
    required this.passengerName,
    required this.newSeat,
    this.originalSeat,
  });

  final String ticketNumber;
  final String passengerName;

  /// Siège demandé hors ligne — `null` s'il n'avait pas encore été attribué
  /// localement (cas courant : l'attribution reste au serveur, cf. écran
  /// « Enregistrer un passager »).
  final String? originalSeat;

  final String newSeat;
}
