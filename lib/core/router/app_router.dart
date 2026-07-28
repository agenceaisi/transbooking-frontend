import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/agent/domain/agent_trip.dart';
import '../../features/agent/presentation/screens/agent_boarding_list_screen.dart';
import '../../features/agent/presentation/screens/agent_dashboard_screen.dart';
import '../../features/agent/presentation/screens/agent_parcel_arrivals_screen.dart';
import '../../features/agent/presentation/screens/agent_parcel_registration_screen.dart';
import '../../features/agent/presentation/screens/agent_passenger_registration_screen.dart';
import '../../features/agent/presentation/screens/agent_scanner_screen.dart';
import '../../features/agent/presentation/screens/agent_schedule_screen.dart';
import '../../features/agent/presentation/screens/agent_sync_logs_screen.dart';
import '../../features/auth/domain/auth_state.dart';
import '../../features/auth/presentation/screens/account_suspended_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/password_change_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/session_controller.dart';
import '../../features/public/presentation/screens/company_public_screen.dart';
import '../../features/public/presentation/screens/home_screen.dart';
import '../../features/public/presentation/screens/parcel_tracking_screen.dart';
import '../../features/public/presentation/screens/search_results_screen.dart';
import '../../features/traveler/domain/payment_snapshot.dart';
import '../../features/traveler/domain/traveler_booking.dart';
import '../../features/traveler/presentation/screens/baggage_screen.dart';
import '../../features/traveler/presentation/screens/booking_screen.dart';
import '../../features/traveler/presentation/screens/claims_screen.dart';
import '../../features/traveler/presentation/screens/my_bookings_screen.dart';
import '../../features/traveler/presentation/screens/new_claim_screen.dart';
import '../../features/traveler/presentation/screens/payment_otp_screen.dart';
import '../../features/traveler/presentation/screens/payment_result_screen.dart';
import '../../features/traveler/presentation/screens/profile_screen.dart';
import '../../features/traveler/presentation/screens/review_screen.dart';
import '../../features/traveler/presentation/screens/speed_report_screen.dart';
import '../../features/traveler/presentation/screens/ticket_screen.dart';
import '../../features/traveler/presentation/screens/traveler_dashboard_screen.dart';
import '../localization/l10n_extension.dart';
import 'app_routes.dart';
import 'role_shell_placeholder.dart';

/// Routeur de l'application.
///
/// Les gardes appliquent deux règles (CLAUDE.md §5) :
///  1. un espace protégé exige une session ouverte ;
///  2. chaque espace n'accepte que les rôles qui lui correspondent — un agent
///     ne peut pas atteindre le back-office d'une compagnie en tapant l'URL.
final appRouterProvider = Provider<GoRouter>((ref) {
  final refreshListenable = _AuthRefreshListenable(ref);
  ref.onDispose(refreshListenable.dispose);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    refreshListenable: refreshListenable,
    redirect: (context, state) =>
        _guard(ref.read(sessionControllerProvider), state.matchedLocation),
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splashName,
        builder: (context, state) => const _SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.loginName,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: AppRoutes.registerName,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.accountSuspended,
        name: AppRoutes.accountSuspendedName,
        builder: (context, state) => const AccountSuspendedScreen(),
      ),
      GoRoute(
        path: AppRoutes.passwordChange,
        name: AppRoutes.passwordChangeName,
        builder: (context, state) => const PasswordChangeScreen(),
      ),
      // ── Espace public ──────────────────────────────────────────────────
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.homeName,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.searchResults,
        name: AppRoutes.searchResultsName,
        builder: (context, state) => const SearchResultsScreen(),
      ),
      GoRoute(
        path: '${AppRoutes.company}/:id',
        name: AppRoutes.companyName,
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '');
          return CompanyPublicScreen(companyId: id);
        },
      ),
      GoRoute(
        path: AppRoutes.parcelTracking,
        name: AppRoutes.parcelTrackingName,
        builder: (context, state) => const ParcelTrackingScreen(),
      ),
      GoRoute(
        path: AppRoutes.traveler,
        name: AppRoutes.travelerName,
        builder: (context, state) => const TravelerDashboardScreen(),
      ),
      // ── Espace voyageur (protégé) ──────────────────────────────────────
      GoRoute(
        path: AppRoutes.travelerBookings,
        name: AppRoutes.travelerBookingsName,
        builder: (context, state) => const MyBookingsScreen(),
        routes: [
          GoRoute(
            path: ':id',
            name: AppRoutes.travelerTicketName,
            builder: (context, state) {
              final id = int.tryParse(state.pathParameters['id'] ?? '');
              return TicketScreen(bookingId: id);
            },
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.travelerBaggage,
        name: AppRoutes.travelerBaggageName,
        builder: (context, state) => const BaggageScreen(),
      ),
      GoRoute(
        path: AppRoutes.travelerClaims,
        name: AppRoutes.travelerClaimsName,
        builder: (context, state) => const ClaimsScreen(),
      ),
      GoRoute(
        path: AppRoutes.travelerNewClaim,
        name: AppRoutes.travelerNewClaimName,
        builder: (context, state) => const NewClaimScreen(),
      ),
      GoRoute(
        path: '${AppRoutes.travelerReview}/:tripId',
        name: AppRoutes.travelerReviewName,
        builder: (context, state) {
          final tripId = int.tryParse(state.pathParameters['tripId'] ?? '');
          final booking = state.extra is TravelerBooking
              ? state.extra as TravelerBooking
              : null;
          return ReviewScreen(tripId: tripId, booking: booking);
        },
      ),
      GoRoute(
        path: AppRoutes.travelerSpeedReport,
        name: AppRoutes.travelerSpeedReportName,
        builder: (context, state) => const SpeedReportScreen(),
      ),
      GoRoute(
        path: AppRoutes.travelerProfile,
        name: AppRoutes.travelerProfileName,
        builder: (context, state) => const ProfileScreen(),
      ),
      // ── Parcours d'achat voyageur (protégé) ────────────────────────────
      GoRoute(
        path: '${AppRoutes.travelerBooking}/:tripId',
        name: AppRoutes.travelerBookingName,
        builder: (context, state) {
          final tripId = int.tryParse(state.pathParameters['tripId'] ?? '');
          return BookingScreen(tripId: tripId);
        },
      ),
      GoRoute(
        path: '${AppRoutes.travelerPayment}/:paymentId',
        name: AppRoutes.travelerPaymentName,
        builder: (context, state) {
          final paymentId = int.tryParse(
            state.pathParameters['paymentId'] ?? '',
          );
          return PaymentOtpScreen(
            paymentId: paymentId,
            initialSnapshot: state.extra is PaymentSnapshot
                ? state.extra as PaymentSnapshot
                : null,
          );
        },
      ),
      GoRoute(
        path: '${AppRoutes.travelerReceipt}/:paymentId',
        name: AppRoutes.travelerReceiptName,
        builder: (context, state) {
          final paymentId = int.tryParse(
            state.pathParameters['paymentId'] ?? '',
          );
          return PaymentResultScreen(
            paymentId: paymentId,
            initialSnapshot: state.extra is PaymentSnapshot
                ? state.extra as PaymentSnapshot
                : null,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.agent,
        name: AppRoutes.agentName,
        // Guichet et contrôle partagent l'écran : il s'adapte au rôle.
        builder: (context, state) => const AgentDashboardScreen(),
      ),
      GoRoute(
        path: AppRoutes.agentSchedule,
        name: AppRoutes.agentScheduleName,
        builder: (context, state) => const AgentScheduleScreen(),
      ),
      GoRoute(
        path: AppRoutes.agentNewPassenger,
        name: AppRoutes.agentNewPassengerName,
        builder: (context, state) => AgentPassengerRegistrationScreen(
          initialTrip: state.extra is AgentTrip
              ? state.extra as AgentTrip
              : null,
        ),
      ),
      GoRoute(
        path: AppRoutes.agentNewParcel,
        name: AppRoutes.agentNewParcelName,
        builder: (context, state) => const AgentParcelRegistrationScreen(),
      ),
      GoRoute(
        path: AppRoutes.agentParcelArrivals,
        name: AppRoutes.agentParcelArrivalsName,
        builder: (context, state) => const AgentParcelArrivalsScreen(),
      ),
      GoRoute(
        path: '${AppRoutes.agentBoardingList}/:tripId',
        name: AppRoutes.agentBoardingListName,
        builder: (context, state) {
          final tripId = int.tryParse(state.pathParameters['tripId'] ?? '') ?? 0;
          return AgentBoardingListScreen(tripId: tripId);
        },
      ),
      GoRoute(
        path: AppRoutes.agentScanQr,
        name: AppRoutes.agentScanQrName,
        builder: (context, state) => const AgentScannerScreen(),
      ),
      GoRoute(
        path: AppRoutes.agentSyncHistory,
        name: AppRoutes.agentSyncHistoryName,
        builder: (context, state) => const AgentSyncLogsScreen(),
      ),
      GoRoute(
        path: AppRoutes.companyAdmin,
        name: AppRoutes.companyAdminName,
        builder: (context, state) =>
            RoleShellPlaceholder(title: context.l10n.shellCompanyAdmin),
      ),
      GoRoute(
        path: AppRoutes.superAdmin,
        name: AppRoutes.superAdminName,
        builder: (context, state) =>
            RoleShellPlaceholder(title: context.l10n.shellSuperAdmin),
      ),
    ],
  );
});

/// Calcule la redirection à appliquer, ou `null` pour laisser passer.
///
/// Extrait du routeur pour rester testable sans monter de widget.
String? _guard(AuthState auth, String location) {
  // Tant que la session n'est pas tranchée, on reste sur l'amorçage plutôt que
  // de rediriger à tort vers la connexion.
  if (auth.isResolving) {
    return location == AppRoutes.splash ? null : AppRoutes.splash;
  }

  final role = auth.role;

  if (role == null) {
    // Session close : l'espace public reste ouvert. La porte d'entrée d'un
    // visiteur non connecté est l'accueil (depuis l'amorçage), pas la
    // connexion. Les espaces protégés, eux, renvoient toujours vers la
    // connexion.
    if (AppRoutes.isPublicLocation(location)) return null;
    if (location == AppRoutes.splash) return AppRoutes.home;
    return AppRoutes.login;
  }

  // Accès bloqué par la plateforme : rien d'autre que l'écran dédié, d'où
  // l'utilisateur peut se déconnecter (guide §2).
  if (auth.isSuspended) {
    return location == AppRoutes.accountSuspended
        ? null
        : AppRoutes.accountSuspended;
  }

  // Session ouverte : amorçage, connexion, inscription et écran de suspension
  // n'ont plus lieu d'être.
  const closedOnceSignedIn = {
    AppRoutes.splash,
    AppRoutes.login,
    AppRoutes.register,
    AppRoutes.accountSuspended,
  };
  if (closedOnceSignedIn.contains(location)) {
    return AppRoutes.homeFor(role);
  }

  if (AppRoutes.sharedAuthenticatedLocations.contains(location)) return null;

  if (AppRoutes.isProtected(location) &&
      !AppRoutes.rolesAllowedIn(location).contains(role)) {
    return AppRoutes.homeFor(role);
  }

  return null;
}

/// Expose l'état de session à `go_router` sous forme de `Listenable`.
class _AuthRefreshListenable extends ChangeNotifier {
  _AuthRefreshListenable(Ref ref) {
    _subscription = ref.listen<AuthState>(
      sessionControllerProvider,
      (previous, next) => notifyListeners(),
    );
  }

  late final ProviderSubscription<AuthState> _subscription;

  @override
  void dispose() {
    _subscription.close();
    super.dispose();
  }
}

/// Écran d'amorçage — restaure la session puis laisse les gardes rediriger.
class _SplashScreen extends ConsumerStatefulWidget {
  const _SplashScreen();

  @override
  ConsumerState<_SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Après la première image, pour ne pas modifier un provider pendant le
    // montage de l'arbre.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(sessionControllerProvider.notifier).restore();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

/// Exposé pour les tests des gardes.
@visibleForTesting
String? guardForTest(AuthState auth, String location) => _guard(auth, location);
