import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/config/app_config.dart';
import 'core/config/app_config_provider.dart';

/// Point d'entrée de l'application.
///
/// La configuration est résolue une fois ici puis injectée dans l'arbre de
/// providers : le reste du code ne relit jamais les `--dart-define`.
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final config = AppConfig.fromEnvironment();

  runApp(
    ProviderScope(
      overrides: [appConfigProvider.overrideWithValue(config)],
      child: const TransBookingApp(),
    ),
  );
}
