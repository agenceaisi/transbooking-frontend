import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Accès à la connectivité de la plateforme.
///
/// Exposé en provider pour que les tests substituent un faux sans toucher au
/// reste de l'arbre.
final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());

/// Vrai quand l'appareil dispose d'une interface réseau active.
///
/// ⚠️ Une interface active ne garantit pas que l'API réponde (portail captif,
/// serveur injoignable) : c'est l'échec d'une requête qui fait foi. Ce flux
/// sert à déclencher une tentative de synchronisation et à colorer le bandeau,
/// pas à affirmer que tout va bien.
final isOnlineProvider = StreamProvider<bool>((ref) async* {
  final connectivity = ref.watch(connectivityProvider);

  // Première valeur immédiate : `onConnectivityChanged` n'émet qu'au premier
  // changement, l'écran resterait sinon sans état jusqu'à ce qu'on bouge.
  yield _isOnline(await connectivity.checkConnectivity());
  yield* connectivity.onConnectivityChanged.map(_isOnline);
});

bool _isOnline(List<ConnectivityResult> results) =>
    results.any((result) => result != ConnectivityResult.none);
