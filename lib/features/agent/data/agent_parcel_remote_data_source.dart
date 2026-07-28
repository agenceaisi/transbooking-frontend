import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP des colis au guichet (guide §6.9).
class AgentParcelRemoteDataSource {
  const AgentParcelRemoteDataSource(this._dio);

  final Dio _dio;

  /// `POST /agent/parcels/` — réponse 201 typée `ParcelRead` (corrigé le
  /// 2026-07-26 suite à `api/backend_completion_requests_5b.md`, point 1).
  Future<dto.ParcelRead> create(dto.AgentParcelCreate body) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/agent/parcels/',
        data: body.toJson(),
      );
      return dto.ParcelRead.fromJson(_requireBody(response));
    });
  }

  /// `GET /agent/parcels/arrivals/` — colis en attente de notification. Non
  /// paginé, typé en singulier par le schéma (même artefact que
  /// `agent/trips/today/` avant correction) : lu comme une liste brute.
  Future<List<dto.ParcelRead>> arrivals() {
    return _guard(() async {
      final response = await _dio.get<dynamic>('/agent/parcels/arrivals/');
      final items = response.data;
      if (items is List) {
        return items
            .whereType<Map<String, dynamic>>()
            .map(dto.ParcelRead.fromJson)
            .toList(growable: false);
      }
      if (items is Map<String, dynamic>) {
        return [dto.ParcelRead.fromJson(items)];
      }
      return const <dto.ParcelRead>[];
    });
  }

  /// `POST /agent/parcels/{id}/notify/` — SMS ou appel manuel.
  Future<void> notify({required int parcelId, required bool bySms}) {
    return _guard(() async {
      await _dio.post<Map<String, dynamic>>(
        '/agent/parcels/$parcelId/notify/',
        data: {'method': bySms ? 'sms' : 'call'},
      );
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
