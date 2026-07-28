import 'package:drift/drift.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/storage/local_database.dart';
import '../../../core/sync/outbox_writer.dart';
import '../../../core/utils/reference_number_generator.dart';
import '../domain/agent_booking_repository.dart';
import '../domain/agent_trip.dart';
import '../domain/passenger_registration.dart';
import 'agent_booking_remote_data_source.dart';

/// Implémentation de l'enregistrement d'un passager (guide §6.7, CLAUDE.md §6).
///
/// La référence (`ticket_number`) est générée **avant** l'appel réseau,
/// identique en ligne et hors ligne : elle sert de clé d'idempotence et
/// permet de relire la réservation créée juste après, la réponse de création
/// n'étant pas fiable (cf. `AgentBookingRemoteDataSource.create`).
class AgentBookingRepositoryImpl implements AgentBookingRepository {
  const AgentBookingRepositoryImpl({
    required this.remote,
    required this.outbox,
  });

  final AgentBookingRemoteDataSource remote;
  final OutboxWriter outbox;

  @override
  Future<PassengerRegistration> registerPassenger({
    required AgentTrip trip,
    required String firstName,
    required String lastName,
    required String phone,
    required String paymentMethodWire,
    String? transactionRef,
  }) async {
    final ticketNumber = ReferenceNumberGenerator.ticketNumber();

    try {
      await remote.create(
        dto.AgentBookingCreate(
          trip: trip.id,
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          amount: trip.price,
          paymentMethod: paymentMethodWire,
          transactionRef: transactionRef,
          ticketNumber: ticketNumber,
        ),
      );
      final booking = await remote.findByTicketNumber(ticketNumber);
      return _fromBookingRead(booking);
    } on NoConnectionFailure {
      return _queueOffline(
        trip: trip,
        ticketNumber: ticketNumber,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        paymentMethodWire: paymentMethodWire,
        transactionRef: transactionRef,
      );
    } on TimeoutFailure {
      return _queueOffline(
        trip: trip,
        ticketNumber: ticketNumber,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        paymentMethodWire: paymentMethodWire,
        transactionRef: transactionRef,
      );
    }
  }

  Future<PassengerRegistration> _queueOffline({
    required AgentTrip trip,
    required String ticketNumber,
    required String firstName,
    required String lastName,
    required String phone,
    required String paymentMethodWire,
    String? transactionRef,
  }) async {
    await outbox.queueBooking(
      OfflineBookingsCompanion.insert(
        ticketNumber: ticketNumber,
        tripId: trip.id,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        amount: Value(trip.price),
        paymentMethod: Value(paymentMethodWire),
        transactionRef: Value(transactionRef),
        offlineCreatedAt: DateTime.now().toUtc(),
      ),
    );

    return PassengerRegistration(
      ticketNumber: ticketNumber,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      originCity: trip.originCity,
      destinationCity: trip.destinationCity,
      departureTime: trip.departureTime,
      isOffline: true,
      amount: trip.price,
    );
  }

  @override
  Future<PassengerRegistration> printTicket(String ticketNumber) async {
    final slip = await remote.print(ticketNumber);
    return PassengerRegistration(
      ticketNumber: slip.ticketNumber,
      firstName: '',
      lastName: slip.passengerName,
      phone: slip.phone,
      originCity: slip.originCity,
      destinationCity: slip.destinationCity,
      departureTime: slip.departureTime,
      isOffline: false,
      companyName: slip.companyName,
      seatNumber: slip.seatNumber,
      amount: slip.amount,
      qrCode: slip.qrCode,
      printedAt: slip.printedAt,
      printCount: slip.printCount,
    );
  }

  static PassengerRegistration _fromBookingRead(dto.BookingRead booking) {
    return PassengerRegistration(
      ticketNumber: booking.ticketNumber,
      firstName: booking.firstName,
      lastName: booking.lastName,
      phone: booking.phone,
      originCity: booking.trip.originCity,
      destinationCity: booking.trip.destinationCity,
      departureTime: booking.trip.departureTime,
      isOffline: false,
      companyName: booking.trip.companyName,
      seatNumber: booking.seatNumber,
      amount: booking.amount,
      qrCode: booking.qrCode,
    );
  }
}
