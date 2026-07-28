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

  // ── Espace public (non authentifié) ──────────────────────────────────────
  /// Page d'accueil marketing — porte d'entrée d'un visiteur non connecté.
  static const String home = '/accueil';
  static const String homeName = 'accueil';

  /// Résultats de recherche de trajets.
  static const String searchResults = '/resultats';
  static const String searchResultsName = 'resultats';

  /// Fiche publique d'une compagnie. Base `/partenaires` — volontairement
  /// distincte de `/compagnie` (back-office admin) pour éviter que le préfixe
  /// de garde ne confonde les deux espaces.
  static const String company = '/partenaires';
  static const String companyName = 'partenaire';

  /// Suivi public d'un colis.
  static const String parcelTracking = '/suivi-colis';
  static const String parcelTrackingName = 'suivi-colis';

  /// Chemin de la fiche d'une compagnie donnée.
  static String companyPath(int id) => '$company/$id';

  // ── Espaces par rôle ─────────────────────────────────────────────────────
  static const String traveler = '/voyageur';
  static const String travelerName = 'voyageur';

  /// Parcours d'achat voyageur (protégé). Réservation d'un voyage donné.
  static const String travelerBooking = '/voyageur/reservation';
  static const String travelerBookingName = 'reservation';
  static String travelerBookingPath(int tripId) => '$travelerBooking/$tripId';

  /// Saisie du code de confirmation Mobile Money d'un paiement.
  static const String travelerPayment = '/voyageur/paiement';
  static const String travelerPaymentName = 'paiement';
  static String travelerPaymentPath(int paymentId) =>
      '$travelerPayment/$paymentId';

  /// Résultat d'un paiement (payé / en attente / échoué).
  static const String travelerReceipt = '/voyageur/recu';
  static const String travelerReceiptName = 'recu-paiement';
  static String travelerReceiptPath(int paymentId) =>
      '$travelerReceipt/$paymentId';

  /// Mes réservations (liste des billets du voyageur).
  static const String travelerBookings = '/voyageur/reservations';
  static const String travelerBookingsName = 'mes-reservations';

  /// Détail d'un billet électronique (QR plein écran).
  static const String travelerTicket = '/voyageur/reservations';
  static const String travelerTicketName = 'billet';
  static String travelerTicketPath(int bookingId) =>
      '$travelerTicket/$bookingId';

  /// Bagages : règles de transport et bagages enregistrés.
  static const String travelerBaggage = '/voyageur/bagages';
  static const String travelerBaggageName = 'bagages';

  /// Mes réclamations (liste + suivi d'état).
  static const String travelerClaims = '/voyageur/reclamations';
  static const String travelerClaimsName = 'reclamations';

  /// Nouvelle réclamation (formulaire).
  static const String travelerNewClaim = '/voyageur/reclamations/nouvelle';
  static const String travelerNewClaimName = 'nouvelle-reclamation';

  /// Déposer un avis sur un voyage terminé.
  static const String travelerReview = '/voyageur/avis';
  static const String travelerReviewName = 'avis';
  static String travelerReviewPath(int tripId) => '$travelerReview/$tripId';

  /// Signalement d'excès de vitesse.
  static const String travelerSpeedReport = '/voyageur/signalement';
  static const String travelerSpeedReportName = 'signalement';

  /// Mon profil (infos, mot de passe, historique).
  static const String travelerProfile = '/voyageur/profil';
  static const String travelerProfileName = 'profil';

  /// Module agent : guichet **et** contrôle partagent le même shell, car ils
  /// partagent le fonctionnement hors ligne et le bandeau de connexion.
  static const String agent = '/agent';
  static const String agentName = 'agent';

  /// Programme du jour — planning des départs de l'agent.
  static const String agentSchedule = '/agent/programme';
  static const String agentScheduleName = 'agent-programme';

  /// Enregistrement d'un passager au guichet.
  static const String agentNewPassenger = '/agent/passager/nouveau';
  static const String agentNewPassengerName = 'agent-nouveau-passager';

  /// Enregistrement d'un colis au guichet.
  static const String agentNewParcel = '/agent/colis/nouveau';
  static const String agentNewParcelName = 'agent-nouveau-colis';

  /// Colis arrivés, en attente de notification au destinataire.
  static const String agentParcelArrivals = '/agent/colis/arrivees';
  static const String agentParcelArrivalsName = 'agent-colis-arrivees';

  /// Liste des passagers & embarquement d'un voyage (phase 5C, contrôleur).
  static const String agentBoardingList = '/agent/embarquement';
  static const String agentBoardingListName = 'agent-embarquement';
  static String agentBoardingListPath(int tripId) =>
      '$agentBoardingList/$tripId';

  /// Scanner de billets à l'embarquement — indépendant d'un voyage précis, le
  /// trajet se résout depuis le billet scanné (guide §6.7).
  static const String agentScanQr = '/agent/scan';
  static const String agentScanQrName = 'agent-scan';

  /// Historique des synchronisations (`GET /agent/sync/logs/`, guide §6.15).
  static const String agentSyncHistory = '/agent/synchro/historique';
  static const String agentSyncHistoryName = 'agent-synchro-historique';

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

  /// Écrans à chemin fixe accessibles hors session.
  static const Set<String> publicLocations = {
    login,
    register,
    accountSuspended,
    home,
    searchResults,
    parcelTracking,
  };

  /// Préfixes des espaces publics à chemin variable (fiche compagnie).
  static const Set<String> _publicPrefixes = {company};

  /// Vrai si [location] est ouverte sans session (chemins fixes **ou**
  /// paramétrés comme la fiche d'une compagnie).
  static bool isPublicLocation(String location) =>
      publicLocations.contains(location) ||
      _publicPrefixes.any(location.startsWith);

  /// Écrans ouverts à tous les rôles, en dehors des espaces par rôle.
  static const Set<String> sharedAuthenticatedLocations = {passwordChange};
}
