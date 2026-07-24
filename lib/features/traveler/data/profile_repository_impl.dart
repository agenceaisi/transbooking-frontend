import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../auth/domain/account_profile.dart';
import '../../auth/domain/user_role.dart';
import '../domain/profile_repository.dart';
import 'profile_remote_data_source.dart';

/// Implémentation de [ProfileRepository].
class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._remote);

  final ProfileRemoteDataSource _remote;

  @override
  Future<AccountProfile> profile() async {
    return _toEntity(await _remote.me());
  }

  @override
  Future<AccountProfile> updateProfile({String? phone, String? email}) async {
    final updated = await _remote.update(
      dto.PatchedUserProfileUpdate(phone: phone, email: email),
    );
    return _toEntity(updated);
  }

  static AccountProfile _toEntity(dto.UserProfile profile) {
    final role = UserRole.fromWire(profile.role);
    if (role == null) {
      throw UnexpectedFailure(cause: 'Rôle inconnu : ${profile.role}');
    }
    return AccountProfile(
      phone: profile.phone,
      role: role,
      prenom: profile.prenom,
      nom: profile.nom,
      email: profile.email,
    );
  }
}
