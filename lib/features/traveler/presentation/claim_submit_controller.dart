import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/claim_attachment_draft.dart';
import '../domain/traveler_claim.dart';
import 'traveler_providers.dart';

/// Dépôt d'une réclamation (`POST /claims/`, guide §6.10).
///
/// `autoDispose` : l'état repart à zéro à chaque ouverture du formulaire. La
/// valeur porte la réclamation **créée** (avec son `id` de référence) une fois
/// l'envoi réussi.
final claimSubmitProvider =
    AsyncNotifierProvider.autoDispose<ClaimSubmitController, TravelerClaim?>(
      ClaimSubmitController.new,
    );

class ClaimSubmitController extends AsyncNotifier<TravelerClaim?> {
  @override
  Future<TravelerClaim?> build() async => null;

  /// Envoie la réclamation. Renvoie la réclamation créée en cas de succès, ou
  /// `null` si l'opération a échoué (l'erreur est portée par `state`).
  Future<TravelerClaim?> submit({
    int? bookingId,
    int? companyId,
    required ClaimTypeKind type,
    required String subject,
    required String description,
    ClaimAttachmentDraft? attachment,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(() async {
      return ref
          .read(claimRepositoryProvider)
          .submitClaim(
            bookingId: bookingId,
            companyId: companyId,
            type: type,
            subject: subject,
            description: description,
            attachment: attachment,
          );
    });
    state = result;
    // La liste doit refléter la nouvelle réclamation au retour.
    if (!result.hasError) ref.invalidate(myClaimsProvider);
    return result.value;
  }
}
