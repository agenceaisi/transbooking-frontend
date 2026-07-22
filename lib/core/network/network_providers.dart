import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/presentation/session_controller.dart';
import '../config/app_config_provider.dart';
import '../storage/storage_providers.dart';
import 'auth_interceptor.dart';
import 'dio_client.dart';

/// Client sans authentification, réservé au rafraîchissement et au rejeu.
final refreshClientProvider = Provider<Dio>(
  (ref) => DioClient.createRefreshClient(ref.watch(appConfigProvider)),
);

/// Intercepteur d'authentification.
final authInterceptorProvider = Provider<AuthInterceptor>((ref) {
  return AuthInterceptor(
    tokenStore: ref.watch(tokenStoreProvider),
    refreshClient: ref.watch(refreshClientProvider),
    // La perte de session bascule l'état observé par les gardes du routeur,
    // qui ramène alors vers la connexion.
    onSessionExpired: () =>
        ref.read(sessionControllerProvider.notifier).onSessionExpired(),
  );
});

/// Client HTTP des appels métier.
final dioProvider = Provider<Dio>((ref) {
  return DioClient.createApiClient(
    config: ref.watch(appConfigProvider),
    refreshClient: ref.watch(refreshClientProvider),
    authInterceptor: ref.watch(authInterceptorProvider),
  );
});
