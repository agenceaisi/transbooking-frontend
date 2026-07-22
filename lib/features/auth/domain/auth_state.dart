import 'user_role.dart';

/// État de la session courante.
///
/// Consommé par les gardes de `go_router` pour l'aiguillage par rôle.
sealed class AuthState {
  const AuthState();

  /// Vrai tant que la restauration des jetons n'a pas abouti — le routeur
  /// affiche alors l'écran d'amorçage plutôt que de rediriger à tort.
  bool get isResolving => this is AuthUnknown;

  /// Rôle courant, `null` hors session.
  UserRole? get role => switch (this) {
    Authenticated(:final role) => role,
    _ => null,
  };

  /// Vrai quand l'accès de la compagnie est bloqué (suspendue, rejetée, ou
  /// abonnement expiré) : le routeur ouvre alors l'écran « compte suspendu ».
  bool get isSuspended => switch (this) {
    Authenticated(:final suspended) => suspended,
    _ => false,
  };

  /// Nom à afficher, `null` s'il n'est pas encore connu.
  ///
  /// La réponse de connexion ne porte que le prénom (guide §6.1) ; le nom
  /// arrive avec `GET /users/me/`. On affiche donc ce qu'on a, sans compléter
  /// par une valeur inventée.
  String? get displayName => switch (this) {
    Authenticated(:final prenom, :final nom) => _joinName(prenom, nom),
    _ => null,
  };

  static String? _joinName(String? prenom, String? nom) {
    final parts = [
      prenom,
      nom,
    ].where((part) => part != null && part.trim().isNotEmpty);
    return parts.isEmpty ? null : parts.join(' ');
  }
}

/// Session pas encore déterminée (démarrage de l'application).
class AuthUnknown extends AuthState {
  const AuthUnknown();
}

/// Aucune session valide.
class Unauthenticated extends AuthState {
  const Unauthenticated();
}

/// Session ouverte.
class Authenticated extends AuthState {
  const Authenticated({
    required this.role,
    this.prenom,
    this.nom,
    this.suspended = false,
    this.fromCache = false,
  });

  @override
  final UserRole role;

  /// Prénom renvoyé par la connexion, pour l'accueil personnalisé.
  final String? prenom;

  /// Nom de famille, connu seulement après `GET /users/me/`.
  final String? nom;

  /// Accès bloqué par la plateforme (403 sur une requête de la compagnie).
  final bool suspended;

  /// Session rouverte depuis le dernier profil connu, faute d'avoir pu joindre
  /// le serveur. Le rôle sera revérifié dès le retour du réseau.
  final bool fromCache;

  Authenticated copyWith({bool? suspended}) => Authenticated(
    role: role,
    prenom: prenom,
    nom: nom,
    suspended: suspended ?? this.suspended,
    fromCache: fromCache,
  );
}
