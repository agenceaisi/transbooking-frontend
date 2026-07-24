import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/parcel_tracking.dart';
import 'public_providers.dart';

/// Suivi de colis public.
///
/// `null` tant qu'aucune recherche n'a été lancée (l'écran invite alors à saisir
/// un numéro). Un numéro introuvable remonte en `AsyncError(NotFoundFailure)`,
/// que l'écran traduit en carte « Numéro introuvable ».
final parcelTrackingControllerProvider =
    AsyncNotifierProvider.autoDispose<
      ParcelTrackingController,
      ParcelTracking?
    >(ParcelTrackingController.new);

class ParcelTrackingController extends AsyncNotifier<ParcelTracking?> {
  @override
  Future<ParcelTracking?> build() async => null;

  /// Recherche un colis par son numéro de suivi.
  Future<void> track(String trackingNumber) async {
    final trimmed = trackingNumber.trim();
    if (trimmed.isEmpty) return;

    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(publicRepositoryProvider).trackParcel(trimmed),
    );
  }
}
