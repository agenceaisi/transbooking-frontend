import 'package:flutter/foundation.dart';

import 'app_environment.dart';

/// Configuration d'exécution résolue au démarrage.
///
/// Toutes les URL viennent d'ici : aucune adresse ne doit être écrite en dur
/// ailleurs dans le code. La sélection se fait au build :
///
/// ```bash
/// flutter run --dart-define=ENV=dev
/// flutter build web --dart-define=ENV=prod --dart-define=API_BASE_URL=https://…
/// ```
@immutable
class AppConfig {
  const AppConfig({required this.environment, required this.apiBaseUrl});

  /// Environnement courant.
  final AppEnvironment environment;

  /// Racine du serveur, **sans** le préfixe d'API et sans `/` final
  /// (ex. `http://localhost:8000`).
  final String apiBaseUrl;

  // ── Clés de `--dart-define` ───────────────────────────────────────────────
  static const String _envKey = 'ENV';
  static const String _baseUrlKey = 'API_BASE_URL';

  /// Préfixe commun à toutes les routes métier (cf. guide d'intégration §1).
  static const String apiPrefix = '/api/v1';

  /// Port du serveur de développement local.
  static const int _devPort = 8000;

  /// Hôte de bouclage vu depuis l'émulateur Android (cf. guide §1.1).
  static const String _androidEmulatorHost = '10.0.2.2';

  /// Hôte de bouclage pour iOS, Web et Desktop (cf. guide §1.1).
  static const String _loopbackHost = 'localhost';

  /// Durée de vie de l'access token (30 min côté API) — marge de sécurité
  /// laissée à l'intercepteur, qui rafraîchit sur `401` et non sur minuterie.
  static const Duration accessTokenLifetime = Duration(minutes: 30);

  /// Durée de vie du refresh token (7 jours côté API).
  static const Duration refreshTokenLifetime = Duration(days: 7);

  /// Construit la configuration depuis les `--dart-define`.
  ///
  /// En `dev`, l'URL est déduite de la plateforme d'exécution ; un
  /// `--dart-define=API_BASE_URL=http://192.168.x.x:8000` reste prioritaire
  /// pour tester depuis un appareil physique.
  ///
  /// En `staging` et `prod`, `API_BASE_URL` est **obligatoire** : ces adresses
  /// ne sont documentées ni dans le schéma ni dans le guide d'intégration, on
  /// ne les devine donc pas.
  factory AppConfig.fromEnvironment() {
    final environment = AppEnvironment.parse(
      const String.fromEnvironment(_envKey),
    );
    const overrideUrl = String.fromEnvironment(_baseUrlKey);

    if (overrideUrl.isNotEmpty) {
      return AppConfig(
        environment: environment,
        apiBaseUrl: _normalize(overrideUrl),
      );
    }

    if (environment != AppEnvironment.dev) {
      throw StateError(
        "L'adresse du serveur est absente pour l'environnement "
        '"${environment.key}". Relancez le build avec '
        '--dart-define=$_baseUrlKey=https://…',
      );
    }

    return AppConfig(environment: environment, apiBaseUrl: _devBaseUrl());
  }

  /// URL locale déduite de la plateforme (cf. guide d'intégration §1.1).
  static String _devBaseUrl() {
    // Le Web tourne dans le navigateur de la machine hôte : bouclage direct.
    // `defaultTargetPlatform` vaut `android` dans Chrome sur Android, d'où ce
    // test en premier.
    final isAndroidEmulator =
        !kIsWeb && defaultTargetPlatform == TargetPlatform.android;
    final host = isAndroidEmulator ? _androidEmulatorHost : _loopbackHost;
    return 'http://$host:$_devPort';
  }

  /// Retire le `/` final pour que la concaténation avec [apiPrefix] soit sûre.
  static String _normalize(String url) =>
      url.endsWith('/') ? url.substring(0, url.length - 1) : url;

  /// Racine des appels métier (ex. `http://localhost:8000/api/v1`).
  String get apiUrl => '$apiBaseUrl$apiPrefix';

  /// Vrai hors production : autorise les journaux réseau détaillés.
  bool get isDebugEnvironment => environment != AppEnvironment.prod;

  @override
  String toString() =>
      'AppConfig(environment: ${environment.key}, apiBaseUrl: $apiBaseUrl)';
}
