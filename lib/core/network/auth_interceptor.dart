import 'dart:async';

import 'package:dio/dio.dart';

import '../storage/token_store.dart';

/// Injecte le jeton d'accès et rafraîchit la session sur `401`.
///
/// Règles (CLAUDE.md §5) :
/// - `Authorization: Bearer <access>` sur toute requête authentifiée ;
/// - sur `401`, **un seul** rafraîchissement est tenté, puis la requête est
///   rejouée. Les requêtes concurrentes attendent le même rafraîchissement au
///   lieu d'en déclencher chacune un ;
/// - si le rafraîchissement échoue, les jetons sont purgés et
///   [onSessionExpired] prévient l'application (redirection vers la connexion).
class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this._tokenStore,
    required this._refreshClient,
    required this.onSessionExpired,
  });

  final TokenStore _tokenStore;

  /// Client dédié au rafraîchissement : sans cet intercepteur, il ne peut pas
  /// déclencher de rafraîchissement en cascade.
  final Dio _refreshClient;

  /// Appelé quand la session est définitivement perdue.
  final void Function() onSessionExpired;

  /// Rafraîchissement en cours, partagé par toutes les requêtes en attente.
  Future<String?>? _pendingRefresh;

  /// Route de rafraîchissement (guide d'intégration §6.1).
  static const String refreshPath = '/auth/token/refresh/';

  /// Routes publiques : y envoyer un jeton n'a pas de sens, et un `401` y est
  /// une vraie erreur d'identifiants, pas une session expirée.
  static const Set<String> _anonymousPaths = {
    '/auth/login/',
    '/auth/register/',
    '/auth/company/register/',
    refreshPath,
  };

  /// Marqueur posé sur une requête déjà rejouée, pour ne jamais boucler.
  static const String _retriedFlag = 'tb_retried';

  static const String _authorizationHeader = 'Authorization';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_isAnonymous(options.path)) {
      return handler.next(options);
    }

    final tokens = await _tokenStore.read();
    if (tokens != null) {
      options.headers[_authorizationHeader] = 'Bearer ${tokens.access}';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final options = err.requestOptions;
    final isAuthError = err.response?.statusCode == 401;
    final alreadyRetried = options.extra[_retriedFlag] == true;

    if (!isAuthError || alreadyRetried || _isAnonymous(options.path)) {
      return handler.next(err);
    }

    final access = await _refreshAccessToken();
    if (access == null) {
      return handler.next(err);
    }

    try {
      final response = await _replay(options, access);
      handler.resolve(response);
    } on DioException catch (error) {
      handler.next(error);
    }
  }

  /// Rejoue la requête d'origine avec le nouveau jeton.
  Future<Response<dynamic>> _replay(RequestOptions options, String access) {
    final headers = Map<String, dynamic>.from(options.headers)
      ..[_authorizationHeader] = 'Bearer $access';
    final extra = Map<String, dynamic>.from(options.extra)
      ..[_retriedFlag] = true;

    return _refreshClient.fetch<dynamic>(
      options.copyWith(headers: headers, extra: extra),
    );
  }

  /// Rafraîchit le jeton d'accès, une seule fois à la fois.
  ///
  /// Renvoie `null` si la session est perdue.
  Future<String?> _refreshAccessToken() {
    // Une opération est déjà en vol : on s'y raccroche.
    return _pendingRefresh ??= _performRefresh().whenComplete(() {
      _pendingRefresh = null;
    });
  }

  Future<String?> _performRefresh() async {
    final tokens = await _tokenStore.read();
    if (tokens == null) {
      _expireSession();
      return null;
    }

    try {
      final response = await _refreshClient.post<Map<String, dynamic>>(
        refreshPath,
        data: {'refresh': tokens.refresh},
      );
      final access = response.data?['access'];
      if (access is! String || access.isEmpty) {
        _expireSession();
        return null;
      }
      await _tokenStore.saveAccess(access);
      return access;
    } on DioException {
      // Refresh expiré ou révoqué : la session est terminée.
      _expireSession();
      return null;
    }
  }

  void _expireSession() {
    unawaited(_tokenStore.clear());
    onSessionExpired();
  }

  bool _isAnonymous(String path) =>
      _anonymousPaths.any((anonymous) => path.endsWith(anonymous));
}
