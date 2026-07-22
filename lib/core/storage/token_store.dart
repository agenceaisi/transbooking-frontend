import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Paire de jetons JWT renvoyée par l'API.
class AuthTokens {
  const AuthTokens({required this.access, required this.refresh});

  /// Jeton d'accès (durée de vie 30 min).
  final String access;

  /// Jeton de rafraîchissement (durée de vie 7 jours).
  final String refresh;

  AuthTokens copyWith({String? access, String? refresh}) => AuthTokens(
    access: access ?? this.access,
    refresh: refresh ?? this.refresh,
  );

  /// Jamais de jeton dans les journaux (CLAUDE.md §13).
  @override
  String toString() => 'AuthTokens(access: ***, refresh: ***)';
}

/// Conservation des jetons JWT.
///
/// 🔴 Les jetons ne vont **que** dans le coffre sécurisé de la plateforme :
/// jamais dans Drift, jamais dans SharedPreferences, jamais dans un journal.
abstract interface class TokenStore {
  Future<AuthTokens?> read();

  Future<void> save(AuthTokens tokens);

  /// Ne remplace que le jeton d'accès (retour de `token/refresh/`).
  Future<void> saveAccess(String access);

  Future<void> clear();
}

/// Implémentation adossée à `flutter_secure_storage`.
class SecureTokenStore implements TokenStore {
  const SecureTokenStore(this._storage);

  final FlutterSecureStorage _storage;

  static const String _accessKey = 'tb_access_token';
  static const String _refreshKey = 'tb_refresh_token';

  @override
  Future<AuthTokens?> read() async {
    final access = await _storage.read(key: _accessKey);
    final refresh = await _storage.read(key: _refreshKey);
    if (access == null || refresh == null) return null;
    return AuthTokens(access: access, refresh: refresh);
  }

  @override
  Future<void> save(AuthTokens tokens) async {
    await _storage.write(key: _accessKey, value: tokens.access);
    await _storage.write(key: _refreshKey, value: tokens.refresh);
  }

  @override
  Future<void> saveAccess(String access) =>
      _storage.write(key: _accessKey, value: access);

  @override
  Future<void> clear() async {
    await _storage.delete(key: _accessKey);
    await _storage.delete(key: _refreshKey);
  }
}
