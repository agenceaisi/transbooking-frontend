/// Gravité estimée d'un excès de vitesse (guide, `SeverityEnum`).
enum SpeedReportSeverity {
  low('low'),
  medium('medium'),
  high('high');

  const SpeedReportSeverity(this.wire);

  final String wire;
}

/// Retours du voyageur : avis après voyage et signalement d'excès de vitesse
/// (guide §6.11, §6.12).
abstract interface class FeedbackRepository {
  /// `POST /reviews/` — dépose un avis (voyage terminé + réservation payée).
  ///
  /// [rating] va de 1 à 5. [comment] est facultatif.
  Future<void> submitReview({
    required int tripId,
    required int rating,
    String? comment,
  });

  /// `POST /speed-reports/` — signale un excès de vitesse (horodatage auto côté
  /// serveur, GPS facultatif). Renvoie l'`id` de référence du signalement créé.
  Future<int> submitSpeedReport({
    int? companyId,
    int? tripId,
    int? estimatedSpeed,
    SpeedReportSeverity? severity,
    required String description,
    double? latitude,
    double? longitude,
  });
}
