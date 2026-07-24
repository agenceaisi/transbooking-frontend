import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/features/traveler/data/claim_remote_data_source.dart';
import 'package:transbooking_bf/features/traveler/data/claim_repository_impl.dart';
import 'package:transbooking_bf/features/traveler/domain/claim_attachment_draft.dart';
import 'package:transbooking_bf/features/traveler/domain/traveler_claim.dart';

class _MockRemote extends Mock implements ClaimRemoteDataSource {}

class _FakeClaimCreate extends Fake implements dto.ClaimCreate {}

void main() {
  late _MockRemote remote;
  late ClaimRepositoryImpl repository;

  setUpAll(() => registerFallbackValue(_FakeClaimCreate()));

  setUp(() {
    remote = _MockRemote();
    repository = ClaimRepositoryImpl(remote);
  });

  dto.ClaimRead claimRead() => dto.ClaimRead(
    id: 12,
    company: 4,
    companyName: 'Faso Express',
    booking: 55,
    ticketNumber: 'BF2026009999',
    claimType: dto.ClaimTypeEnum.retard,
    claimTypeDisplay: 'Retard',
    subject: 'Bus en retard',
    description: 'Le bus est parti avec 40 minutes de retard.',
    status: dto.ClaimReadStatusEnum.submitted,
    statusDisplay: 'Soumise',
    isOverdue: true,
    attachments: const [],
    createdAt: DateTime.utc(2026, 7, 20, 8),
    updatedAt: DateTime.utc(2026, 7, 20, 8),
  );

  test('myClaims mappe ClaimRead vers TravelerClaim', () async {
    when(() => remote.list()).thenAnswer((_) async => [claimRead()]);

    final claims = await repository.myClaims();

    expect(claims, hasLength(1));
    final claim = claims.first;
    expect(claim.id, 12);
    expect(claim.companyName, 'Faso Express');
    expect(claim.claimType, ClaimTypeKind.retard);
    expect(claim.status, ClaimStatusKind.submitted);
    expect(claim.isOverdue, isTrue);
  });

  test(
    'submitClaim envoie le bon type et renvoie la réclamation créée',
    () async {
      dto.ClaimCreate? captured;
      ClaimAttachmentPart? capturedAttachment;
      when(
        () => remote.create(any(), attachment: any(named: 'attachment')),
      ).thenAnswer((invocation) async {
        captured = invocation.positionalArguments.first as dto.ClaimCreate;
        capturedAttachment =
            invocation.namedArguments[#attachment] as ClaimAttachmentPart?;
        return claimRead();
      });

      final claim = await repository.submitClaim(
        bookingId: 55,
        type: ClaimTypeKind.perteBagage,
        subject: 'Bagage perdu',
        description: 'Ma valise n\'est pas arrivée.',
      );

      expect(captured?.booking, 55);
      expect(captured?.company, isNull);
      expect(captured?.claimType, dto.ClaimTypeEnum.perteBagage);
      expect(captured?.claimType.wireValue, 'perte_bagage');
      expect(captured?.subject, 'Bagage perdu');
      // Sans pièce jointe, l'envoi reste en JSON (aucun fichier transmis).
      expect(capturedAttachment, isNull);
      // La réponse de lecture est remontée jusqu'au domaine (id de référence).
      expect(claim.id, 12);
      expect(claim.status, ClaimStatusKind.submitted);
    },
  );

  test('submitClaim transmet la pièce jointe au data source', () async {
    ClaimAttachmentPart? capturedAttachment;
    when(
      () => remote.create(any(), attachment: any(named: 'attachment')),
    ).thenAnswer((invocation) async {
      capturedAttachment =
          invocation.namedArguments[#attachment] as ClaimAttachmentPart?;
      return claimRead();
    });

    final bytes = Uint8List.fromList([1, 2, 3, 4]);
    await repository.submitClaim(
      bookingId: 55,
      type: ClaimTypeKind.perteBagage,
      subject: 'Bagage perdu',
      description: 'Ma valise n\'est pas arrivée.',
      attachment: ClaimAttachmentDraft(
        filename: 'recu.pdf',
        bytes: bytes,
        contentType: 'application/pdf',
      ),
    );

    expect(capturedAttachment, isNotNull);
    expect(capturedAttachment!.filename, 'recu.pdf');
    expect(capturedAttachment!.contentType, 'application/pdf');
    expect(capturedAttachment!.bytes, bytes);
  });
}
