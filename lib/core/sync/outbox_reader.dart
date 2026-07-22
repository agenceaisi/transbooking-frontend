import 'package:drift/drift.dart';

import '../storage/local_database.dart';
import 'pending_operation.dart';

/// Lecture de la file d'écritures hors ligne.
///
/// Volontairement en lecture seule : l'écriture et l'envoi appartiennent au
/// moteur de synchronisation (phase 5A). Ici, on ne fait qu'observer, pour que
/// le bandeau de connexion dise la vérité sur ce qui reste à envoyer.
class OutboxReader {
  const OutboxReader(this._db);

  final LocalDatabase _db;

  /// Flux des opérations non encore acceptées par le serveur, la plus
  /// ancienne d'abord — c'est l'ordre dans lequel elles partiront.
  Stream<List<PendingOperation>> watchOutstanding() {
    final query = _db.select(_db.outboxEntries)
      ..where((entry) => entry.status.equalsValue(OutboxStatus.synced).not())
      ..orderBy([(entry) => OrderingTerm(expression: entry.createdAt)]);

    return query.watch().map(
      (rows) => rows
          .map(
            (row) => PendingOperation(
              entity: row.entity,
              reference: row.reference,
              status: row.status,
              createdAt: row.createdAt,
              lastError: row.lastError,
            ),
          )
          .toList(growable: false),
    );
  }

  /// Flux de l'état de la dernière synchronisation (ligne unique).
  Stream<SyncStateEntry> watchSyncState() {
    return (_db.select(
      _db.syncStateEntries,
    )..where((entry) => entry.id.equals(_syncStateRowId))).watchSingle();
  }

  /// Identifiant de la ligne unique de `SyncStateEntries`.
  static const int _syncStateRowId = 0;
}
