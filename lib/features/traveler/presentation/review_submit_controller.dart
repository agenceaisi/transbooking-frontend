import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'traveler_providers.dart';

/// Dépôt d'un avis après un voyage terminé (`POST /reviews/`, guide §6.12).
final reviewSubmitProvider =
    AsyncNotifierProvider.autoDispose<ReviewSubmitController, bool>(
      ReviewSubmitController.new,
    );

class ReviewSubmitController extends AsyncNotifier<bool> {
  @override
  Future<bool> build() async => false;

  /// Envoie l'avis. Renvoie `true` en cas de succès ; l'erreur est portée par
  /// `state` (l'API refuse un avis avant la fin du voyage ou sans paiement).
  Future<bool> submit({
    required int tripId,
    required int rating,
    String? comment,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(() async {
      await ref
          .read(feedbackRepositoryProvider)
          .submitReview(tripId: tripId, rating: rating, comment: comment);
      return true;
    });
    state = result;
    return result.value ?? false;
  }
}
