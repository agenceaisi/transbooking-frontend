import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/sync/connection_providers.dart';
import '../../../core/sync/connectivity_provider.dart';
import '../../../core/sync/pending_operation.dart';
import 'agent_providers.dart';

/// Démarre le moteur de synchronisation pour toute la durée où l'écran agent
/// est monté.
///
/// Providers auto-disposables (Riverpod 3) : ce déclencheur ne vit que tant
/// qu'un widget le regarde (`ref.watch` sur l'écran agent), et s'arrête avec
/// lui — pas de synchro en tâche de fond après déconnexion.
///
/// Deux déclencheurs, conformes au CLAUDE.md §6 :
///  - le retour du réseau télécharge le paquet du jour une fois par session,
///    puis pousse l'outbox ;
///  - toute nouvelle écriture en attente relance un envoi tant que l'agent
///    est en ligne (la garde de ré-entrance du dépôt absorbe les doublons).
final agentSyncBootstrapProvider = Provider<void>((ref) {
  final repository = ref.watch(agentSyncRepositoryProvider);
  var hasDownloadedThisSession = false;

  ref.listen<AsyncValue<bool>>(
    isOnlineProvider,
    (previous, next) {
      final isOnline = next.value ?? false;
      if (!isOnline) return;

      if (!hasDownloadedThisSession) {
        hasDownloadedThisSession = true;
        unawaited(repository.downloadOfflineData());
      }
      unawaited(repository.runSync());
    },
    fireImmediately: true,
  );

  ref.listen<AsyncValue<List<PendingOperation>>>(
    pendingOperationsProvider,
    (previous, next) {
      final pending = next.value ?? const [];
      final isOnline = ref.read(isOnlineProvider).value ?? false;
      if (pending.isEmpty || !isOnline) return;
      unawaited(repository.runSync());
    },
  );
});
