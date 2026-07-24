import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'traveler_providers.dart';

/// Mise à jour des champs modifiables du profil (`PATCH /users/me/`).
final profileEditProvider =
    AsyncNotifierProvider.autoDispose<ProfileEditController, bool>(
      ProfileEditController.new,
    );

class ProfileEditController extends AsyncNotifier<bool> {
  @override
  Future<bool> build() async => false;

  /// Envoie la mise à jour. Seuls les champs non nuls sont transmis.
  /// [phone] est le numéro complet au format API (`+22670000000`).
  Future<bool> submit({String? phone, String? email}) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(() async {
      await ref
          .read(profileRepositoryProvider)
          .updateProfile(phone: phone, email: email);
      return true;
    });
    state = result;
    // Le profil affiché doit refléter la nouvelle valeur.
    if (!result.hasError) ref.invalidate(travelerProfileProvider);
    return result.value ?? false;
  }
}
