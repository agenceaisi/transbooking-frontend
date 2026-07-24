import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP des notifications in-app (guide §6.14).
class NotificationRemoteDataSource {
  const NotificationRemoteDataSource(this._dio);

  final Dio _dio;

  /// `GET /notifications/` — paginé, non lues en premier.
  Future<List<dto.Notification>> list() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/notifications/',
        queryParameters: const {'page_size': 50},
      );
      return dto.PaginatedNotificationList.fromJson(
        _requireBody(response),
      ).results;
    });
  }

  /// `POST /notifications/{id}/read/` — marque une notification comme lue.
  Future<void> markRead(int id) {
    return _guard(() async {
      await _dio.post<Map<String, dynamic>>('/notifications/$id/read/');
    });
  }

  /// `POST /notifications/read-all/` — tout marquer comme lu → `{ updated }`.
  Future<int> markAllRead() {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/notifications/read-all/',
      );
      final updated = _requireBody(response)['updated'];
      return updated is int ? updated : 0;
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
