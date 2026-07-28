/// Résumé renvoyé par `POST /agent/trips/{id}/boarding/validate/` —
/// verrouille l'embarquement (guide §6.7).
///
/// 🔴 Le schéma type cette réponse comme `BoardingValidation` (lecture d'un
/// **embarquement individuel** : `id, ticket_number, passenger_name, method,
/// boarded_at`), incompatible avec la forme documentée par le guide
/// (`{trip, total_paid, boarded, not_boarded, locked}`) — même artefact
/// drf-spectacular que les divergences déjà relevées (mémoire du projet,
/// points 2/18/23/26/32). Lu à la main depuis le guide plutôt que via un DTO
/// généré ; à confirmer côté backend (`api/backend_completion_requests_5c.md`).
class BoardingValidationSummary {
  const BoardingValidationSummary({
    required this.tripId,
    required this.totalPaid,
    required this.boarded,
    required this.notBoarded,
    required this.locked,
  });

  final int tripId;
  final int totalPaid;
  final int boarded;
  final int notBoarded;
  final bool locked;
}
