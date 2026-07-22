import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/localization/app_locales.dart';
import 'package:transbooking_bf/core/sync/connection_providers.dart';
import 'package:transbooking_bf/core/sync/connection_status.dart';
import 'package:transbooking_bf/core/sync/connectivity_provider.dart';
import 'package:transbooking_bf/core/sync/pending_operation.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/core/utils/clock_provider.dart';
import 'package:transbooking_bf/core/widgets/status_badge.dart';
import 'package:transbooking_bf/features/agent/domain/agent_dashboard.dart';
import 'package:transbooking_bf/features/agent/domain/agent_dashboard_repository.dart';
import 'package:transbooking_bf/features/agent/presentation/agent_providers.dart';
import 'package:transbooking_bf/features/agent/presentation/screens/agent_dashboard_screen.dart';
import 'package:transbooking_bf/features/auth/domain/auth_state.dart';
import 'package:transbooking_bf/features/auth/domain/user_role.dart';
import 'package:transbooking_bf/features/auth/presentation/session_controller.dart';
import 'package:transbooking_bf/l10n/app_localizations.dart';

import '../../test_harness.dart';

class _MockRepository extends Mock implements AgentDashboardRepository {}

class _MockConnectivity extends Mock implements Connectivity {}

/// Session ouverte figée, pour n'exercer que le tableau de bord.
class _StubSessionController extends SessionController {
  _StubSessionController(this._role);

  final UserRole _role;

  @override
  AuthState build() =>
      Authenticated(role: _role, prenom: 'Awa', nom: 'Ouédraogo');
}

void main() {
  late _MockRepository repository;
  late _MockConnectivity connectivity;
  late AppLocalizations l10n;

  final departureAt = DateTime.utc(2026, 7, 22, 8, 30);

  AgentDeparture buildDeparture({
    int tripId = 12,
    int availableSeats = 12,
    TripStatus? status,
  }) {
    return AgentDeparture(
      tripId: tripId,
      origin: 'Ouagadougou',
      destination: 'Bobo-Dioulasso',
      departureTime: departureAt,
      availableSeats: availableSeats,
      passengerCount: 30,
      vehicleRegistration: 'BF-1234-A',
      status: status,
    );
  }

  AgentDashboardSnapshot buildSnapshot({
    List<AgentDeparture>? departures,
    List<AgentAlert>? alerts,
    DateTime? cachedAt,
  }) {
    return AgentDashboardSnapshot(
      departures: departures ?? [buildDeparture()],
      alerts: alerts ?? const [],
      pendingAlerts: 1,
      cachedAt: cachedAt,
    );
  }

  setUp(() async {
    repository = _MockRepository();
    connectivity = _MockConnectivity();
    l10n = await loadFrenchL10n();

    const results = [ConnectivityResult.wifi];
    when(connectivity.checkConnectivity).thenAnswer((_) async => results);
    when(
      () => connectivity.onConnectivityChanged,
    ).thenAnswer((_) => Stream.value(results));
  });

  /// Monte l'écran seul, sur un gabarit mobile (usage terrain prioritaire).
  Future<void> pumpDashboard(
    WidgetTester tester, {
    UserRole role = UserRole.agentGuichet,
    Size size = const Size(390, 900),
    ConnectionSnapshot connection = const ConnectionSnapshot(
      status: ConnectionStatus.synced,
      pendingCount: 0,
    ),
    List<PendingOperation> pendingOperations = const [],
  }) async {
    tester.view
      ..physicalSize = size
      ..devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    // Démonte l'arbre en fin de test : sans cela, l'horloge de l'en-tête
    // laisse son minuteur périodique en suspens et le test échoue.
    addTearDown(() => tester.pumpWidget(const SizedBox.shrink()));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          agentDashboardRepositoryProvider.overrideWithValue(repository),
          connectivityProvider.overrideWithValue(connectivity),
          // Horloge figée : la pendule de l'en-tête ne laisse aucun minuteur
          // en suspens, et l'affichage reste comparable d'un test à l'autre.
          clockProvider.overrideWith(
            (ref) => Stream.value(DateTime.utc(2026, 7, 22, 8)),
          ),
          // État de connexion injecté : cet écran n'a pas à monter une base
          // locale. Son calcul est couvert par connection_providers_test.
          connectionSnapshotProvider.overrideWithValue(connection),
          pendingOperationsProvider.overrideWith(
            (ref) => Stream.value(pendingOperations),
          ),
          sessionControllerProvider.overrideWith(
            () => _StubSessionController(role),
          ),
        ],
        child: MaterialApp(
          theme: AppTheme.light,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocales.supported,
          locale: AppLocales.fallback,
          home: const AgentDashboardScreen(),
        ),
      ),
    );
    // Deux images suffisent : la première monte l'écran, la seconde affiche le
    // résultat du dépôt. Pas de `pumpAndSettle` ici — le squelette de
    // chargement pulse en boucle et l'arbre ne se stabiliserait jamais.
    await tester.pump();
    await tester.pump();
  }

  testWidgets('affiche l\'identité, le bandeau et les actions du guichet', (
    tester,
  ) async {
    when(repository.load).thenAnswer((_) async => buildSnapshot());

    await pumpDashboard(tester);

    expect(find.text('Awa Ouédraogo'), findsOneWidget);
    expect(find.text(l10n.agentRoleGuichet), findsOneWidget);
    // Le bandeau de connexion est toujours visible en module agent.
    expect(find.text(l10n.connectionSyncedTitle), findsOneWidget);
    expect(find.text(l10n.agentActionRegisterPassenger), findsOneWidget);
    expect(find.text(l10n.agentActionRegisterParcel), findsOneWidget);
    expect(find.text(l10n.agentActionScanQr), findsOneWidget);
  });

  testWidgets('liste les prochains départs avec véhicule et places', (
    tester,
  ) async {
    when(repository.load).thenAnswer((_) async => buildSnapshot());

    await pumpDashboard(tester);

    expect(find.text(l10n.agentNextDeparturesTitle), findsOneWidget);
    expect(find.text('Bobo-Dioulasso'), findsOneWidget);
    expect(find.text('08:30'), findsOneWidget);
    expect(
      find.text(l10n.agentSeatsAvailable(12), skipOffstage: false),
      findsOneWidget,
    );
    expect(
      find.textContaining('BF-1234-A', skipOffstage: false),
      findsOneWidget,
    );
  });

  testWidgets('un départ complet interdit d\'ajouter un passager', (
    tester,
  ) async {
    when(repository.load).thenAnswer(
      (_) async =>
          buildSnapshot(departures: [buildDeparture(availableSeats: 0)]),
    );

    await pumpDashboard(tester);

    expect(find.text(l10n.agentSeatsFull, skipOffstage: false), findsOneWidget);
    final addButton = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, l10n.agentAddPassenger),
    );
    expect(addButton.onPressed, isNull);
  });

  testWidgets('annonce un retard sans inventer de nouvelle heure', (
    tester,
  ) async {
    when(repository.load).thenAnswer(
      (_) async => buildSnapshot(
        departures: [buildDeparture(status: TripStatus.delayed)],
      ),
    );

    await pumpDashboard(tester);

    expect(
      find.text(l10n.agentDepartureDelayed, skipOffstage: false),
      findsOneWidget,
    );
  });

  testWidgets('un voyage annulé n\'invite pas à vendre un billet', (
    tester,
  ) async {
    // Cas relevé sur l'API réelle : un voyage annulé reste dans
    // `next_departures`, avec ses places encore libres.
    when(repository.load).thenAnswer(
      (_) async => buildSnapshot(
        departures: [
          buildDeparture(availableSeats: 32, status: TripStatus.cancelled),
        ],
      ),
    );

    await pumpDashboard(tester);

    expect(
      find.text(l10n.agentDepartureCancelled, skipOffstage: false),
      findsOneWidget,
    );
    final addButton = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, l10n.agentAddPassenger),
    );
    expect(addButton.onPressed, isNull);
    // La pastille de places est grise, pas verte : elle n'appelle pas à agir.
    final badge = tester.widget<StatusBadge>(find.byType(StatusBadge));
    expect(badge.type, StatusType.neutral);
  });

  testWidgets('propose le programme complet quand plus rien ne part', (
    tester,
  ) async {
    when(
      repository.load,
    ).thenAnswer((_) async => buildSnapshot(departures: const []));

    await pumpDashboard(tester);

    expect(find.text(l10n.agentNoDeparturesTitle), findsOneWidget);
    expect(find.text(l10n.agentNoDeparturesMessage), findsOneWidget);
  });

  testWidgets('signale l\'heure du cache quand les données sont d\'archive', (
    tester,
  ) async {
    when(repository.load).thenAnswer(
      (_) async => buildSnapshot(cachedAt: DateTime.utc(2026, 7, 22, 7, 45)),
    );

    await pumpDashboard(tester);

    expect(find.textContaining('Dernière mise à jour'), findsOneWidget);
  });

  testWidgets('le contrôleur voit l\'embarquement, pas le guichet', (
    tester,
  ) async {
    when(repository.load).thenAnswer((_) async => buildSnapshot());

    await pumpDashboard(tester, role: UserRole.controleur);

    expect(find.text(l10n.agentRoleControleur), findsOneWidget);
    expect(find.text(l10n.agentNextBoardingTitle), findsOneWidget);
    expect(find.text(l10n.agentScanNextTicket), findsOneWidget);
    // Actions réduites : pas d'enregistrement de passager ni de colis.
    expect(find.text(l10n.agentActionRegisterPassenger), findsNothing);
    expect(find.text(l10n.agentActionRegisterParcel), findsNothing);
    expect(find.text(l10n.agentNextDeparturesTitle), findsNothing);
  });

  testWidgets('propose de réessayer quand ni réseau ni cache ne répondent', (
    tester,
  ) async {
    // Échec asynchrone, comme un vrai appel réseau.
    when(
      repository.load,
    ).thenAnswer((_) async => throw const NoConnectionFailure());

    await pumpDashboard(tester);
    // L'erreur remonte une image après la résolution du futur.
    await tester.pump();

    expect(find.text(l10n.failureNoConnection), findsOneWidget);
    expect(find.text(l10n.actionRetry), findsOneWidget);
  });

  testWidgets('le bandeau ouvre le détail des données en attente', (
    tester,
  ) async {
    when(repository.load).thenAnswer((_) async => buildSnapshot());

    await pumpDashboard(tester);
    await tester.tap(find.text(l10n.connectionSyncedTitle));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    // Outbox vide à ce stade : la feuille le dit, elle ne prétend rien d'autre.
    expect(find.text(l10n.agentPendingEmptyTitle), findsOneWidget);
  });
}
