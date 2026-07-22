import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/sync/connection_status.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/core/widgets/connection_banner.dart';

import '../../test_harness.dart';

void main() {
  group('calcul de l\'état', () {
    test('en ligne et à jour → vert', () {
      expect(
        ConnectionStatus.resolve(isOnline: true, pendingCount: 0),
        ConnectionStatus.synced,
      );
    });

    test('synchronisation en cours → bleu clignotant', () {
      final status = ConnectionStatus.resolve(
        isOnline: true,
        pendingCount: 2,
        isSyncing: true,
      );

      expect(status, ConnectionStatus.syncing);
      expect(status.isBlinking, isTrue);
    });

    test('hors ligne avec des données en attente → orange', () {
      expect(
        ConnectionStatus.resolve(isOnline: false, pendingCount: 3),
        ConnectionStatus.offlinePending,
      );
    });

    test('hors ligne sans rien en attente → gris', () {
      expect(
        ConnectionStatus.resolve(isOnline: false, pendingCount: 0),
        ConnectionStatus.offline,
      );
    });

    test('une synchro échouée passe au rouge, même en ligne', () {
      // Règle non négociable : le bandeau ne ment jamais sur l'état réel.
      final status = ConnectionStatus.resolve(
        isOnline: true,
        pendingCount: 0,
        hasSyncError: true,
      );

      expect(status, ConnectionStatus.syncError);
      expect(status.canRetry, isTrue);
    });

    test('l\'erreur prime sur la synchronisation en cours', () {
      expect(
        ConnectionStatus.resolve(
          isOnline: true,
          pendingCount: 1,
          isSyncing: true,
          hasSyncError: true,
        ),
        ConnectionStatus.syncError,
      );
    });

    test('chaque état a une couleur distincte', () {
      final types = ConnectionStatus.values
          .map((status) => status.statusType)
          .toSet();

      expect(types, hasLength(ConnectionStatus.values.length));
    });
  });

  group('rendu', () {
    testWidgets('annonce le nombre d\'éléments en attente', (tester) async {
      final l10n = await loadFrenchL10n();

      await pumpAppWidget(
        tester,
        const ConnectionBanner(
          status: ConnectionStatus.offlinePending,
          pendingCount: 3,
        ),
      );

      expect(find.text(l10n.connectionOfflinePending(3)), findsOneWidget);
    });

    testWidgets('accorde le message au singulier', (tester) async {
      final l10n = await loadFrenchL10n();

      await pumpAppWidget(
        tester,
        const ConnectionBanner(
          status: ConnectionStatus.offlinePending,
          pendingCount: 1,
        ),
      );

      expect(find.textContaining('1 élément'), findsOneWidget);
      expect(find.text(l10n.connectionOfflinePending(1)), findsOneWidget);
    });

    testWidgets('affiche un message propre à chaque état', (tester) async {
      final l10n = await loadFrenchL10n();
      final messages = {
        ConnectionStatus.synced: l10n.connectionSynced,
        ConnectionStatus.syncing: l10n.connectionSyncing,
        ConnectionStatus.offline: l10n.connectionOffline,
        ConnectionStatus.syncError: l10n.connectionSyncError,
      };

      for (final entry in messages.entries) {
        await pumpAppWidget(tester, ConnectionBanner(status: entry.key));
        // Le clignotement laisse une animation en cours : on fige le temps.
        await tester.pump(const Duration(milliseconds: 10));

        expect(find.text(entry.value), findsOneWidget, reason: entry.key.name);
      }
    });

    testWidgets('ouvre le détail des données en attente au toucher', (
      tester,
    ) async {
      var taps = 0;

      await pumpAppWidget(
        tester,
        ConnectionBanner(
          status: ConnectionStatus.offlinePending,
          pendingCount: 2,
          onTap: () => taps++,
        ),
      );

      await tester.tap(find.byType(ConnectionBanner));
      await tester.pump();

      expect(taps, 1);
    });

    testWidgets('propose la relance sur une erreur de synchronisation', (
      tester,
    ) async {
      await pumpAppWidget(
        tester,
        ConnectionBanner(status: ConnectionStatus.syncError, onTap: () {}),
      );

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.refresh);
    });

    testWidgets('utilise les couleurs du statut rouge en erreur', (
      tester,
    ) async {
      await pumpAppWidget(
        tester,
        const ConnectionBanner(status: ConnectionStatus.syncError),
      );
      await tester.pump(const Duration(milliseconds: 10));

      final material = tester.widget<Material>(
        find
            .descendant(
              of: find.byType(ConnectionBanner),
              matching: find.byType(Material),
            )
            .first,
      );

      expect(material.color, AppStatusColors.danger.background);
    });
  });
}
