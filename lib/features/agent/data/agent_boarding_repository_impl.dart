import 'package:drift/drift.dart';

import '../../../core/error/failure.dart';
import '../../../core/storage/local_database.dart';
import '../../../core/sync/outbox_writer.dart';
import 'agent_booking_remote_data_source.dart';
import '../domain/agent_booking_repository.dart';
import '../domain/agent_trip.dart';
import '../domain/boarding_passenger.dart';
import '../domain/boarding_repository.dart';
import '../domain/boarding_roster.dart';
import '../domain/boarding_validation_summary.dart';
import 'agent_control_remote_data_source.dart';

/// Implémentation de la liste d'embarquement (CLAUDE.md §6, guide §6.7).
class AgentBoardingRepositoryImpl implements BoardingRepository {
  const AgentBoardingRepositoryImpl({
    required this.database,
    required this.controlRemote,
    required this.bookingRemote,
    required this.bookingRepository,
    required this.outbox,
  });

  final LocalDatabase database;
  final AgentControlRemoteDataSource controlRemote;
  final AgentBookingRemoteDataSource bookingRemote;
  final AgentBookingRepository bookingRepository;
  final OutboxWriter outbox;

  static const Set<String> _boardablePaymentStatuses = {'paid', 'pending'};

  @override
  Future<BoardingRoster> loadRoster(AgentTrip trip) async {
    final cachedRows =
        await (database.select(
          database.cachedBookings,
        )..where((row) => row.tripId.equals(trip.id))).get();
    final offlineRows =
        await (database.select(
          database.offlineBookings,
        )..where((row) => row.tripId.equals(trip.id))).get();
    final boardedByTicket = await _boardedByTicket();

    final passengers = <BoardingPassenger>[];
    final seen = <String>{};

    for (final row in cachedRows) {
      if (!_boardablePaymentStatuses.contains(row.status)) continue;
      if (!seen.add(row.ticketNumber)) continue;
      final boarded = boardedByTicket[row.ticketNumber];
      passengers.add(
        BoardingPassenger(
          ticketNumber: row.ticketNumber,
          fullName: row.passengerName,
          phone: row.phone,
          seatNumber: row.seatNumber,
          isPaid: row.status == 'paid',
          isBoarded: boarded != null,
          boardedOffline: boarded?.isOffline ?? false,
        ),
      );
    }
    // Réservations saisies aujourd'hui, hors ligne, pas encore synchronisées
    // (donc absentes de `CachedBookings`) : `AgentBookingCreate` crée
    // toujours au statut `paid` (guide §6.7), en ligne comme hors ligne.
    for (final row in offlineRows) {
      if (!seen.add(row.ticketNumber)) continue;
      final boarded = boardedByTicket[row.ticketNumber];
      passengers.add(
        BoardingPassenger(
          ticketNumber: row.ticketNumber,
          fullName: '${row.lastName} ${row.firstName}',
          phone: row.phone,
          seatNumber: row.seatNumber,
          isPaid: true,
          isBoarded: boarded != null,
          boardedOffline: boarded?.isOffline ?? false,
        ),
      );
    }

    DateTime? cachedAt;
    for (final row in cachedRows) {
      if (cachedAt == null || row.cachedAt.isAfter(cachedAt)) {
        cachedAt = row.cachedAt;
      }
    }

    final validatedAt = await _validatedAt(trip.id);

    return BoardingRoster(
      tripId: trip.id,
      passengers: passengers,
      totalSeats: trip.availableSeats != null
          ? trip.availableSeats! + passengers.length
          : null,
      cachedAt: cachedAt,
      validated: validatedAt != null,
      validatedAt: validatedAt,
    );
  }

  @override
  Future<void> confirmBoarding(
    String ticketNumber, {
    BoardingConfirmMethod method = BoardingConfirmMethod.manual,
  }) async {
    if (await _isBoarded(ticketNumber)) return;

    final localMethod = method == BoardingConfirmMethod.scan
        ? LocalBoardingMethod.scan
        : LocalBoardingMethod.manual;

    try {
      final booking = await bookingRemote.findByTicketNumber(ticketNumber);
      await controlRemote.boardOne(
        tripId: booking.trip.id,
        bookingId: booking.id,
      );
      await _markBoarded(ticketNumber, localMethod, isOffline: false);
    } on NoConnectionFailure {
      await _queueOffline(ticketNumber, localMethod);
    } on TimeoutFailure {
      await _queueOffline(ticketNumber, localMethod);
    }
  }

  @override
  Future<int> boardAllPaid(AgentTrip trip, BoardingRoster roster) async {
    final targets = roster.notYetBoarded;
    if (targets.isEmpty) return 0;

    try {
      final boarded = await controlRemote.boardAll(trip.id);
      for (final passenger in targets) {
        await _markBoarded(
          passenger.ticketNumber,
          LocalBoardingMethod.manual,
          isOffline: false,
        );
      }
      return boarded;
    } on NoConnectionFailure {
      return _queueAllOffline(targets);
    } on TimeoutFailure {
      return _queueAllOffline(targets);
    }
  }

  Future<int> _queueAllOffline(List<BoardingPassenger> targets) async {
    for (final passenger in targets) {
      await _queueOffline(passenger.ticketNumber, LocalBoardingMethod.manual);
    }
    return targets.length;
  }

  @override
  Future<BoardingValidationSummary> validate(AgentTrip trip) async {
    // Pas de repli hors ligne : `SyncPayload` ne porte aucune liste pour
    // cette action, une `NoConnectionFailure` remonte donc telle quelle —
    // l'écran désactive le bouton avec une explication (CLAUDE.md §6).
    final summary = await controlRemote.validate(trip.id);
    await database
        .into(database.validatedTrips)
        .insertOnConflictUpdate(
          ValidatedTripsCompanion.insert(
            tripId: Value(trip.id),
            validatedAt: DateTime.now().toUtc(),
          ),
        );
    return summary;
  }

  @override
  Future<bool> isValidated(int tripId) async {
    return (await _validatedAt(tripId)) != null;
  }

  @override
  Future<BoardingPassenger> addLastMinutePassenger({
    required AgentTrip trip,
    required String firstName,
    required String lastName,
    required String phone,
    required String paymentMethodWire,
    String? transactionRef,
  }) async {
    final registration = await bookingRepository.registerPassenger(
      trip: trip,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      paymentMethodWire: paymentMethodWire,
      transactionRef: transactionRef,
    );

    if (!registration.isOffline) {
      // Rendu visible immédiatement dans la liste, sans attendre le paquet du
      // matin suivant : append d'une ligne que nous venons nous-mêmes de
      // créer, pas une modification d'une donnée déjà synchronisée.
      await database
          .into(database.cachedBookings)
          .insertOnConflictUpdate(
            CachedBookingsCompanion.insert(
              ticketNumber: registration.ticketNumber,
              tripId: trip.id,
              passengerName: registration.passengerName,
              phone: Value(registration.phone),
              seatNumber: Value(registration.seatNumber),
              qrCode: Value(registration.qrCode),
              status: const Value('paid'),
              cachedAt: DateTime.now().toUtc(),
            ),
          );
    }

    return BoardingPassenger(
      ticketNumber: registration.ticketNumber,
      fullName: registration.passengerName,
      phone: registration.phone,
      seatNumber: registration.seatNumber,
      isPaid: true,
      isBoarded: false,
      boardedOffline: false,
    );
  }

  Future<void> _queueOffline(
    String ticketNumber,
    LocalBoardingMethod method,
  ) async {
    await outbox.queueValidation(
      OfflineValidationsCompanion.insert(
        ticketNumber: ticketNumber,
        offlineCreatedAt: DateTime.now().toUtc(),
      ),
    );
    await _markBoarded(ticketNumber, method, isOffline: true);
  }

  Future<void> _markBoarded(
    String ticketNumber,
    LocalBoardingMethod method, {
    required bool isOffline,
  }) {
    return database
        .into(database.boardedTickets)
        .insertOnConflictUpdate(
          BoardedTicketsCompanion.insert(
            ticketNumber: ticketNumber,
            method: method,
            boardedAt: DateTime.now().toUtc(),
            isOffline: Value(isOffline),
          ),
        );
  }

  Future<bool> _isBoarded(String ticketNumber) async {
    final row =
        await (database.select(
          database.boardedTickets,
        )..where((row) => row.ticketNumber.equals(ticketNumber))).getSingleOrNull();
    return row != null;
  }

  Future<Map<String, BoardedTicket>> _boardedByTicket() async {
    final rows = await database.select(database.boardedTickets).get();
    return {for (final row in rows) row.ticketNumber: row};
  }

  Future<DateTime?> _validatedAt(int tripId) async {
    final row =
        await (database.select(
          database.validatedTrips,
        )..where((row) => row.tripId.equals(tripId))).getSingleOrNull();
    return row?.validatedAt;
  }
}
