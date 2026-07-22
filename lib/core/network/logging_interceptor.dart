import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// Journalise les échanges HTTP hors production.
///
/// 🔴 L'en-tête `Authorization` et le corps des routes d'authentification sont
/// masqués : aucun jeton, aucun mot de passe ne doit apparaître dans les
/// journaux (CLAUDE.md §13).
class LoggingInterceptor extends Interceptor {
  LoggingInterceptor({Logger? logger}) : _logger = logger ?? Logger();

  final Logger _logger;

  static const String _redacted = '***';
  static const String _authorizationHeader = 'Authorization';

  /// Fragments de route dont le corps ne doit jamais être journalisé.
  static const List<String> _sensitivePathFragments = ['/auth/', '/payments/'];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.d(
      '→ ${options.method} ${options.uri}'
      '${_isSensitive(options.path) ? ' (corps masqué)' : ''}',
    );
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    _logger.d('← ${response.statusCode} ${response.requestOptions.uri}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.w(
      '× ${err.response?.statusCode ?? err.type.name} '
      '${err.requestOptions.uri}',
    );
    handler.next(err);
  }

  /// Masque la valeur du jeton dans un jeu d'en-têtes destiné à l'affichage.
  static Map<String, dynamic> redactHeaders(Map<String, dynamic> headers) {
    return {
      for (final entry in headers.entries)
        entry.key: entry.key == _authorizationHeader ? _redacted : entry.value,
    };
  }

  static bool _isSensitive(String path) =>
      _sensitivePathFragments.any(path.contains);
}
