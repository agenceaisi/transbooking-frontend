import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/network_providers.dart';
import '../../../core/storage/database_provider.dart';
import '../../../core/storage/storage_providers.dart';
import '../data/auth_remote_data_source.dart';
import '../data/auth_repository_impl.dart';
import '../data/session_profile_cache.dart';
import '../domain/auth_repository.dart';

/// Source de données HTTP de l'authentification.
final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>(
  (ref) => AuthRemoteDataSource(ref.watch(dioProvider)),
);

/// Cache du dernier profil connu (Drift).
final sessionProfileCacheProvider = Provider<SessionProfileCache>(
  (ref) => SessionProfileCache(ref.watch(localDatabaseProvider)),
);

/// Dépôt d'accès à l'authentification — seul point d'entrée de la présentation.
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    remote: ref.watch(authRemoteDataSourceProvider),
    tokenStore: ref.watch(tokenStoreProvider),
    profileCache: ref.watch(sessionProfileCacheProvider),
  );
});
