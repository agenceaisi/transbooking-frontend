import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/database_provider.dart';
import '../storage/local_database.dart';
import 'connection_status.dart';
import 'connectivity_provider.dart';
import 'outbox_reader.dart';
import 'pending_operation.dart';

/// Lecture de la file d'écritures hors ligne.
final outboxReaderProvider = Provider<OutboxReader>(
  (ref) => OutboxReader(ref.watch(localDatabaseProvider)),
);

/// Écritures hors ligne encore à envoyer.
final pendingOperationsProvider = StreamProvider<List<PendingOperation>>(
  (ref) => ref.watch(outboxReaderProvider).watchOutstanding(),
);

/// Dernière synchronisation : horodatage et éventuelle erreur.
final syncStateProvider = StreamProvider<SyncStateEntry>(
  (ref) => ref.watch(outboxReaderProvider).watchSyncState(),
);

/// Ce que le bandeau de connexion doit afficher.
class ConnectionSnapshot {
  const ConnectionSnapshot({
    required this.status,
    required this.pendingCount,
    this.lastSyncAt,
    this.lastSyncError,
  });

  final ConnectionStatus status;

  /// Nombre d'écritures en attente d'envoi.
  final int pendingCount;

  /// Dernier envoi réussi de l'outbox.
  final DateTime? lastSyncAt;

  /// Motif du dernier échec, tant qu'une synchronisation n'a pas abouti.
  final String? lastSyncError;

  bool get hasPending => pendingCount > 0;
}

/// État réel de la connexion et de la synchronisation.
///
/// Croise trois sources : la connectivité de l'appareil, la file d'écritures
/// hors ligne et l'issue de la dernière synchronisation. 🔴 Règle non
/// négociable (CLAUDE.md §6) : ce calcul ne ment jamais. Une synchronisation
/// échouée reste rouge même une fois le réseau revenu, tant qu'un nouvel envoi
/// n'a pas réussi.
final connectionSnapshotProvider = Provider<ConnectionSnapshot>((ref) {
  // En l'absence de valeur (première image, flux en erreur), on garde la
  // dernière connue ; à défaut, on suppose le réseau présent — le premier
  // appel qui échoue corrigera l'affichage en quelques millisecondes.
  final isOnline = ref.watch(isOnlineProvider).value ?? true;
  final pending = ref.watch(pendingOperationsProvider).value ?? const [];
  final syncState = ref.watch(syncStateProvider).value;

  return ConnectionSnapshot(
    status: ConnectionStatus.resolve(
      isOnline: isOnline,
      pendingCount: pending.length,
      isSyncing: pending.any(
        (operation) => operation.status == OutboxStatus.syncing,
      ),
      hasSyncError: syncState?.lastSyncError != null,
    ),
    pendingCount: pending.length,
    lastSyncAt: syncState?.lastSyncAt,
    lastSyncError: syncState?.lastSyncError,
  );
});
