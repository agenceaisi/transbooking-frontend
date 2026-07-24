import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/features/traveler/data/booking_remote_data_source.dart';
import 'package:transbooking_bf/features/traveler/data/booking_repository_impl.dart';
import 'package:transbooking_bf/features/traveler/domain/created_booking.dart';
import 'package:transbooking_bf/features/traveler/domain/passenger_details.dart';
import 'package:transbooking_bf/features/traveler/domain/traveler_baggage.dart';

class _MockRemote extends Mock implements BookingRemoteDataSource {}

class _FakeBookingCreate extends Fake implements dto.BookingCreate {}

void main() {
  late _MockRemote remote;
  late BookingRepositoryImpl repository;

  setUpAll(() => registerFallbackValue(_FakeBookingCreate()));

  setUp(() {
    remote = _MockRemote();
    repository = BookingRepositoryImpl(remote);
  });

  dto.BookingRead bookingRead() => dto.BookingRead(
    id: 55,
    ticketNumber: 'BF2026009999',
    trip: dto.TripSummary(
      id: 3,
      originCity: 'Ouagadougou',
      destinationCity: 'Bobo-Dioulasso',
      companyName: 'Faso Express',
      companySigle: 'FE',
      departureTime: DateTime.utc(2026, 7, 22, 6, 30),
    ),
    firstName: 'Awa',
    lastName: 'Ouédraogo',
    passengerName: 'Awa Ouédraogo',
    phone: '+22670000000',
    seatNumber: '12',
    amount: '6000.00',
    status: dto.BookingReadStatusEnum.pending,
    statusDisplay: 'En attente',
    isBoarded: false,
    baggage: const [],
    baggageTotalWeightKg: '0',
    createdAt: DateTime.utc(2026, 7, 22, 5),
    updatedAt: DateTime.utc(2026, 7, 22, 5),
  );

  test('mappe BookingRead vers CreatedBooking', () async {
    when(
      () => remote.createBooking(any()),
    ).thenAnswer((_) async => bookingRead());

    final booking = await repository.createBooking(
      tripId: 3,
      seatNumber: '12',
      passenger: const PassengerDetails(
        firstName: 'Awa',
        lastName: 'Ouédraogo',
      ),
    );

    expect(booking.id, 55);
    expect(booking.ticketNumber, 'BF2026009999');
    expect(booking.seatNumber, '12');
    expect(booking.amount, '6000.00');
    expect(booking.status, BookingStatus.pending);
    expect(booking.originCity, 'Ouagadougou');
    expect(booking.destinationCity, 'Bobo-Dioulasso');
  });

  test('un siège déjà pris (409) remonte en ConflictFailure', () async {
    when(
      () => remote.createBooking(any()),
    ).thenThrow(const ConflictFailure(detail: 'Siège déjà réservé.'));

    expect(
      () => repository.createBooking(
        tripId: 3,
        seatNumber: '12',
        passenger: const PassengerDetails(),
      ),
      throwsA(isA<ConflictFailure>()),
    );
  });

  test(
    'siège nul = attribution automatique (aucun seat_number imposé)',
    () async {
      dto.BookingCreate? captured;
      when(() => remote.createBooking(any())).thenAnswer((invocation) async {
        captured = invocation.positionalArguments.first as dto.BookingCreate;
        return bookingRead();
      });

      await repository.createBooking(
        tripId: 3,
        seatNumber: null,
        passenger: const PassengerDetails(),
      );

      expect(captured?.seatNumber, isNull);
      expect(captured?.trip, 3);
    },
  );

  test('myBookings mappe la compagnie et les bagages', () async {
    when(() => remote.myBookings()).thenAnswer(
      (_) async => [
        bookingRead().copyWith(
          baggage: const [
            dto.Baggage(
              id: 1,
              label: 'Valise',
              tag: 'TB-B-1',
              weightKg: '18.0',
              location: dto.LocationEnum.hold,
              locationDisplay: 'En soute',
            ),
          ],
          baggageTotalWeightKg: '18.0',
        ),
      ],
    );

    final booking = (await repository.myBookings()).single;

    expect(booking.companyName, 'Faso Express');
    expect(booking.companySigle, 'FE');
    expect(booking.baggage, hasLength(1));
    expect(booking.baggage.single.label, 'Valise');
    expect(booking.baggage.single.location, BaggageLocation.hold);
    expect(booking.baggageTotalWeightKg, '18.0');
  });

  test('myBookings trie du plus récent au plus ancien', () async {
    when(() => remote.myBookings()).thenAnswer(
      (_) async => [
        bookingRead().copyWith(
          id: 1,
          ticketNumber: 'BF-OLD',
          createdAt: DateTime.utc(2026, 7, 1),
        ),
        bookingRead().copyWith(
          id: 2,
          ticketNumber: 'BF-NEW',
          createdAt: DateTime.utc(2026, 7, 20),
        ),
      ],
    );

    final bookings = await repository.myBookings();

    expect(bookings.first.ticketNumber, 'BF-NEW');
    expect(bookings.last.ticketNumber, 'BF-OLD');
  });

  test('cancelBooking transmet le motif et mappe la réservation', () async {
    String? capturedReason;
    when(
      () => remote.cancelBooking(any(), reason: any(named: 'reason')),
    ).thenAnswer((invocation) async {
      capturedReason = invocation.namedArguments[#reason] as String;
      return bookingRead().copyWith(
        status: dto.BookingReadStatusEnum.cancelled,
        statusDisplay: 'Annulé',
      );
    });

    final booking = await repository.cancelBooking(
      55,
      reason: 'Changement de programme',
    );

    expect(capturedReason, 'Changement de programme');
    expect(booking.status, BookingStatus.cancelled);
    expect(booking.statusDisplay, 'Annulé');
    verify(
      () => remote.cancelBooking(55, reason: 'Changement de programme'),
    ).called(1);
  });
}
