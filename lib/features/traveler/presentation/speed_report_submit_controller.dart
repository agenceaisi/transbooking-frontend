import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/feedback_repository.dart';
import 'traveler_providers.dart';

/// Dépôt d'un signalement d'excès de vitesse (`POST /speed-reports/`,
/// guide §6.11). L'horodatage est posé côté serveur ; le GPS est facultatif.
///
/// La valeur porte l'`id` de référence du signalement créé une fois l'envoi
/// réussi.
final speedReportSubmitProvider =
    AsyncNotifierProvider.autoDispose<SpeedReportSubmitController, int?>(
      SpeedReportSubmitController.new,
    );

class SpeedReportSubmitController extends AsyncNotifier<int?> {
  @override
  Future<int?> build() async => null;

  /// Envoie le signalement. Renvoie l'`id` de référence en cas de succès.
  Future<int?> submit({
    int? companyId,
    int? tripId,
    int? estimatedSpeed,
    SpeedReportSeverity? severity,
    required String description,
    double? latitude,
    double? longitude,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(() async {
      return ref
          .read(feedbackRepositoryProvider)
          .submitSpeedReport(
            companyId: companyId,
            tripId: tripId,
            estimatedSpeed: estimatedSpeed,
            severity: severity,
            description: description,
            latitude: latitude,
            longitude: longitude,
          );
    });
    state = result;
    return result.value;
  }
}
