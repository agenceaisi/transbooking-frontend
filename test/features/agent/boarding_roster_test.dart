import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/features/agent/domain/boarding_passenger.dart';
import 'package:transbooking_bf/features/agent/domain/boarding_roster.dart';

void main() {
  BoardingPassenger passenger({
    required String ticket,
    bool paid = true,
    bool boarded = false,
  }) {
    return BoardingPassenger(
      ticketNumber: ticket,
      fullName: 'OUEDRAOGO Awa',
      isPaid: paid,
      isBoarded: boarded,
      boardedOffline: false,
    );
  }

  group('BoardingRoster — calcul de la progression', () {
    test('utilise la capacité du véhicule quand elle est connue', () {
      final roster = BoardingRoster(
        tripId: 1,
        passengers: [
          passenger(ticket: 'A', boarded: true),
          passenger(ticket: 'B', boarded: true),
          passenger(ticket: 'C'),
        ],
        totalSeats: 10,
        validated: false,
      );

      expect(roster.registeredCount, 3);
      expect(roster.boardedCount, 2);
      expect(roster.absentCount, 1);
      expect(roster.remainingCapacity, 7);
      expect(roster.progressDenominator, 10);
      expect(roster.boardingRatio, closeTo(0.2, 1e-9));
    });

    test(
      'se replie sur le nombre d\'inscrits quand la capacité est inconnue '
      '(voyage servi depuis le cache hors ligne)',
      () {
        final roster = BoardingRoster(
          tripId: 1,
          passengers: [
            passenger(ticket: 'A', boarded: true),
            passenger(ticket: 'B'),
          ],
          totalSeats: null,
          validated: false,
        );

        expect(roster.remainingCapacity, isNull);
        expect(roster.progressDenominator, 2);
        expect(roster.boardingRatio, closeTo(0.5, 1e-9));
      },
    );

    test('ne divise jamais par zéro liste vide', () {
      const roster = BoardingRoster(
        tripId: 1,
        passengers: [],
        totalSeats: null,
        validated: false,
      );

      expect(roster.progressDenominator, 0);
      expect(roster.boardingRatio, 0);
    });

    test('distingue payés/non payés et ne propose au pointage que les payés', () {
      final roster = BoardingRoster(
        tripId: 1,
        passengers: [
          passenger(ticket: 'A'),
          passenger(ticket: 'B', paid: false),
          passenger(ticket: 'C', boarded: true),
        ],
        totalSeats: null,
        validated: false,
      );

      expect(roster.paidCount, 2);
      expect(roster.unpaidCount, 1);
      // Le non-payé (B) ne fait jamais partie des restants à embarquer.
      expect(
        roster.notYetBoarded.map((p) => p.ticketNumber),
        equals(['A']),
      );
    });

    test('byTicket retrouve un passager par numéro de billet', () {
      final roster = BoardingRoster(
        tripId: 1,
        passengers: [passenger(ticket: 'A'), passenger(ticket: 'B')],
        totalSeats: null,
        validated: false,
      );

      expect(roster.byTicket('B')?.ticketNumber, 'B');
      expect(roster.byTicket('Z'), isNull);
    });
  });

  test('BoardingPassenger.canToggleBoarding — un billet non payé ne peut pas embarquer', () {
    expect(passenger(ticket: 'A').canToggleBoarding, isTrue);
    expect(passenger(ticket: 'A', paid: false).canToggleBoarding, isFalse);
  });
}
