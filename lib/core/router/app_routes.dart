import '../../features/auth/domain/user_role.dart';

/// Chemins et noms de routes de l'application.
///
/// Centralisés ici pour que la navigation n'écrive jamais un chemin en dur.
abstract final class AppRoutes {
  // ── Amorçage et authentification ─────────────────────────────────────────
  static const String splash = '/';
  static const String splashName = 'splash';

  static const String login = '/connexion';
  static const String loginName = 'connexion';

  static const String register = '/inscription';
  static const String registerName = 'inscription';

  /// Écran « compte suspendu » (compagnie suspendue ou abonnement expiré).
  static const String accountSuspended = '/compte-suspendu';
  static const String accountSuspendedName = 'compte-suspendu';

  /// Changement de mot de passe — session ouverte requise, quel que soit le
  /// rôle. « Mon profil » (phase 4C) y mènera.
  static const String passwordChange = '/mot-de-passe';
  static const String passwordChangeName = 'mot-de-passe';

  // ── Espaces par rôle ─────────────────────────────────────────────────────
  static const String traveler = '/voyageur';
  static const String travelerName = 'voyageur';

  /// Module agent : guichet **et** contrôle partagent le même shell, car ils
  /// partagent le fonctionnement hors ligne et le bandeau de connexion.
  static const String agent = '/agent';
  static const String agentName = 'agent';

  static const String companyAdmin = '/compagnie';
  static const String companyAdminName = 'compagnie';

  static const String superAdmin = '/administration';
  static const String superAdminName = 'administration';

  /// Espace d'accueil du rôle, cible de l'aiguillage après connexion.
  static String homeFor(UserRole role) => switch (role) {
    UserRole.voyageur => traveler,
    UserRole.agentGuichet || UserRole.controleur => agent,
    UserRole.companyAdmin => companyAdmin,
    UserRole.superAdmin => superAdmin,
  };

  /// Rôles autorisés à accéder à une section donnée.
  static Set<UserRole> rolesAllowedIn(String location) {
    if (location.startsWith(traveler)) return {UserRole.voyageur};
    if (location.startsWith(agent)) {
      return {UserRole.agentGuichet, UserRole.controleur};
    }
    if (location.startsWith(companyAdmin)) return {UserRole.companyAdmin};
    if (location.startsWith(superAdmin)) return {UserRole.superAdmin};
    return const {};
  }

  /// Vrai si [location] appartient à un espace réservé à un rôle.
  static bool isProtected(String location) =>
      rolesAllowedIn(location).isNotEmpty;

  /// Écrans accessibles hors session.
  static const Set<String> publicLocations = {
    login,
    register,
    accountSuspended,
  };

  /// Écrans ouverts à tous les rôles, en dehors des espaces par rôle.
  static const Set<String> sharedAuthenticatedLocations = {passwordChange};
}
