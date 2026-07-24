import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/features/traveler/data/feedback_remote_data_source.dart';
import 'package:transbooking_bf/features/traveler/data/feedback_repository_impl.dart';
import 'package:transbooking_bf/features/traveler/domain/feedback_repository.dart';

class _MockRemote extends Mock implements FeedbackRemoteDataSource {}

class _FakeReviewCreate extends Fake implements dto.ReviewCreate {}

class _FakeSpeedReportCreate extends Fake implements dto.SpeedReportCreate {}

void main() {
  late _MockRemote remote;
  late FeedbackRepositoryImpl repository;

  setUpAll(() {
    registerFallbackValue(_FakeReviewCreate());
    registerFallbackValue(_FakeSpeedReportCreate());
  });

  setUp(() {
    remote = _MockRemote();
    repository = FeedbackRepositoryImpl(remote);
  });

  test('submitReview omet un commentaire vide', () async {
    dto.ReviewCreate? captured;
    when(() => remote.createReview(any())).thenAnswer((invocation) async {
      captured = invocation.positionalArguments.first as dto.ReviewCreate;
    });

    await repository.submitReview(tripId: 7, rating: 5, comment: '   ');

    expect(captured?.trip, 7);
    expect(captured?.rating, 5);
    expect(captured?.comment, isNull);
  });

  test('submitReview conserve un commentaire renseigné', () async {
    dto.ReviewCreate? captured;
    when(() => remote.createReview(any())).thenAnswer((invocation) async {
      captured = invocation.positionalArguments.first as dto.ReviewCreate;
    });

    await repository.submitReview(
      tripId: 7,
      rating: 4,
      comment: '  Bon voyage  ',
    );

    expect(captured?.comment, 'Bon voyage');
  });

  dto.SpeedReportRead speedReportRead() => dto.SpeedReportRead(
    id: 77,
    company: 4,
    companyName: 'Faso Express',
    severityDisplay: 'Grave',
    reportedAt: DateTime.utc(2026, 7, 24, 14, 32),
    statusDisplay: 'En attente',
    createdAt: DateTime.utc(2026, 7, 24, 14, 32),
  );

  test(
    'submitSpeedReport transmet la gravité, les coordonnées, et renvoie l\'id',
    () async {
      dto.SpeedReportCreate? captured;
      when(() => remote.createSpeedReport(any())).thenAnswer((
        invocation,
      ) async {
        captured =
            invocation.positionalArguments.first as dto.SpeedReportCreate;
        return speedReportRead();
      });

      final reference = await repository.submitSpeedReport(
        severity: SpeedReportSeverity.high,
        description: 'Vitesse excessive sur la RN1.',
        latitude: 11.1771,
        longitude: -4.2979,
      );

      expect(captured?.description, 'Vitesse excessive sur la RN1.');
      expect(captured?.severity, dto.SeverityEnum.high);
      expect(captured?.severity?.wireValue, 'high');
      expect(captured?.latitude, '11.1771');
      expect(captured?.longitude, '-4.2979');
      expect(reference, 77);
    },
  );
}
