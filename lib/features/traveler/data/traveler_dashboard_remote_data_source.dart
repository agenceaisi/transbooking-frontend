import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appel HTTP du tableau de bord voyageur (guide §6.16).
class TravelerDashboardRemoteDataSource {
  const TravelerDashboardRemoteDataSource(this._dio);

  final Dio _dio;

  /// `GET /dashboard/traveler/` — non paginé (guide §3).
  Future<dto.TravelerDashboard> dashboard() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/dashboard/traveler/',
      );
      return dto.TravelerDashboard.fromJson(_requireBody(response));
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
