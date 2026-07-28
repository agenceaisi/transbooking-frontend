import 'seat_correction.dart';
import 'sync_log_entry.dart';

/// Moteur de synchronisation hors ligne de l'agent.
///
/// Seul point d'entrée de la présentation pour piloter le socle (CLAUDE.md
/// §3) : elle ignore tout de dio et de Drift. Les écritures elles-mêmes
/// passent par `OutboxWriter` ; ceci ne fait que les envoyer.
abstract interface class AgentSyncRepository {
  /// Un siège réattribué à chaque fois qu'une synchronisation en résout un —
  /// alimente la modale « billet corrigé » (guide §6.15). Flux, car plusieurs
  /// corrections peuvent arriver dans le même envoi.
  Stream<SeatCorrection> get seatCorrections;

  /// `GET /agent/offline-data/` — remplace le cache local par le paquet du
  /// jour (voyages, réservations, colis arrivés).
  ///
  /// Silencieux hors réseau : le cache existant reste utilisable, il n'y a
  /// rien à signaler à l'agent tant qu'aucune donnée fraîche n'est arrivée.
  Future<void> downloadOfflineData();

  /// Envoie les écritures en attente de l'outbox.
  ///
  /// Ne fait rien s'il n'y a rien à envoyer. Un seul envoi à la fois : un
  /// appel pendant qu'un autre est en cours attend le même résultat plutôt
  /// que d'en déclencher un second (CLAUDE.md §6).
  Future<void> runSync();

  /// Repasse les écritures en échec en attente, puis relance l'envoi.
  ///
  /// Action explicite de l'agent (bouton « Réessayer ») : une écriture
  /// rejetée par le serveur n'est jamais retentée automatiquement.
  Future<void> retryFailed();

  /// `GET /agent/sync/logs/` — historique des synchronisations passées.
  ///
  /// Toujours en ligne (données du serveur, pas du cache) : hors réseau,
  /// laisse remonter l'échec pour que l'écran propose « Réessayer ».
  Future<List<SyncLogEntry>> syncLogs();
}
