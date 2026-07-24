import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP des retours voyageur : avis et signalements (guide §6.11, §6.12).
class FeedbackRemoteDataSource {
  const FeedbackRemoteDataSource(this._dio);

  final Dio _dio;

  /// `POST /reviews/` — dépose un avis.
  Future<void> createReview(dto.ReviewCreate body) {
    return _guard(() async {
      await _dio.post<Map<String, dynamic>>('/reviews/', data: body.toJson());
    });
  }

  /// `POST /speed-reports/` — dépose un signalement ; renvoie le signalement créé.
  Future<dto.SpeedReportRead> createSpeedReport(dto.SpeedReportCreate body) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/speed-reports/',
        data: body.toJson(),
      );
      return dto.SpeedReportRead.fromJson(_requireBody(response));
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
