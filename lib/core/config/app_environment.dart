/// Environnements de déploiement de l'application.
///
/// Sélectionné au build via `--dart-define=ENV=dev|staging|prod`.
enum AppEnvironment {
  dev('dev'),
  staging('staging'),
  prod('prod');

  const AppEnvironment(this.key);

  /// Valeur attendue dans `--dart-define=ENV=…`.
  final String key;

  /// Environnement retenu quand `ENV` n'est pas fourni (confort de dev local).
  static const AppEnvironment fallback = AppEnvironment.dev;

  /// Convertit la valeur brute du `--dart-define`.
  ///
  /// Une valeur inconnue est une erreur de build : on préfère échouer au
  /// démarrage plutôt que de pointer silencieusement vers le mauvais backend.
  static AppEnvironment parse(String raw) {
    if (raw.isEmpty) return fallback;
    for (final env in AppEnvironment.values) {
      if (env.key == raw) return env;
    }
    throw ArgumentError.value(
      raw,
      'ENV',
      'Environnement inconnu. Valeurs acceptées : '
          '${AppEnvironment.values.map((e) => e.key).join(', ')}.',
    );
  }
}
