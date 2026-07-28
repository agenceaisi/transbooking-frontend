import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/core/sync/outbox_writer.dart';
import 'package:transbooking_bf/features/agent/data/agent_parcel_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/data/agent_parcel_repository_impl.dart';

class _MockRemote extends Mock implements AgentParcelRemoteDataSource {}

void main() {
  late _MockRemote remote;
  late LocalDatabase database;
  late AgentParcelRepositoryImpl repository;

  final createdAt = DateTime.utc(2026, 7, 26, 8, 30);

  setUpAll(() {
    registerFallbackValue(
      const dto.AgentParcelCreate(
        originCity: 1,
        destinationCity: 2,
        senderName: 'x',
        senderPhone: 'x',
        recipientName: 'x',
        recipientPhone: 'x',
        weightKg: '1',
      ),
    );
  });

  dto.ParcelRead buildParcelRead({
    String trackingNumber = 'COL2026000001',
    List<dto.ParcelNotification> notifications = const [],
  }) {
    return dto.ParcelRead(
      id: 9,
      trackingNumber: trackingNumber,
      company: 1,
      originCity: 'Ouagadougou',
      destinationCity: 'Bobo-Dioulasso',
      senderName: 'Awa Traore',
      senderPhone: '+22670000000',
      recipientName: 'Issa Ouedraogo',
      recipientPhone: '+22671111111',
      weightKg: '5.0',
      tariff: '3000.00',
      qrCode: 'data:image/png;base64,iVBORw0KGgo=',
      statusDisplay: 'Enregistré',
      notifications: notifications,
      history: const [],
      createdAt: createdAt,
      updatedAt: createdAt,
    );
  }

  setUp(() {
    remote = _MockRemote();
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    repository = AgentParcelRepositoryImpl(
      remote: remote,
      outbox: OutboxWriter(database),
    );
  });

  tearDown(() => database.close());

  group('en ligne', () {
    test('enregistre le colis et lit le tarif calculé par le serveur', () async {
      when(() => remote.create(any())).thenAnswer((_) async => buildParcelRead());

      final result = await repository.registerParcel(
        originCityId: 1,
        originCityLabel: 'Ouagadougou',
        destinationCityId: 2,
        destinationCityLabel: 'Bobo-Dioulasso',
        senderName: 'Awa Traore',
        senderPhone: '+22670000000',
        recipientName: 'Issa Ouedraogo',
        recipientPhone: '+22671111111',
        nature: 'Documents',
        weightKg: '5.0',
      );

      expect(result.isOffline, isFalse);
      expect(result.tariff, '3000.00');
      expect(result.qrCode, isNotNull);
    });

    test('replie la nature dans la description transmise', () async {
      when(() => remote.create(any())).thenAnswer((_) async => buildParcelRead());

      await repository.registerParcel(
        originCityId: 1,
        originCityLabel: 'Ouagadougou',
        destinationCityId: 2,
        destinationCityLabel: 'Bobo-Dioulasso',
        senderName: 'Awa Traore',
        senderPhone: '+22670000000',
        recipientName: 'Issa Ouedraogo',
        recipientPhone: '+22671111111',
        nature: 'Documents',
        weightKg: '5.0',
      );

      final sent =
          verify(() => remote.create(captureAny())).captured.single
              as dto.AgentParcelCreate;
      expect(sent.description, 'Documents');
      expect(sent.trackingNumber, isNotNull);
    });
  });

  group('hors ligne', () {
    test('met en file sans tarif ni QR (calculés à la synchro)', () async {
      when(() => remote.create(any())).thenThrow(const NoConnectionFailure());

      final result = await repository.registerParcel(
        originCityId: 1,
        originCityLabel: 'Ouagadougou',
        destinationCityId: 2,
        destinationCityLabel: 'Bobo-Dioulasso',
        senderName: 'Awa Traore',
        senderPhone: '+22670000000',
        recipientName: 'Issa Ouedraogo',
        recipientPhone: '+22671111111',
        nature: 'Documents',
        weightKg: '5.0',
      );

      expect(result.isOffline, isTrue);
      expect(result.tariff, isNull);
      expect(result.qrCode, isNull);

      final queued = await database.select(database.offlineParcels).get();
      expect(queued, hasLength(1));
      expect(queued.single.trackingNumber, result.trackingNumber);

      final outboxEntries = await database.select(database.outboxEntries).get();
      expect(outboxEntries.single.entity, OutboxEntity.parcel);
    });

    test('propage une erreur qui n\'est pas un défaut de réseau', () async {
      when(() => remote.create(any())).thenThrow(const ServerFailure(statusCode: 500));

      await expectLater(
        repository.registerParcel(
          originCityId: 1,
          originCityLabel: 'Ouagadougou',
          destinationCityId: 2,
          destinationCityLabel: 'Bobo-Dioulasso',
          senderName: 'Awa Traore',
          senderPhone: '+22670000000',
          recipientName: 'Issa Ouedraogo',
          recipientPhone: '+22671111111',
          nature: 'Documents',
          weightKg: '5.0',
        ),
        throwsA(isA<ServerFailure>()),
      );

      final queued = await database.select(database.offlineParcels).get();
      expect(queued, isEmpty);
    });
  });

  group('arrivées et notification', () {
    test('détecte un SMS déjà envoyé pour empêcher un double envoi', () async {
      when(remote.arrivals).thenAnswer(
        (_) async => [
          buildParcelRead(
            notifications: [
              dto.ParcelNotification(
                id: 1,
                method: dto.ParcelNotificationMethodEnum.sms,
                methodDisplay: 'SMS',
                createdAt: createdAt,
              ),
            ],
          ),
        ],
      );

      final arrivals = await repository.arrivals();

      expect(arrivals.single.smsAlreadySent, isTrue);
    });

    test('un colis jamais notifié autorise l\'envoi', () async {
      when(remote.arrivals).thenAnswer((_) async => [buildParcelRead()]);

      final arrivals = await repository.arrivals();

      expect(arrivals.single.smsAlreadySent, isFalse);
    });

    test('notify transmet le moyen choisi', () async {
      when(
        () => remote.notify(parcelId: any(named: 'parcelId'), bySms: any(named: 'bySms')),
      ).thenAnswer((_) async {});

      await repository.notify(
        parcelId: 9,
        trackingNumber: 'COL2026000001',
        bySms: true,
      );

      verify(() => remote.notify(parcelId: 9, bySms: true)).called(1);
    });

    test(
      '« marquer prévenu » (appel) hors ligne part dans l\'outbox',
      () async {
        when(
          () => remote.notify(
            parcelId: any(named: 'parcelId'),
            bySms: any(named: 'bySms'),
          ),
        ).thenThrow(const NoConnectionFailure());

        await repository.notify(
          parcelId: 9,
          trackingNumber: 'COL2026000001',
          bySms: false,
        );

        final queued = await database
            .select(database.offlineParcelNotifications)
            .get();
        expect(queued, hasLength(1));
        expect(queued.single.trackingNumber, 'COL2026000001');

        final outboxEntries = await database.select(database.outboxEntries).get();
        expect(outboxEntries.single.entity, OutboxEntity.parcelNotification);
      },
    );

    test(
      'un SMS ne part jamais dans l\'outbox, même hors ligne',
      () async {
        when(
          () => remote.notify(
            parcelId: any(named: 'parcelId'),
            bySms: any(named: 'bySms'),
          ),
        ).thenThrow(const NoConnectionFailure());

        await expectLater(
          repository.notify(
            parcelId: 9,
            trackingNumber: 'COL2026000001',
            bySms: true,
          ),
          throwsA(isA<NoConnectionFailure>()),
        );

        final queued = await database
            .select(database.offlineParcelNotifications)
            .get();
        expect(queued, isEmpty);
      },
    );
  });
}
