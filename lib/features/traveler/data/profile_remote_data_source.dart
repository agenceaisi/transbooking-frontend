import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP du profil utilisateur (guide §6.1, `users/me`).
class ProfileRemoteDataSource {
  const ProfileRemoteDataSource(this._dio);

  final Dio _dio;

  /// `GET /users/me/` — profil courant.
  Future<dto.UserProfile> me() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>('/users/me/');
      return dto.UserProfile.fromJson(_requireBody(response));
    });
  }

  /// `PATCH /users/me/` — met à jour les champs modifiables.
  Future<dto.UserProfile> update(dto.PatchedUserProfileUpdate body) {
    return _guard(() async {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/users/me/',
        data: body.toJson(),
      );
      return dto.UserProfile.fromJson(_requireBody(response));
    });
  }

  static Future<T> _guard<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on DioException catch (exception) {
      throw FailureMapper.fromDioException(exception);
    } on Failure {
      rethrow;
    } on Object catch (error) {
      throw UnexpectedFailure(cause: error);
    }
  }

  static Map<String, dynamic> _requireBody(Response<Map<String, dynamic>> r) {
    final body = r.data;
    if (body == null) throw const UnexpectedFailure();
    return body;
  }
}
