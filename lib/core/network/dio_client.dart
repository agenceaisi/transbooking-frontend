import 'package:dio/dio.dart';

import '../config/app_config.dart';
import 'auth_interceptor.dart';
import 'logging_interceptor.dart';

/// Fabrique des clients HTTP de l'application.
///
/// Deux clients partagent la même configuration de base :
/// - [createApiClient] : porte l'intercepteur d'authentification ;
/// - [createRefreshClient] : ne le porte pas, pour rafraîchir le jeton et
///   rejouer une requête sans déclencher de rafraîchissement en cascade.
abstract final class DioClient {
  static const Duration _connectTimeout = Duration(seconds: 15);
  static const Duration _receiveTimeout = Duration(seconds: 30);

  static BaseOptions _baseOptions(AppConfig config) => BaseOptions(
    baseUrl: config.apiUrl,
    connectTimeout: _connectTimeout,
    receiveTimeout: _receiveTimeout,
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    // Les codes d'erreur sont traités par `FailureMapper`, pas par dio.
    validateStatus: (status) => status != null && status >= 200 && status < 300,
  );

  /// Client sans authentification, dédié au rafraîchissement et au rejeu.
  static Dio createRefreshClient(AppConfig config) => Dio(_baseOptions(config));

  /// Client principal des appels métier.
  static Dio createApiClient({
    required AppConfig config,
    required Dio refreshClient,
    required AuthInterceptor authInterceptor,
  }) {
    final dio = Dio(_baseOptions(config));
    dio.interceptors.add(authInterceptor);
    if (config.isDebugEnvironment) {
      dio.interceptors.add(LoggingInterceptor());
    }
    return dio;
  }
}
