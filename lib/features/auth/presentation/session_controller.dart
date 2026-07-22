import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/storage/storage_providers.dart';
import '../../../core/storage/token_store.dart';
import '../domain/account_profile.dart';
import '../domain/auth_repository.dart';
import '../domain/auth_state.dart';
import 'auth_providers.dart';

/// État de session de l'application.
final sessionControllerProvider =
    NotifierProvider<SessionController, AuthState>(SessionController.new);

/// Détient l'état d'authentification et le tient à jour.
///
/// Le routeur observe ce contrôleur pour ses gardes ; l'intercepteur JWT
/// l'appelle via [onSessionExpired] quand le rafraîchissement a échoué.
class SessionController extends Notifier<AuthState> {
  @override
  AuthState build() => const AuthUnknown();

  TokenStore get _tokenStore => ref.read(tokenStoreProvider);

  AuthRepository get _repository => ref.read(authRepositoryProvider);

  /// Rétablit la session au démarrage.
  ///
  /// Le rôle n'est pas déductible d'un jeton : il vient de `GET /users/me/`.
  /// Quatre issues :
  ///  - aucun jeton → session close ;
  ///  - profil obtenu → session ouverte, rôle vérifié par le serveur ;
  ///  - accès bloqué (403) → session ouverte mais suspendue ;
  ///  - serveur injoignable → on rouvre avec le **dernier profil connu**
  ///    plutôt que de renvoyer l'agent à la connexion (CLAUDE.md §6).
  Future<void> restore() async {
    final tokens = await _tokenStore.read();
    if (tokens == null) {
      state = const Unauthenticated();
      return;
    }

    try {
      state = _authenticatedFrom(await _repository.loadProfile());
    } on AccountSuspendedFailure {
      // La session est valide : c'est l'accès de la compagnie qui est bloqué.
      final cached = await _repository.lastKnownProfile();
      state = cached == null
          ? const Unauthenticated()
          : _authenticatedFrom(cached, suspended: true);
    } on NoConnectionFailure {
      await _restoreFromCache();
    } on TimeoutFailure {
      await _restoreFromCache();
    } on Failure {
      // Jeton refusé ou profil illisible : on repart d'une session propre.
      await signOut();
    }
  }

  /// Rouvre la session hors réseau, si un profil a déjà été confirmé.
  Future<void> _restoreFromCache() async {
    final cached = await _repository.lastKnownProfile();
    state = cached == null
        ? const Unauthenticated()
        : _authenticatedFrom(cached, fromCache: true);
  }

  /// Ouvre une session après une connexion réussie.
  void signedIn(AccountProfile profile) {
    state = _authenticatedFrom(profile);
  }

  /// Signale que la plateforme bloque l'accès de la compagnie (403).
  ///
  /// Appelé par les features quand une requête est refusée alors que la
  /// session reste valide : le routeur bascule sur « compte suspendu ».
  void markSuspended() {
    final current = state;
    if (current is Authenticated) {
      state = current.copyWith(suspended: true);
    }
  }

  /// Ferme la session : révocation du jeton côté serveur, purge locale.
  Future<void> signOut() async {
    await _repository.signOut();
    state = const Unauthenticated();
  }

  /// Appelé par l'intercepteur quand le rafraîchissement a définitivement
  /// échoué : les jetons sont déjà purgés, il reste à basculer l'état pour que
  /// le routeur ramène vers la connexion.
  void onSessionExpired() {
    state = const Unauthenticated();
  }

  static Authenticated _authenticatedFrom(
    AccountProfile profile, {
    bool suspended = false,
    bool fromCache = false,
  }) {
    return Authenticated(
      role: profile.role,
      prenom: profile.prenom,
      nom: profile.nom,
      suspended: suspended,
      fromCache: fromCache,
    );
  }
}
