import 'account_profile.dart';

/// Porte d'entrée de la feature auth.
///
/// Toute méthode lève une `Failure` du domaine en cas d'échec : la couche
/// présentation ne voit jamais de `DioException`.
abstract interface class AuthRepository {
  /// Connecte l'utilisateur et enregistre les jetons dans le coffre sécurisé.
  ///
  /// [phone] est le numéro complet au format API (`+22670000000`) : c'est le
  /// seul identifiant accepté (guide §6.1).
  Future<AccountProfile> signIn({
    required String phone,
    required String password,
  });

  /// Profil de la session en cours (`GET /users/me/`).
  Future<AccountProfile> loadProfile();

  /// Dernier profil connu, conservé localement pour rouvrir l'application sans
  /// réseau. `null` si aucune session n'a encore abouti.
  Future<AccountProfile?> lastKnownProfile();

  /// Inscription d'un voyageur.
  Future<void> registerTraveler({
    required String prenom,
    required String nom,
    required String phone,
    required String password,
    String? email,
  });

  /// Dépôt d'une demande de compte compagnie — aucun compte n'est créé.
  Future<CompanyAccountRequest> requestCompanyAccount({
    required String companyName,
    required String managerName,
    required String phone,
    required String email,
    required String city,
  });

  /// Change le mot de passe de l'utilisateur connecté.
  ///
  /// Les jetons en cours restent valides (guide §6.1).
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  /// Révoque le jeton de rafraîchissement puis purge tout ce qui est local.
  Future<void> signOut();
}
