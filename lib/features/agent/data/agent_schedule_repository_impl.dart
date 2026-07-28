import 'package:drift/drift.dart' show OrderingTerm;

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/storage/local_database.dart';
import '../domain/agent_dashboard.dart' show TripStatus;
import '../domain/agent_passenger_search_result.dart';
import '../domain/agent_schedule.dart';
import '../domain/agent_schedule_repository.dart';
import '../domain/agent_trip.dart';
import 'agent_remote_data_source.dart';

/// Implémentation du programme du jour.
///
/// En ligne : `GET /agent/trips/today/` (tarif inclus). Hors ligne : le cache
/// `CachedTrips` rempli par le téléchargement matinal (phase 5A) — sans
/// tarif, `OfflineTrip` ne le porte pas (cf. [AgentTrip.price]).
class AgentScheduleRepositoryImpl implements AgentScheduleRepository {
  const AgentScheduleRepositoryImpl({
    required this.remote,
    required this.database,
  });

  final AgentRemoteDataSource remote;
  final LocalDatabase database;

  @override
  Future<AgentScheduleSnapshot> load() async {
    try {
      final trips = await remote.tripsToday();
      return AgentScheduleSnapshot(
        trips: trips.map(_fromTripRead).toList(growable: false),
      );
    } on NoConnectionFailure catch (failure) {
      return _fromCacheOr(failure);
    } on TimeoutFailure catch (failure) {
      return _fromCacheOr(failure);
    }
  }

  Future<AgentScheduleSnapshot> _fromCacheOr(Failure failure) async {
    final rows =
        await (database.select(database.cachedTrips)
              ..orderBy([(row) => OrderingTerm(expression: row.departureTime)]))
            .get();
    if (rows.isEmpty) throw failure;

    final cachedAt = rows
        .map((row) => row.cachedAt)
        .reduce((a, b) => a.isAfter(b) ? a : b);

    return AgentScheduleSnapshot(
      trips: rows.map(_fromCachedTrip).toList(growable: false),
      cachedAt: cachedAt,
    );
  }

  static AgentTrip _fromTripRead(dto.TripRead trip) => AgentTrip(
    id: trip.id,
    originCity: trip.originCity,
    destinationCity: trip.destinationCity,
    departureTime: trip.departureTime,
    vehicleRegistration: trip.vehicleRegistration,
    availableSeats: trip.availableSeats,
    price: trip.price,
    status: TripStatus.fromWire(trip.status?.wireValue),
  );

  static AgentTrip _fromCachedTrip(CachedTrip trip) => AgentTrip(
    id: trip.id,
    originCity: trip.originCity,
    destinationCity: trip.destinationCity,
    departureTime: trip.departureTime,
    vehicleRegistration: trip.vehicle,
    availableSeats: trip.availableSeats,
    price: null,
    status: TripStatus.fromWire(trip.status),
  );

  @override
  Future<List<AgentPassengerSearchResult>> passengersToday() async {
    final bookings = await database.select(database.cachedBookings).get();
    if (bookings.isEmpty) return const [];

    final trips = await database.select(database.cachedTrips).get();
    final tripsById = {for (final trip in trips) trip.id: trip};

    return [
      for (final booking in bookings)
        if (tripsById[booking.tripId] case final trip?)
          AgentPassengerSearchResult(
            ticketNumber: booking.ticketNumber,
            passengerName: booking.passengerName,
            phone: booking.phone,
            seatNumber: booking.seatNumber,
            tripId: booking.tripId,
            destinationCity: trip.destinationCity,
            departureTime: trip.departureTime,
            vehicleRegistration: trip.vehicle,
          ),
    ];
  }
}
