import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_outcome.freezed.dart';

/// Résultat d'un scan de billet (`POST /agent/scan/`), code couleur inclus.
///
/// 🔴 Le schéma type la réponse comme un écho de la requête (`BookingRead`),
/// artefact drf-spectacular identique aux divergences déjà relevées (mémoire
/// du projet, points 2/18/23/26/32). La forme retenue ici suit `ScanLog`
/// (`GET /agent/scan/history/`, décrit par le guide §6.7) : chaque scan est
/// tracé serveur, y compris `not_found`, ce qui n'a de sens que si
/// `POST /agent/scan/` renvoie déjà cette forme. À confirmer côté backend
/// (voir `api/backend_completion_requests_5c.md`).
///
/// Les 7 valeurs de `ResultEnum` couvrent la maquette (6 cas) sauf « autre
/// compagnie » : le multi-tenant (CLAUDE.md §1) interdit à l'API de
/// distinguer un billet d'une autre compagnie d'un billet inexistant — les
/// deux se lisent [notFound]. « Expiré » (voyage passé) n'existe pas non plus
/// comme valeur distincte : un tel billet renvoie [invalid].
enum ScanOutcomeKind {
  valid,
  unpaid,
  cancelled,
  refunded,
  alreadyBoarded,
  invalid,
  notFound,
}

@freezed
abstract class ScanOutcome with _$ScanOutcome {
  const factory ScanOutcome({
    required ScanOutcomeKind kind,
    required String ticketNumber,
    String? passengerName,
    String? seatNumber,

    /// Trajet, complété depuis le cache local (`CachedTrips`) quand le
    /// billet scanné y figure — la réponse du scan ne le porte pas. Le
    /// voyage est toujours celui du jour (paquet matinal, cf. `AgentTrip`),
    /// aucune date distincte n'est donc affichée.
    String? tripLabel,

    /// Horaire de l'embarquement précédent, pour le message « déjà utilisé ».
    String? boardedAtLabel,
    required DateTime scannedAt,
  }) = _ScanOutcome;

  const ScanOutcome._();

  bool get isValid => kind == ScanOutcomeKind.valid;

  /// Peut être confirmé (« Marquer embarqué ») : seul un billet valide et pas
  /// déjà embarqué l'autorise.
  bool get canBoard => kind == ScanOutcomeKind.valid;
}
