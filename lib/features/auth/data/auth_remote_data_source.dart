import 'package:dio/dio.dart';

import '../../../core/api/dto.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';
import 'models/login_response.dart';

/// Appels HTTP de la feature auth (guide §6.1, schéma `auth/*` + `users/me`).
///
/// Chaque méthode traduit les erreurs dio en [Failure] : au-dessus, plus
/// personne ne connaît dio.
class AuthRemoteDataSource {
  const AuthRemoteDataSource(this._dio);

  final Dio _dio;

  // ── Chemins, relatifs à la base `…/api/v1` ───────────────────────────────
  static const String loginPath = '/auth/login/';
  static const String registerPath = '/auth/register/';
  static const String companyRegisterPath = '/auth/company/register/';
  static const String logoutPath = '/auth/logout/';
  static const String passwordChangePath = '/auth/password/change/';
  static const String profilePath = '/users/me/';

  Future<LoginResponse> login({
    required String phone,
    required String password,
  }) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        loginPath,
        data: {'phone': phone, 'password': password},
      );
      return LoginResponse.fromJson(_requireBody(response));
    });
  }

  Future<UserProfile> register(UserRegistration registration) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        registerPath,
        data: registration.toJson(),
      );
      return UserProfile.fromJson(_requireBody(response));
    });
  }

  Future<CompanyRequestStatus> registerCompany(
    CompanyRegistrationRequest request,
  ) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        companyRegisterPath,
        // `documents` n'est pas envoyé : l'import de pièces jointes n'est pas
        // encore ouvert côté application (cf. écran d'inscription).
        data: request.toJson()..remove('documents'),
      );
      return CompanyRequestStatus.fromJson(_requireBody(response));
    });
  }

  Future<UserProfile> profile() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(profilePath);
      return UserProfile.fromJson(_requireBody(response));
    });
  }

  Future<void> changePassword(PasswordChange change) {
    return _guard(() async {
      await _dio.post<Map<String, dynamic>>(
        passwordChangePath,
        data: change.toJson(),
      );
    });
  }

  /// Blackliste le jeton de rafraîchissement côté serveur.
  Future<void> logout(String refreshToken) {
    return _guard(() async {
      await _dio.post<void>(
        logoutPath,
        data: Logout(refresh: refreshToken).toJson(),
      );
    });
  }

  /// Exécute [action] en traduisant toute erreur en [Failure].
  static Future<T> _guard<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on DioException catch (exception) {
      throw FailureMapper.fromDioException(exception);
    } on Failure {
      rethrow;
    } on Object catch (error) {
      // Corps illisible ou champ manquant : l'UI n'a pas à voir l'exception.
      throw UnexpectedFailure(cause: error);
    }
  }

  static Map<String, dynamic> _requireBody(Response<Map<String, dynamic>> r) {
    final body = r.data;
    if (body == null) throw const UnexpectedFailure();
    return body;
  }
}
