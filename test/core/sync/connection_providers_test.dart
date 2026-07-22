import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/storage/database_provider.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/core/sync/connection_providers.dart';
import 'package:transbooking_bf/core/sync/connection_status.dart';
import 'package:transbooking_bf/core/sync/connectivity_provider.dart';

class _MockConnectivity extends Mock implements Connectivity {}

void main() {
  late LocalDatabase database;
  late _MockConnectivity connectivity;

  /// Fixe la connectivité de l'appareil pour toute la durée du test.
  void stubConnectivity({required bool isOnline}) {
    final results = [
      isOnline ? ConnectivityResult.mobile : ConnectivityResult.none,
    ];
    when(connectivity.checkConnectivity).thenAnswer((_) async => results);
    when(
      () => connectivity.onConnectivityChanged,
    ).thenAnswer((_) => Stream.value(results));
  }

  ProviderContainer buildContainer() {
    final container = ProviderContainer(
      overrides: [
        localDatabaseProvider.overrideWithValue(database),
        connectivityProvider.overrideWithValue(connectivity),
      ],
    );
    // Les providers sont auto-disposables : sans abonnement, ils sont détruits
    // avant même que leurs flux n'aient émis.
    container.listen(connectionSnapshotProvider, (_, _) {});
    addTearDown(container.dispose);
    return container;
  }

  /// Attend que les trois flux observés aient produit leur première valeur.
  Future<void> settle(ProviderContainer container) async {
    await container.read(isOnlineProvider.future);
    await container.read(pendingOperationsProvider.future);
    await container.read(syncStateProvider.future);
  }

  Future<void> enqueue({
    required String reference,
    OutboxStatus status = OutboxStatus.pending,
  }) {
    return database
        .into(database.outboxEntries)
        .insert(
          OutboxEntriesCompanion.insert(
            entity: OutboxEntity.booking,
            reference: reference,
            status: Value(status),
            createdAt: DateTime.utc(2026, 7, 22, 8, 30),
          ),
        );
  }

  setUp(() {
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    connectivity = _MockConnectivity();
  });

  tearDown(() => database.close());

  test('en ligne, outbox vide → vert', () async {
    stubConnectivity(isOnline: true);
    final container = buildContainer();
    await settle(container);

    final snapshot = container.read(connectionSnapshotProvider);

    expect(snapshot.status, ConnectionStatus.synced);
    expect(snapshot.pendingCount, 0);
  });

  test('hors ligne avec des saisies en attente → orange et compteur', () async {
    stubConnectivity(isOnline: false);
    await enqueue(reference: 'BF2026000001');
    await enqueue(reference: 'BF2026000002');

    final container = buildContainer();
    await settle(container);

    final snapshot = container.read(connectionSnapshotProvider);

    expect(snapshot.status, ConnectionStatus.offlinePending);
    expect(snapshot.pendingCount, 2);
  });

  test('hors ligne sans rien en attente → gris', () async {
    stubConnectivity(isOnline: false);
    final container = buildContainer();
    await settle(container);

    expect(
      container.read(connectionSnapshotProvider).status,
      ConnectionStatus.offline,
    );
  });

  test('un envoi en cours → bleu clignotant', () async {
    stubConnectivity(isOnline: true);
    await enqueue(reference: 'BF2026000003', status: OutboxStatus.syncing);

    final container = buildContainer();
    await settle(container);

    final snapshot = container.read(connectionSnapshotProvider);

    expect(snapshot.status, ConnectionStatus.syncing);
    expect(snapshot.status.isBlinking, isTrue);
  });

  test('une synchro échouée reste rouge même le réseau revenu', () async {
    stubConnectivity(isOnline: true);
    await database
        .update(database.syncStateEntries)
        .write(const SyncStateEntriesCompanion(lastSyncError: Value('500')));

    final container = buildContainer();
    await settle(container);

    // 🔴 Le bandeau ne ment jamais : tant qu'un envoi n'a pas abouti, l'agent
    // doit voir qu'il reste un problème.
    final snapshot = container.read(connectionSnapshotProvider);
    expect(snapshot.status, ConnectionStatus.syncError);
    expect(snapshot.lastSyncError, '500');
  });

  test('une opération déjà envoyée ne compte plus', () async {
    stubConnectivity(isOnline: true);
    await enqueue(reference: 'BF2026000004', status: OutboxStatus.synced);

    final container = buildContainer();
    await settle(container);

    final snapshot = container.read(connectionSnapshotProvider);

    expect(snapshot.pendingCount, 0);
    expect(snapshot.status, ConnectionStatus.synced);
  });
}
