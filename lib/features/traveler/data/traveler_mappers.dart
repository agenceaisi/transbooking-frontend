import '../../../core/api/dto.dart' as dto;
import '../domain/app_notification.dart';
import '../domain/created_booking.dart';
import '../domain/payment_snapshot.dart';
import '../domain/traveler_baggage.dart';
import '../domain/traveler_booking.dart';
import '../domain/traveler_claim.dart';
import '../domain/traveler_dashboard_summary.dart';
import '../domain/traveler_payment.dart';
import '../domain/trip_booking_detail.dart';

/// Traductions DTO généré → entité du domaine (traveler). Mapping explicite ;
/// aucun DTO ne franchit la couche `data` (CLAUDE.md §3).
extension TripDetailMapper on dto.TripDetail {
  TripBookingDetail toEntity() => TripBookingDetail(
    id: id,
    routeLabel: routeLabel,
    originCity: originCity,
    destinationCity: destinationCity,
    departureTime: departureTime,
    arrivalTime: arrivalTime,
    price: price,
    availableSeats: availableSeats,
    availableSeatNumbers: availableSeatNumbers,
    vehicleRegistration: vehicleRegistration,
    statusDisplay: statusDisplay,
  );
}

extension BookingReadMapper on dto.BookingRead {
  CreatedBooking toEntity() => CreatedBooking(
    id: id,
    ticketNumber: ticketNumber,
    passengerName: passengerName,
    phone: phone,
    seatNumber: seatNumber,
    amount: amount,
    status: BookingStatus.fromWire(status?.wireValue),
    statusDisplay: statusDisplay,
    originCity: trip.originCity,
    destinationCity: trip.destinationCity,
    departureTime: trip.departureTime,
  );
}

extension PaymentReadMapper on dto.PaymentRead {
  PaymentSnapshot toEntity() => PaymentSnapshot(
    id: id,
    ticketNumber: ticketNumber,
    amount: amount,
    methodWire: method.wireValue,
    methodDisplay: methodDisplay,
    status: PaymentStatus.fromWire(status?.wireValue),
    statusDisplay: statusDisplay,
    phone: phone,
    otpExpiresAt: otpExpiresAt,
    otpAttemptsRemaining: otpAttemptsRemaining,
    receiptUrl: receiptUrl,
    paidAt: paidAt,
  );
}

extension BookingReadTravelerMapper on dto.BookingRead {
  TravelerBooking toTravelerBooking() => TravelerBooking(
    id: id,
    ticketNumber: ticketNumber,
    originCity: trip.originCity,
    destinationCity: trip.destinationCity,
    companyName: trip.companyName,
    companySigle: trip.companySigle,
    departureTime: trip.departureTime,
    arrivalTime: trip.arrivalTime,
    passengerName: passengerName,
    phone: phone,
    seatNumber: seatNumber,
    baggage: baggage.map((item) => item.toEntity()).toList(growable: false),
    baggageTotalWeightKg: baggageTotalWeightKg,
    amount: amount,
    paymentMethod: paymentMethod,
    qrCode: qrCode,
    status: BookingStatus.fromWire(status?.wireValue),
    statusDisplay: statusDisplay,
    isBoarded: isBoarded,
    createdAt: createdAt,
  );
}

extension BaggageMapper on dto.Baggage {
  TravelerBaggageItem toEntity() => TravelerBaggageItem(
    id: id,
    label: label,
    tag: tag,
    weightKg: weightKg,
    location: BaggageLocation.fromWire(location?.wireValue),
    locationDisplay: locationDisplay,
  );
}

extension PaymentReadHistoryMapper on dto.PaymentRead {
  TravelerPayment toHistoryEntity() => TravelerPayment(
    id: id,
    ticketNumber: ticketNumber,
    amount: amount,
    methodDisplay: methodDisplay,
    status: PaymentStatus.fromWire(status?.wireValue),
    statusDisplay: statusDisplay,
    // `paid_at` si réglé, sinon la date de création (toujours présente).
    date: paidAt ?? createdAt,
  );
}

extension TravelerDashboardMapper on dto.TravelerDashboard {
  TravelerDashboardSummary toEntity() => TravelerDashboardSummary(
    nextTrips: nextTrips
        .map(
          (trip) => TravelerTripPreview(
            ticketNumber: trip.ticketNumber,
            origin: trip.origin,
            destination: trip.destination,
            departureTime: trip.departureTime,
            seatNumber: trip.seatNumber,
            status: trip.status,
          ),
        )
        .toList(growable: false),
    activeBookingsCount: activeBookingsCount,
    pendingCount: pendingCount,
    recentNotifications: recentNotifications
        .map(
          (notif) => TravelerNotificationPreview(
            id: notif.id,
            title: notif.title,
            body: notif.body,
            isRead: notif.isRead,
            createdAt: notif.createdAt,
          ),
        )
        .toList(growable: false),
  );
}

extension NotificationMapper on dto.Notification {
  AppNotification toEntity() => AppNotification(
    id: id,
    kind: NotificationKind.fromWire(type.wireValue),
    typeDisplay: typeDisplay,
    title: title,
    body: body,
    isRead: isRead,
    createdAt: createdAt,
  );
}

extension ClaimReadMapper on dto.ClaimRead {
  TravelerClaim toEntity() => TravelerClaim(
    id: id,
    companyName: companyName,
    ticketNumber: ticketNumber,
    claimType: ClaimTypeKind.fromWire(claimType.wireValue),
    claimTypeDisplay: claimTypeDisplay,
    subject: subject,
    description: description,
    status: ClaimStatusKind.fromWire(status?.wireValue),
    statusDisplay: statusDisplay,
    response: response,
    respondedAt: respondedAt,
    isOverdue: isOverdue,
    createdAt: createdAt,
  );
}
