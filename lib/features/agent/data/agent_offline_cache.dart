import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/storage/local_database.dart';

/// Cache local du **paquet de travail du jour** (`CachedTrips`,
/// `CachedBookings`, `CachedParcelArrivals`).
///
/// Remplacement complet à chaque téléchargement matinal : un voyage disparu de
/// la réponse (parti, annulé) doit disparaître du guichet hors ligne aussi
/// (même principe que `AgentDashboardCache`, phase 3).
class AgentOfflineCache {
  const AgentOfflineCache(this._db);

  final LocalDatabase _db;

  Future<void> write(dto.AgentOfflineData payload) {
    final cachedAt = DateTime.now().toUtc();

    return _db.transaction(() async {
      await _db.delete(_db.cachedTrips).go();
      await _db.delete(_db.cachedBookings).go();
      await _db.delete(_db.cachedParcelArrivals).go();

      await _db.batch((batch) {
        batch.insertAll(_db.cachedTrips, [
          for (final trip in payload.trips)
            CachedTripsCompanion.insert(
              id: Value(trip.id),
              originCity: trip.originCity,
              destinationCity: trip.destinationCity,
              departureTime: trip.departureTime,
              availableSeats: Value(trip.availableSeats),
              vehicle: trip.vehicle,
              seatPlan: Value(
                trip.seatPlan == null ? null : jsonEncode(trip.seatPlan),
              ),
              status: Value(trip.status?.wireValue),
              cachedAt: cachedAt,
            ),
        ]);
        batch.insertAll(_db.cachedBookings, [
          for (final booking in payload.bookings)
            CachedBookingsCompanion.insert(
              ticketNumber: booking.ticketNumber,
              tripId: booking.tripId,
              passengerName: booking.passengerName,
              phone: Value(booking.phone),
              seatNumber: Value(booking.seatNumber),
              qrCode: Value(booking.qrCode),
              status: Value(booking.status?.wireValue),
              cachedAt: cachedAt,
            ),
        ]);
        batch.insertAll(_db.cachedParcelArrivals, [
          for (final parcel in payload.parcelArrivals)
            CachedParcelArrivalsCompanion.insert(
              trackingNumber: parcel.trackingNumber,
              recipientName: parcel.recipientName,
              recipientPhone: Value(parcel.recipientPhone),
              destinationCity: Value(parcel.destinationCity),
              status: Value(parcel.status?.wireValue),
              cachedAt: cachedAt,
            ),
        ]);
      });

      await (_db.update(
        _db.syncStateEntries,
      )..where((row) => row.id.equals(0))).write(
        SyncStateEntriesCompanion(lastOfflineDataAt: Value(cachedAt)),
      );
    });
  }
}
