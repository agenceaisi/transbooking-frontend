import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'local_database.dart';

/// Base locale de l'application.
///
/// Instance unique pour toute la durée de vie du processus ; fermée avec le
/// conteneur de providers.
final localDatabaseProvider = Provider<LocalDatabase>((ref) {
  final database = LocalDatabase();
  ref.onDispose(database.close);
  return database;
});
