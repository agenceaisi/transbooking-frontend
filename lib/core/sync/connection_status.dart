import '../theme/app_status_colors.dart';

/// Les cinq états du bandeau de connexion (CLAUDE.md §6).
///
/// Ils combinent la connectivité réseau et l'état de l'outbox. La règle est
/// stricte : **ne jamais mentir**. Une synchronisation échouée reste en
/// [syncError] tant qu'elle n'a pas réussi — jamais en [synced].
enum ConnectionStatus {
  /// Vert — en ligne, rien en attente.
  synced,

  /// Bleu clignotant — synchronisation en cours.
  syncing,

  /// Orange — hors ligne avec des écritures en attente.
  offlinePending,

  /// Gris — hors ligne, outbox vide.
  offline,

  /// Rouge — la dernière synchronisation a échoué, relance proposée.
  syncError;

  /// Couleurs sémantiques associées.
  StatusType get statusType => switch (this) {
    ConnectionStatus.synced => StatusType.success,
    ConnectionStatus.syncing => StatusType.info,
    ConnectionStatus.offlinePending => StatusType.warning,
    ConnectionStatus.offline => StatusType.neutral,
    ConnectionStatus.syncError => StatusType.danger,
  };

  /// Seul l'état de synchronisation clignote (variante du bleu, §4).
  bool get isBlinking => this == ConnectionStatus.syncing;

  /// Vrai quand l'agent peut relancer lui-même l'envoi.
  bool get canRetry => this == ConnectionStatus.syncError;

  /// Détermine l'état à afficher.
  ///
  /// [pendingCount] est le nombre d'opérations en attente dans l'outbox.
  /// L'ordre des tests reflète la priorité : une erreur prime sur tout le
  /// reste, car c'est la seule information qui appelle une action.
  static ConnectionStatus resolve({
    required bool isOnline,
    required int pendingCount,
    bool isSyncing = false,
    bool hasSyncError = false,
  }) {
    if (hasSyncError) return ConnectionStatus.syncError;
    if (isSyncing) return ConnectionStatus.syncing;
    if (!isOnline) {
      return pendingCount > 0
          ? ConnectionStatus.offlinePending
          : ConnectionStatus.offline;
    }
    return ConnectionStatus.synced;
  }
}
