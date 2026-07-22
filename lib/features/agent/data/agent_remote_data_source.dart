import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP du module agent (guide §6.16, §6.6 et §6.14).
///
/// Chaque méthode traduit les erreurs dio en [Failure] : au-dessus, plus
/// personne ne connaît dio.
class AgentRemoteDataSource {
  const AgentRemoteDataSource(this._dio);

  final Dio _dio;

  // ── Chemins, relatifs à la base `…/api/v1` ───────────────────────────────
  static const String dashboardPath = '/agent/dashboard/';
  static const String tripsTodayPath = '/agent/trips/today/';
  static const String notificationsPath = '/notifications/';

  /// Nombre d'alertes remontées sur le tableau de bord.
  ///
  /// La maquette en affiche trois ; au-delà, l'agent ouvre le centre de
  /// notifications.
  static const int alertsPageSize = 3;

  /// `GET /agent/dashboard/` — prochains départs, alertes en attente.
  Future<dto.AgentDashboard> dashboard() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(dashboardPath);
      return dto.AgentDashboard.fromJson(_requireBody(response));
    });
  }

  /// `GET /agent/trips/today/` — voyages du jour du périmètre de l'agent.
  ///
  /// **Non paginé** (guide §6.6) : la réponse est une liste nue. Sert à
  /// compléter les départs du tableau de bord, qui ne portent ni
  /// l'immatriculation du véhicule ni le statut du voyage.
  Future<List<dto.TripRead>> tripsToday() {
    return _guard(() async {
      final response = await _dio.get<List<dynamic>>(tripsTodayPath);
      final items = response.data ?? const [];
      return items
          .whereType<Map<String, dynamic>>()
          .map(dto.TripRead.fromJson)
          .toList(growable: false);
    });
  }

  /// `GET /notifications/` — notifications de l'utilisateur, non lues d'abord.
  ///
  /// Réponse **paginée** (guide §3) ; seule la première page nous intéresse.
  Future<List<dto.Notification>> recentNotifications({
    int pageSize = alertsPageSize,
  }) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        notificationsPath,
        queryParameters: {'page_size': pageSize},
      );
      return dto.PaginatedNotificationList.fromJson(
        _requireBody(response),
      ).results;
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
