import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/agent/presentation/screens/agent_dashboard_screen.dart';
import '../../features/auth/domain/auth_state.dart';
import '../../features/auth/presentation/screens/account_suspended_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/password_change_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/session_controller.dart';
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
      GoRoute(
        path: AppRoutes.traveler,
        name: AppRoutes.travelerName,
        builder: (context, state) =>
            RoleShellPlaceholder(title: context.l10n.shellTraveler),
      ),
      GoRoute(
        path: AppRoutes.agent,
        name: AppRoutes.agentName,
        // Guichet et contrôle partagent l'écran : il s'adapte au rôle.
        builder: (context, state) => const AgentDashboardScreen(),
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
    // Session close : connexion, inscription et compte suspendu restent seuls
    // accessibles.
    return AppRoutes.publicLocations.contains(location)
        ? null
        : AppRoutes.login;
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
