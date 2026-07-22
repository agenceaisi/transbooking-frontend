import '../../../core/api/dto.dart';
import '../../../core/error/failure.dart';
import '../../../core/storage/token_store.dart';
import '../domain/account_profile.dart';
import '../domain/auth_repository.dart';
import '../domain/user_role.dart';
import 'auth_remote_data_source.dart';
import 'session_profile_cache.dart';

/// Implémentation de [AuthRepository].
///
/// Elle orchestre trois dépendances : l'API, le coffre à jetons et le cache du
/// dernier profil connu. Les jetons ne sortent jamais d'ici.
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required this._remote,
    required this._tokenStore,
    required this._profileCache,
  });

  final AuthRemoteDataSource _remote;
  final TokenStore _tokenStore;
  final SessionProfileCache _profileCache;

  @override
  Future<AccountProfile> signIn({
    required String phone,
    required String password,
  }) async {
    final response = await _remote.login(phone: phone, password: password);

    final role = UserRole.fromWire(response.role);
    if (role == null) {
      // Rôle absent ou inconnu : impossible de savoir quel espace ouvrir. On
      // refuse plutôt que d'aiguiller au hasard (CLAUDE.md §11.5).
      throw UnexpectedFailure(cause: 'Rôle inconnu : ${response.role}');
    }

    await _tokenStore.save(
      AuthTokens(access: response.access, refresh: response.refresh),
    );

    final profile = AccountProfile(
      phone: phone,
      role: role,
      prenom: response.prenom,
    );
    await _profileCache.write(profile);
    return profile;
  }

  @override
  Future<AccountProfile> loadProfile() async {
    final UserProfile dto;
    try {
      dto = await _remote.profile();
    } on ForbiddenFailure catch (failure) {
      // Un 403 sur son propre profil ne peut pas venir d'un rôle insuffisant :
      // c'est le tenant qui est bloqué (compagnie suspendue/rejetée ou
      // abonnement expiré, guide §2 et §6.17).
      throw AccountSuspendedFailure(detail: failure.detail);
    }

    final role = UserRole.fromWire(dto.role);
    if (role == null) {
      throw UnexpectedFailure(cause: 'Rôle inconnu : ${dto.role}');
    }

    final profile = AccountProfile(
      phone: dto.phone,
      role: role,
      prenom: dto.prenom,
      nom: dto.nom,
      email: dto.email,
    );
    await _profileCache.write(profile);
    return profile;
  }

  @override
  Future<AccountProfile?> lastKnownProfile() => _profileCache.read();

  @override
  Future<void> registerTraveler({
    required String prenom,
    required String nom,
    required String phone,
    required String password,
    String? email,
  }) async {
    await _remote.register(
      UserRegistration(
        prenom: prenom,
        nom: nom,
        phone: phone,
        password: password,
        email: email,
      ),
    );
  }

  @override
  Future<CompanyAccountRequest> requestCompanyAccount({
    required String companyName,
    required String managerName,
    required String phone,
    required String email,
    required String city,
  }) async {
    final status = await _remote.registerCompany(
      CompanyRegistrationRequest(
        companyName: companyName,
        managerName: managerName,
        phone: phone,
        email: email,
        city: city,
      ),
    );

    return CompanyAccountRequest(
      id: status.id,
      companyName: status.companyName,
      status: status.status.name,
    );
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) {
    return _remote.changePassword(
      PasswordChange(oldPassword: currentPassword, newPassword: newPassword),
    );
  }

  @override
  Future<void> signOut() async {
    final tokens = await _tokenStore.read();

    if (tokens != null) {
      try {
        await _remote.logout(tokens.refresh);
      } on Failure {
        // Jeton déjà révoqué, ou serveur injoignable : la déconnexion locale
        // reste prioritaire. Ne jamais laisser l'utilisateur coincé en session.
      }
    }

    await _tokenStore.clear();
    await _profileCache.clear();
  }
}
