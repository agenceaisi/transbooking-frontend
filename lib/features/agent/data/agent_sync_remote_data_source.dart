import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP de la synchronisation hors ligne (guide §6.15).
///
/// Les deux réponses ([offlineData], [sync]) sont désormais typées côté
/// serveur (`AgentOfflineData`, `SyncResult`) — corrigé le 2026-07-25 suite à
/// `api/backend_completion_requests_5a.md`.
class AgentSyncRemoteDataSource {
  const AgentSyncRemoteDataSource(this._dio);

  final Dio _dio;

  static const String offlineDataPath = '/agent/offline-data/';
  static const String syncPath = '/agent/sync/';
  static const String conflictsPath = '/agent/sync/conflicts/';
  static const String logsPath = '/agent/sync/logs/';

  /// `GET /agent/offline-data/` — paquet de travail du jour. Non paginé.
  Future<dto.AgentOfflineData> offlineData() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(offlineDataPath);
      return dto.AgentOfflineData.fromJson(_requireBody(response));
    });
  }

  /// `POST /agent/sync/` — envoie l'outbox, transaction atomique côté serveur.
  Future<dto.SyncResult> sync(dto.SyncPayload payload) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        syncPath,
        data: payload.toJson(),
      );
      return dto.SyncResult.fromJson(_requireBody(response));
    });
  }

  /// `GET /agent/sync/conflicts/` — conflits résolus à la dernière sync. Non
  /// paginé.
  ///
  /// ⚠️ Schéma distinct de `SyncResult.conflicts` (réponse de [sync]) : ceci
  /// est le modèle persistant `SyncConflict`, pas le descripteur transitoire
  /// `SyncResultConflict`.
  Future<List<dto.SyncConflict>> conflicts() {
    return _guard(() async {
      final response = await _dio.get<List<dynamic>>(conflictsPath);
      final items = response.data ?? const [];
      return items
          .whereType<Map<String, dynamic>>()
          .map(dto.SyncConflict.fromJson)
          .toList(growable: false);
    });
  }

  /// `GET /agent/sync/logs/` — historique des synchronisations. Paginé.
  Future<List<dto.SyncLog>> logs({int pageSize = 20}) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        logsPath,
        queryParameters: {'page_size': pageSize},
      );
      return dto.PaginatedSyncLogList.fromJson(_requireBody(response)).results;
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
      throw UnexpectedFailure(cause: error);
    }
  }

  static Map<String, dynamic> _requireBody(Response<Map<String, dynamic>> r) {
    final body = r.data;
    if (body == null) throw const UnexpectedFailure();
    return body;
  }
}
