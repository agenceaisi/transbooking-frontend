import '../../../core/api/dto.dart' as dto;
import '../domain/feedback_repository.dart';
import 'feedback_remote_data_source.dart';

/// Implémentation de [FeedbackRepository].
class FeedbackRepositoryImpl implements FeedbackRepository {
  const FeedbackRepositoryImpl(this._remote);

  final FeedbackRemoteDataSource _remote;

  @override
  Future<void> submitReview({
    required int tripId,
    required int rating,
    String? comment,
  }) {
    return _remote.createReview(
      dto.ReviewCreate(
        trip: tripId,
        rating: rating,
        comment: (comment != null && comment.trim().isNotEmpty)
            ? comment.trim()
            : null,
      ),
    );
  }

  @override
  Future<int> submitSpeedReport({
    int? companyId,
    int? tripId,
    int? estimatedSpeed,
    SpeedReportSeverity? severity,
    required String description,
    double? latitude,
    double? longitude,
  }) async {
    final created = await _remote.createSpeedReport(
      dto.SpeedReportCreate(
        company: companyId,
        trip: tripId,
        estimatedSpeed: estimatedSpeed,
        severity: severity == null
            ? null
            : dto.SeverityEnum.values.firstWhere(
                (value) => value.wireValue == severity.wire,
              ),
        description: description,
        // L'API attend des chaînes décimales pour les coordonnées.
        latitude: latitude?.toString(),
        longitude: longitude?.toString(),
      ),
    );
    return created.id;
  }
}
