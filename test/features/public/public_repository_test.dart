import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/features/public/data/public_remote_data_source.dart';
import 'package:transbooking_bf/features/public/data/public_repository_impl.dart';
import 'package:transbooking_bf/features/public/domain/parcel_tracking.dart';
import 'package:transbooking_bf/features/public/domain/search_criteria.dart';
import 'package:transbooking_bf/features/public/domain/trip_result.dart';

class _MockRemote extends Mock implements PublicRemoteDataSource {}

class _FakeCriteria extends Fake implements SearchCriteria {}

void main() {
  late _MockRemote remote;
  late PublicRepositoryImpl repository;

  setUpAll(() => registerFallbackValue(_FakeCriteria()));

  setUp(() {
    remote = _MockRemote();
    repository = PublicRepositoryImpl(remote);
  });

  group('searchTrips', () {
    test('mappe TripRead vers TripResult sans champ inventé', () async {
      final departure = DateTime.utc(2026, 7, 22, 6, 30);
      final arrival = DateTime.utc(2026, 7, 22, 11, 45);
      when(() => remote.searchTrips(any())).thenAnswer(
        (_) async => [
          dto.TripRead(
            id: 7,
            route: 3,
            routeLabel: 'Ouaga → Bobo',
            originCity: 'Ouagadougou',
            destinationCity: 'Bobo-Dioulasso',
            vehicle: 12,
            vehicleRegistration: 'BF-1234-A',
            departureTime: departure,
            arrivalTime: arrival,
            price: '8500.00',
            availableSeats: 12,
            status: dto.StatusF60Enum.scheduled,
            statusDisplay: 'Programmé',
            company: 4,
            companyName: 'Faso Express',
            companySigle: 'FE',
            companyRating: 4.8,
            isDirect: true,
            stopsCount: 0,
            durationMinutes: 315,
            createdAt: departure,
            updatedAt: departure,
          ),
        ],
      );

      final result = await repository.searchTrips(const SearchCriteria());

      expect(result, hasLength(1));
      final trip = result.single;
      expect(trip.id, 7);
      expect(trip.routeLabel, 'Ouaga → Bobo');
      expect(trip.originCity, 'Ouagadougou');
      expect(trip.destinationCity, 'Bobo-Dioulasso');
      expect(trip.vehicleRegistration, 'BF-1234-A');
      expect(trip.price, '8500.00');
      expect(trip.availableSeats, 12);
      expect(trip.status, TripPublicStatus.scheduled);
      // Compagnie, note et type de trajet désormais exposés par l'API.
      expect(trip.company, 4);
      expect(trip.companyName, 'Faso Express');
      expect(trip.companySigle, 'FE');
      expect(trip.companyRating, 4.8);
      expect(trip.isDirect, isTrue);
      expect(trip.stopsCount, 0);
      // La durée renvoyée par l'API fait foi.
      expect(trip.durationMinutes, 315);
      expect(trip.isBookable, isTrue);
    });

    test('un voyage complet n\'est pas réservable', () async {
      final departure = DateTime.utc(2026, 7, 22, 15);
      when(() => remote.searchTrips(any())).thenAnswer(
        (_) async => [
          dto.TripRead(
            id: 9,
            route: 1,
            routeLabel: 'Ouaga → Koudougou',
            originCity: 'Ouagadougou',
            destinationCity: 'Koudougou',
            vehicle: 2,
            vehicleRegistration: 'BF-5555-B',
            departureTime: departure,
            price: '5500.00',
            availableSeats: 0,
            status: dto.StatusF60Enum.scheduled,
            statusDisplay: 'Programmé',
            company: 5,
            companyName: 'Rakieta',
            companySigle: 'RK',
            companyRating: null,
            isDirect: false,
            stopsCount: 2,
            durationMinutes: 120,
            createdAt: departure,
            updatedAt: departure,
          ),
        ],
      );

      final trip = (await repository.searchTrips(
        const SearchCriteria(),
      )).single;
      expect(trip.isFull, isTrue);
      expect(trip.isBookable, isFalse);
    });
  });

  group('trackParcel', () {
    test('mappe ParcelTrack et masque le téléphone tel quel', () async {
      when(() => remote.trackParcel('COL2026000123')).thenAnswer(
        (_) async => dto.ParcelTrack(
          trackingNumber: 'COL2026000123',
          status: dto.Status62aEnum.inTransit,
          statusDisplay: 'En transit',
          originCity: 'Ouagadougou',
          destinationCity: 'Koudougou',
          recipientName: 'Salif Kaboré',
          recipientPhone: '****2109',
          currentLocation: 'Boromo',
          estimatedDelivery: DateTime.utc(2026, 7, 8, 13, 45),
          history: const [],
        ),
      );

      final parcel = await repository.trackParcel('COL2026000123');

      expect(parcel.trackingNumber, 'COL2026000123');
      expect(parcel.stage, ParcelStage.inTransit);
      expect(parcel.statusDisplay, 'En transit');
      expect(parcel.recipientPhone, '****2109');
      expect(parcel.currentLocation, 'Boromo');
      expect(parcel.estimatedDelivery, DateTime.utc(2026, 7, 8, 13, 45));
    });

    test('dérive la timeline depuis l\'étape courante', () async {
      when(() => remote.trackParcel(any())).thenAnswer(
        (_) async => const dto.ParcelTrack(
          trackingNumber: 'COL2026000999',
          status: dto.Status62aEnum.arrived,
          statusDisplay: 'Arrivé',
          originCity: 'Ouagadougou',
          destinationCity: 'Koudougou',
          recipientName: 'Awa Ouédraogo',
          recipientPhone: '****0001',
          currentLocation: null,
          estimatedDelivery: null,
          history: [],
        ),
      );

      final parcel = await repository.trackParcel('COL2026000999');
      final states = {
        for (final step in parcel.timeline) step.stage: step.state,
      };

      expect(states[ParcelStage.registered], ParcelStageState.done);
      expect(states[ParcelStage.inTransit], ParcelStageState.done);
      expect(states[ParcelStage.arrived], ParcelStageState.current);
      expect(states[ParcelStage.notified], ParcelStageState.pending);
      expect(states[ParcelStage.collected], ParcelStageState.pending);
    });

    test('enrichit chaque étape avec l\'événement d\'historique typé', () async {
      when(() => remote.trackParcel(any())).thenAnswer(
        (_) async => dto.ParcelTrack(
          trackingNumber: 'COL2026000123',
          status: dto.Status62aEnum.inTransit,
          statusDisplay: 'En transit',
          originCity: 'Ouagadougou',
          destinationCity: 'Koudougou',
          recipientName: 'Salif Kaboré',
          recipientPhone: '****2109',
          currentLocation: 'Boromo',
          estimatedDelivery: null,
          history: [
            dto.ParcelHistoryEntry(
              status: dto.Status62aEnum.registered,
              statusDisplay: 'Enregistré',
              location: 'Ouagadougou',
              timestamp: DateTime.utc(2026, 7, 6, 9, 12),
              note: 'Colis reçu au dépôt.',
            ),
            dto.ParcelHistoryEntry(
              status: dto.Status62aEnum.inTransit,
              statusDisplay: 'En transit',
              location: 'Boromo',
              timestamp: DateTime.utc(2026, 7, 8, 7, 40),
              note: 'À bord du bus TB-4821.',
            ),
          ],
        ),
      );

      final parcel = await repository.trackParcel('COL2026000123');
      final byStage = {for (final s in parcel.timeline) s.stage: s};

      expect(byStage[ParcelStage.registered]!.location, 'Ouagadougou');
      expect(byStage[ParcelStage.registered]!.note, 'Colis reçu au dépôt.');
      expect(
        byStage[ParcelStage.inTransit]!.timestamp,
        DateTime.utc(2026, 7, 8, 7, 40),
      );
      // Une étape à venir reste sans événement.
      expect(byStage[ParcelStage.collected]!.location, isNull);
    });

    test('une étape inconnue laisse toute la timeline en attente', () {
      const parcel = ParcelTracking(
        trackingNumber: 'COL2026000000',
        statusDisplay: 'Inconnu',
        originCity: 'Ouagadougou',
        destinationCity: 'Bobo-Dioulasso',
        recipientName: 'Inconnu',
        recipientPhone: '****0000',
      );

      expect(
        parcel.timeline.every((s) => s.state == ParcelStageState.pending),
        isTrue,
      );
    });
  });
}
