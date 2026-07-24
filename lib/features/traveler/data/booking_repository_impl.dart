import '../../../core/api/dto.dart' as dto;
import '../../../core/utils/phone_number.dart';
import '../domain/booking_repository.dart';
import '../domain/created_booking.dart';
import '../domain/passenger_details.dart';
import '../domain/traveler_booking.dart';
import '../domain/trip_booking_detail.dart';
import 'booking_remote_data_source.dart';
import 'traveler_mappers.dart';

/// Implémentation de [BookingRepository].
class BookingRepositoryImpl implements BookingRepository {
  const BookingRepositoryImpl(this._remote);

  final BookingRemoteDataSource _remote;

  @override
  Future<TripBookingDetail> tripDetail(int tripId) async {
    final trip = await _remote.tripDetail(tripId);
    return trip.toEntity();
  }

  @override
  Future<CreatedBooking> createBooking({
    required int tripId,
    String? seatNumber,
    required PassengerDetails passenger,
  }) async {
    final localPhone = passenger.localPhoneOrNull;
    final booking = await _remote.createBooking(
      dto.BookingCreate(
        trip: tripId,
        seatNumber: seatNumber,
        firstName: passenger.firstNameOrNull,
        lastName: passenger.lastNameOrNull,
        // L'API attend le numéro complet ; vide ⇒ le serveur reprend celui du
        // compte (guide §6.7).
        phone: localPhone == null ? null : BfPhone.full(localPhone),
      ),
    );
    return booking.toEntity();
  }

  @override
  Future<List<TravelerBooking>> myBookings() async {
    final bookings = await _remote.myBookings();
    final result = bookings
        .map((booking) => booking.toTravelerBooking())
        .toList(growable: false);
    // Les plus récentes d'abord : l'API ne garantit pas d'ordre stable.
    result.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return result;
  }

  @override
  Future<TravelerBooking> booking(int id) async {
    final booking = await _remote.booking(id);
    return booking.toTravelerBooking();
  }

  @override
  Future<TravelerBooking> cancelBooking(
    int id, {
    required String reason,
  }) async {
    final booking = await _remote.cancelBooking(id, reason: reason);
    return booking.toTravelerBooking();
  }
}
