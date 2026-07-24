import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/features/public/domain/search_criteria.dart';
import 'package:transbooking_bf/features/public/domain/trip_result.dart';
import 'package:transbooking_bf/features/public/presentation/search_refine.dart';

/// Construit un voyage local à une heure de départ donnée.
TripResult trip({
  required int id,
  required String price,
  required int departureHour,
  int departureMinute = 0,
  int? durationMinutes,
  int company = 1,
  String companyName = 'Faso Express',
  double? companyRating,
  bool isDirect = true,
  int stopsCount = 0,
}) {
  final departure = DateTime(2026, 7, 22, departureHour, departureMinute);
  return TripResult(
    id: id,
    routeLabel: 'Ouaga → Bobo',
    originCity: 'Ouagadougou',
    destinationCity: 'Bobo-Dioulasso',
    departureTime: departure,
    arrivalTime: durationMinutes == null
        ? null
        : departure.add(Duration(minutes: durationMinutes)),
    price: price,
    availableSeats: 10,
    statusDisplay: 'Programmé',
    status: TripPublicStatus.scheduled,
    company: company,
    companyName: companyName,
    companyRating: companyRating,
    isDirect: isDirect,
    stopsCount: stopsCount,
  );
}

void main() {
  group('DeparturePeriod.matches', () {
    test('délimite matin, après-midi et soir', () {
      // 08:00 = 480, 14:00 = 840, 19:00 = 1140.
      expect(DeparturePeriod.morning.matches(480), isTrue);
      expect(DeparturePeriod.morning.matches(840), isFalse);
      expect(DeparturePeriod.afternoon.matches(840), isTrue);
      expect(DeparturePeriod.afternoon.matches(1140), isFalse);
      expect(DeparturePeriod.evening.matches(1140), isTrue);
      expect(DeparturePeriod.all.matches(0), isTrue);
    });
  });

  group('refineTrips', () {
    final trips = [
      trip(id: 1, price: '8500.00', departureHour: 6, durationMinutes: 315),
      trip(id: 2, price: '6000.00', departureHour: 13, durationMinutes: 340),
      trip(id: 3, price: '12000.00', departureHour: 20, durationMinutes: 290),
    ];

    test('filtre par période de départ', () {
      final result = refineTrips(
        trips,
        const SearchRefinement(period: DeparturePeriod.morning),
      );
      expect(result.map((t) => t.id), [1]);
    });

    test('filtre par prix maximum', () {
      final result = refineTrips(trips, const SearchRefinement(maxPrice: 8500));
      expect(result.map((t) => t.id), containsAll(<int>[1, 2]));
      expect(result.any((t) => t.id == 3), isFalse);
    });

    test('trie par prix croissant', () {
      final result = refineTrips(trips, const SearchRefinement());
      expect(result.map((t) => t.id), [2, 1, 3]);
    });

    test('trie par heure de départ', () {
      final result = refineTrips(
        trips,
        const SearchRefinement(sort: TripSort.departure),
      );
      expect(result.map((t) => t.id), [1, 2, 3]);
    });

    test('trie par durée, une durée inconnue en dernier', () {
      final withUnknown = [
        ...trips,
        trip(id: 4, price: '7000.00', departureHour: 9),
      ];
      final result = refineTrips(
        withUnknown,
        const SearchRefinement(sort: TripSort.duration),
      );
      // 290 (id3) < 315 (id1) < 340 (id2) < inconnu (id4).
      expect(result.map((t) => t.id), [3, 1, 2, 4]);
    });

    test('ne modifie pas la liste source', () {
      final source = [...trips];
      refineTrips(source, const SearchRefinement(sort: TripSort.duration));
      expect(source.map((t) => t.id), [1, 2, 3]);
    });
  });

  group('refineTrips — filtres compagnie/note/type', () {
    final mixed = [
      trip(
        id: 1,
        price: '8000.00',
        departureHour: 7,
        company: 1,
        companyName: 'Faso Express',
        companyRating: 4.8,
        isDirect: true,
        stopsCount: 0,
      ),
      trip(
        id: 2,
        price: '6000.00',
        departureHour: 9,
        company: 2,
        companyName: 'Rakieta',
        companyRating: 3.9,
        isDirect: false,
        stopsCount: 2,
      ),
      trip(
        id: 3,
        price: '7000.00',
        departureHour: 11,
        company: 1,
        companyName: 'Faso Express',
        companyRating: 4.8,
        isDirect: false,
        stopsCount: 1,
      ),
    ];

    test('filtre les trajets directs', () {
      final result = refineTrips(
        mixed,
        const SearchRefinement(stopFilter: TripStopFilter.direct),
      );
      expect(result.map((t) => t.id), [1]);
    });

    test('filtre les trajets avec escale', () {
      final result = refineTrips(
        mixed,
        const SearchRefinement(stopFilter: TripStopFilter.withStops),
      );
      expect(result.map((t) => t.id), [2, 3]);
    });

    test('filtre par compagnie sélectionnée', () {
      final result = refineTrips(
        mixed,
        const SearchRefinement(companyIds: {1}),
      );
      // L'ordre suit le tri par prix ; seul l'ensemble filtré importe ici.
      expect(result.map((t) => t.id), unorderedEquals(<int>[1, 3]));
    });

    test('filtre par note minimale', () {
      final result = refineTrips(
        mixed,
        const SearchRefinement(minRating: 4),
      );
      expect(result.map((t) => t.id), unorderedEquals(<int>[1, 3]));
    });

    test('cumule plusieurs filtres', () {
      final result = refineTrips(
        mixed,
        const SearchRefinement(
          companyIds: {1},
          stopFilter: TripStopFilter.direct,
        ),
      );
      expect(result.map((t) => t.id), [1]);
    });

    test('activeCount compte chaque filtre actif', () {
      const refinement = SearchRefinement(
        stopFilter: TripStopFilter.direct,
        companyIds: {1, 2},
        minRating: 4,
        maxPrice: 8000,
      );
      // type + compagnie + note + prix (période reste « Tous »).
      expect(refinement.activeCount, 4);
    });
  });
}
