import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/features/agent/data/agent_control_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/data/agent_scan_repository_impl.dart';
import 'package:transbooking_bf/features/agent/domain/boarding_repository.dart';
import 'package:transbooking_bf/features/agent/domain/scan_outcome.dart';

class _MockControlRemote extends Mock implements AgentControlRemoteDataSource {}

class _MockBoardingRepository extends Mock implements BoardingRepository {}

void main() {
  late _MockControlRemote remote;
  late _MockBoardingRepository boardingRepository;
  late LocalDatabase database;
  late AgentScanRepositoryImpl repository;

  setUp(() {
    remote = _MockControlRemote();
    boardingRepository = _MockBoardingRepository();
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    repository = AgentScanRepositoryImpl(
      remote: remote,
      database: database,
      boardingRepository: boardingRepository,
    );
  });

  tearDown(() => database.close());

  group('en ligne — les 7 résultats de POST /agent/scan/', () {
    for (final kind in ScanOutcomeKind.values) {
      test('renvoie $kind tel que rendu par le serveur', () async {
        when(() => remote.scanQrData('BF2026000001')).thenAnswer(
          (_) async => ScanOutcome(
            kind: kind,
            ticketNumber: 'BF2026000001',
            scannedAt: DateTime.utc(2026, 7, 26, 9),
          ),
        );

        final outcome = await repository.scan('BF2026000001');

        expect(outcome.kind, kind);
        expect(outcome.isValid, kind == ScanOutcomeKind.valid);
        expect(outcome.canBoard, kind == ScanOutcomeKind.valid);
      });
    }

    test('un 404 (billet introuvable) reste un résultat, pas une erreur', () async {
      // AgentControlRemoteDataSource absorbe déjà le 404 (cf. sa propre
      // logique) : ici on vérifie seulement que le repository ne plante pas
      // sur un `notFound` renvoyé normalement.
      when(() => remote.scanQrData('INCONNU')).thenAnswer(
        (_) async => ScanOutcome(
          kind: ScanOutcomeKind.notFound,
          ticketNumber: 'INCONNU',
          scannedAt: DateTime.utc(2026, 7, 26, 9),
        ),
      );

      final outcome = await repository.scan('INCONNU');
      expect(outcome.kind, ScanOutcomeKind.notFound);
    });

    test('complète le trajet depuis le cache local si la réponse ne le porte pas', () async {
      await database
          .into(database.cachedTrips)
          .insert(
            CachedTripsCompanion.insert(
              id: const Value(12),
              originCity: 'Ouagadougou',
              destinationCity: 'Bobo-Dioulasso',
              departureTime: DateTime.utc(2026, 7, 26, 8, 30),
              vehicle: 'BF-1234-A',
              cachedAt: DateTime.utc(2026, 7, 26, 6),
            ),
          );
      await database
          .into(database.cachedBookings)
          .insert(
            CachedBookingsCompanion.insert(
              ticketNumber: 'BF2026000001',
              tripId: 12,
              passengerName: 'OUEDRAOGO Awa',
              status: const Value('paid'),
              cachedAt: DateTime.utc(2026, 7, 26, 6),
            ),
          );
      when(() => remote.scanQrData('BF2026000001')).thenAnswer(
        (_) async => ScanOutcome(
          kind: ScanOutcomeKind.valid,
          ticketNumber: 'BF2026000001',
          scannedAt: DateTime.utc(2026, 7, 26, 9),
        ),
      );

      final outcome = await repository.scan('BF2026000001');

      expect(outcome.tripLabel, 'Ouagadougou → Bobo-Dioulasso');
      expect(outcome.passengerName, 'OUEDRAOGO Awa');
    });
  });

  group('hors ligne — vérification via le paquet du jour uniquement', () {
    setUp(() {
      when(() => remote.scanQrData(any())).thenThrow(const NoConnectionFailure());
    });

    Future<void> seedBooking(String ticket, String status) {
      return database
          .into(database.cachedBookings)
          .insert(
            CachedBookingsCompanion.insert(
              ticketNumber: ticket,
              tripId: 12,
              passengerName: 'OUEDRAOGO Awa',
              status: Value(status),
              cachedAt: DateTime.utc(2026, 7, 26, 6),
            ),
          );
    }

    test('paid → valid', () async {
      await seedBooking('BF1', 'paid');
      expect((await repository.scan('BF1')).kind, ScanOutcomeKind.valid);
    });

    test('pending → unpaid', () async {
      await seedBooking('BF2', 'pending');
      expect((await repository.scan('BF2')).kind, ScanOutcomeKind.unpaid);
    });

    test('cancelled → cancelled', () async {
      await seedBooking('BF3', 'cancelled');
      expect((await repository.scan('BF3')).kind, ScanOutcomeKind.cancelled);
    });

    test('refunded → refunded', () async {
      await seedBooking('BF4', 'refunded');
      expect((await repository.scan('BF4')).kind, ScanOutcomeKind.refunded);
    });

    test('déjà présent dans le journal local d\'embarquement → alreadyBoarded', () async {
      await seedBooking('BF5', 'paid');
      await database
          .into(database.boardedTickets)
          .insert(
            BoardedTicketsCompanion.insert(
              ticketNumber: 'BF5',
              method: LocalBoardingMethod.scan,
              boardedAt: DateTime.utc(2026, 7, 26, 9),
            ),
          );

      expect(
        (await repository.scan('BF5')).kind,
        ScanOutcomeKind.alreadyBoarded,
      );
    });

    test('absent du paquet du jour → notFound (impossible de distinguer '
        'expiré / invalide / autre compagnie sans réseau)', () async {
      expect(
        (await repository.scan('INCONNU')).kind,
        ScanOutcomeKind.notFound,
      );
    });

    test('un délai dépassé suit le même repli que hors ligne', () async {
      when(() => remote.scanQrData(any())).thenThrow(const TimeoutFailure());
      await seedBooking('BF6', 'paid');

      expect((await repository.scan('BF6')).kind, ScanOutcomeKind.valid);
    });
  });

  test('confirmBoarding délègue au dépôt d\'embarquement avec la méthode "scan"', () async {
    when(
      () => boardingRepository.confirmBoarding(
        'BF2026000001',
        method: BoardingConfirmMethod.scan,
      ),
    ).thenAnswer((_) async {});

    await repository.confirmBoarding('BF2026000001');

    verify(
      () => boardingRepository.confirmBoarding(
        'BF2026000001',
        method: BoardingConfirmMethod.scan,
      ),
    ).called(1);
  });

  group('fetchServerHistory', () {
    test('vide silencieusement hors ligne plutôt que d\'échouer', () async {
      when(() => remote.scanHistory()).thenThrow(const NoConnectionFailure());

      expect(await repository.fetchServerHistory(), isEmpty);
    });
  });
}
