import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_config.dart';

/// Configuration d'exécution de l'application.
///
/// Surchargé dans le `ProviderScope` de `main()` : y accéder sans surcharge est
/// une erreur de programmation, d'où l'exception explicite.
final appConfigProvider = Provider<AppConfig>(
  (ref) => throw UnimplementedError(
    'appConfigProvider doit être surchargé dans le ProviderScope racine.',
  ),
);
