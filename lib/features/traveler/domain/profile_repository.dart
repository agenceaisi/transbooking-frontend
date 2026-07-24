import '../../auth/domain/account_profile.dart';

/// Profil de l'utilisateur connecté (guide §6.1, `users/me`).
///
/// Réutilise [AccountProfile] du domaine auth : c'est le même utilisateur, vu
/// côté « Mon profil ».
abstract interface class ProfileRepository {
  /// `GET /users/me/` — profil courant.
  Future<AccountProfile> profile();

  /// `PATCH /users/me/` — met à jour les champs modifiables (téléphone, email).
  ///
  /// [phone] est le numéro complet au format API (`+22670000000`).
  Future<AccountProfile> updateProfile({String? phone, String? email});
}
