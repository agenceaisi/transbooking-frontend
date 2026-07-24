import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/network_providers.dart';
import '../data/booking_remote_data_source.dart';
import '../data/booking_repository_impl.dart';
import '../data/claim_remote_data_source.dart';
import '../data/claim_repository_impl.dart';
import '../data/feedback_remote_data_source.dart';
import '../data/feedback_repository_impl.dart';
import '../data/notification_remote_data_source.dart';
import '../data/notification_repository_impl.dart';
import '../data/payment_remote_data_source.dart';
import '../data/payment_repository_impl.dart';
import '../data/profile_remote_data_source.dart';
import '../data/profile_repository_impl.dart';
import '../data/traveler_dashboard_remote_data_source.dart';
import '../data/traveler_dashboard_repository_impl.dart';
import '../domain/app_notification.dart';
import '../domain/booking_repository.dart';
import '../domain/claim_repository.dart';
import '../domain/feedback_repository.dart';
import '../domain/notification_repository.dart';
import '../domain/payment_repository.dart';
import '../domain/payment_snapshot.dart';
import '../domain/profile_repository.dart';
import '../domain/traveler_booking.dart';
import '../domain/traveler_claim.dart';
import '../domain/traveler_dashboard_repository.dart';
import '../domain/traveler_dashboard_summary.dart';
import '../domain/traveler_payment.dart';
import '../domain/trip_booking_detail.dart';
import '../../auth/domain/account_profile.dart';

/// Sources de données HTTP du parcours d'achat.
final bookingRemoteDataSourceProvider = Provider<BookingRemoteDataSource>(
  (ref) => BookingRemoteDataSource(ref.watch(dioProvider)),
);

final paymentRemoteDataSourceProvider = Provider<PaymentRemoteDataSource>(
  (ref) => PaymentRemoteDataSource(ref.watch(dioProvider)),
);

final travelerDashboardRemoteDataSourceProvider =
    Provider<TravelerDashboardRemoteDataSource>(
      (ref) => TravelerDashboardRemoteDataSource(ref.watch(dioProvider)),
    );

final notificationRemoteDataSourceProvider =
    Provider<NotificationRemoteDataSource>(
      (ref) => NotificationRemoteDataSource(ref.watch(dioProvider)),
    );

final claimRemoteDataSourceProvider = Provider<ClaimRemoteDataSource>(
  (ref) => ClaimRemoteDataSource(ref.watch(dioProvider)),
);

final feedbackRemoteDataSourceProvider = Provider<FeedbackRemoteDataSource>(
  (ref) => FeedbackRemoteDataSource(ref.watch(dioProvider)),
);

final profileRemoteDataSourceProvider = Provider<ProfileRemoteDataSource>(
  (ref) => ProfileRemoteDataSource(ref.watch(dioProvider)),
);

/// Dépôts — seuls points d'entrée de la présentation.
final bookingRepositoryProvider = Provider<BookingRepository>(
  (ref) => BookingRepositoryImpl(ref.watch(bookingRemoteDataSourceProvider)),
);

final paymentRepositoryProvider = Provider<PaymentRepository>(
  (ref) => PaymentRepositoryImpl(ref.watch(paymentRemoteDataSourceProvider)),
);

final travelerDashboardRepositoryProvider =
    Provider<TravelerDashboardRepository>(
      (ref) => TravelerDashboardRepositoryImpl(
        ref.watch(travelerDashboardRemoteDataSourceProvider),
      ),
    );

final notificationRepositoryProvider = Provider<NotificationRepository>(
  (ref) => NotificationRepositoryImpl(
    ref.watch(notificationRemoteDataSourceProvider),
  ),
);

final claimRepositoryProvider = Provider<ClaimRepository>(
  (ref) => ClaimRepositoryImpl(ref.watch(claimRemoteDataSourceProvider)),
);

final feedbackRepositoryProvider = Provider<FeedbackRepository>(
  (ref) => FeedbackRepositoryImpl(ref.watch(feedbackRemoteDataSourceProvider)),
);

final profileRepositoryProvider = Provider<ProfileRepository>(
  (ref) => ProfileRepositoryImpl(ref.watch(profileRemoteDataSourceProvider)),
);

/// Détail d'un voyage à réserver (`GET /trips/{id}/`).
final tripBookingDetailProvider = FutureProvider.autoDispose
    .family<TripBookingDetail, int>(
      (ref, tripId) => ref.watch(bookingRepositoryProvider).tripDetail(tripId),
    );

/// Statut courant d'un paiement (`GET /payments/{id}/`) — repli de l'écran de
/// résultat sur lien profond, quand l'instantané n'a pas été transmis.
final paymentStatusProvider = FutureProvider.autoDispose
    .family<PaymentSnapshot, int>(
      (ref, paymentId) =>
          ref.watch(paymentRepositoryProvider).status(paymentId),
    );

/// Synthèse de l'accueil voyageur (`GET /dashboard/traveler/`).
final travelerDashboardProvider =
    FutureProvider.autoDispose<TravelerDashboardSummary>(
      (ref) => ref.watch(travelerDashboardRepositoryProvider).dashboard(),
    );

/// Mes réservations (`GET /bookings/`).
final myBookingsProvider = FutureProvider.autoDispose<List<TravelerBooking>>(
  (ref) => ref.watch(bookingRepositoryProvider).myBookings(),
);

/// Détail d'une réservation (`GET /bookings/{id}/`).
final bookingDetailProvider = FutureProvider.autoDispose
    .family<TravelerBooking, int>(
      (ref, id) => ref.watch(bookingRepositoryProvider).booking(id),
    );

/// Mes réclamations (`GET /claims/`).
final myClaimsProvider = FutureProvider.autoDispose<List<TravelerClaim>>(
  (ref) => ref.watch(claimRepositoryProvider).myClaims(),
);

/// Mes notifications (`GET /notifications/`).
final notificationsProvider = FutureProvider.autoDispose<List<AppNotification>>(
  (ref) => ref.watch(notificationRepositoryProvider).list(),
);

/// Profil de l'utilisateur connecté (`GET /users/me/`).
final travelerProfileProvider = FutureProvider.autoDispose<AccountProfile>(
  (ref) => ref.watch(profileRepositoryProvider).profile(),
);

/// Historique de mes paiements (`GET /payments/`).
final travelerPaymentsProvider =
    FutureProvider.autoDispose<List<TravelerPayment>>(
      (ref) => ref.watch(paymentRepositoryProvider).myPayments(),
    );
