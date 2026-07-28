import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/features/traveler/domain/booking_repository.dart';
import 'package:transbooking_bf/features/traveler/domain/created_booking.dart';
import 'package:transbooking_bf/features/traveler/domain/traveler_booking.dart';
import 'package:transbooking_bf/features/traveler/presentation/booking_cancel_controller.dart';
import 'package:transbooking_bf/features/traveler/presentation/traveler_providers.dart';

class _MockBookingRepository extends Mock implements BookingRepository {}

void main() {
  late _MockBookingRepository repository;

  TravelerBooking cancelledBooking() => TravelerBooking(
    id: 55,
    ticketNumber: 'BF2026009999',
    tripId: 900,
    originCity: 'Ouagadougou',
    destinationCity: 'Bobo-Dioulasso',
    companyName: 'Faso Express',
    departureTime: DateTime.utc(2026, 7, 25, 6, 30),
    passengerName: 'Awa Ouédraogo',
    phone: '+22670000000',
    seatNumber: '12',
    amount: '6000.00',
    status: BookingStatus.cancelled,
    statusDisplay: 'Annulé',
    isBoarded: false,
    createdAt: DateTime.utc(2026, 7, 20),
  );

  ProviderContainer createContainer() {
    final container = ProviderContainer(
      overrides: [bookingRepositoryProvider.overrideWithValue(repository)],
    );
    container.listen(bookingCancelProvider, (_, _) {});
    addTearDown(container.dispose);
    return container;
  }

  setUp(() => repository = _MockBookingRepository());

  test(
    'annulation réussie → true et repository appelé avec le motif',
    () async {
      when(
        () => repository.cancelBooking(55, reason: 'Motif'),
      ).thenAnswer((_) async => cancelledBooking());

      final container = createContainer();
      final ok = await container
          .read(bookingCancelProvider.notifier)
          .cancel(bookingId: 55, reason: 'Motif');

      expect(ok, isTrue);
      expect(container.read(bookingCancelProvider).value, isTrue);
      verify(() => repository.cancelBooking(55, reason: 'Motif')).called(1);
    },
  );

  test('échec → false et état en erreur', () async {
    when(
      () => repository.cancelBooking(any(), reason: any(named: 'reason')),
    ).thenThrow(const ServerFailure());

    final container = createContainer();
    final ok = await container
        .read(bookingCancelProvider.notifier)
        .cancel(bookingId: 55, reason: 'Motif');

    expect(ok, isFalse);
    expect(container.read(bookingCancelProvider).hasError, isTrue);
  });
}
