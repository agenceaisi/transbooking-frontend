import '../../../core/api/dto.dart' as dto;
import '../domain/claim_attachment_draft.dart';
import '../domain/claim_repository.dart';
import '../domain/traveler_claim.dart';
import 'claim_remote_data_source.dart';
import 'traveler_mappers.dart';

/// Implémentation de [ClaimRepository].
class ClaimRepositoryImpl implements ClaimRepository {
  const ClaimRepositoryImpl(this._remote);

  final ClaimRemoteDataSource _remote;

  @override
  Future<List<TravelerClaim>> myClaims() async {
    final claims = await _remote.list();
    return claims.map((claim) => claim.toEntity()).toList(growable: false);
  }

  @override
  Future<TravelerClaim> submitClaim({
    int? bookingId,
    int? companyId,
    required ClaimTypeKind type,
    required String subject,
    required String description,
    ClaimAttachmentDraft? attachment,
  }) async {
    final created = await _remote.create(
      dto.ClaimCreate(
        booking: bookingId,
        company: companyId,
        claimType: dto.ClaimTypeEnum.values.firstWhere(
          (value) => value.wireValue == type.wire,
        ),
        subject: subject,
        description: description,
      ),
      attachment: attachment == null
          ? null
          : (
              bytes: attachment.bytes,
              filename: attachment.filename,
              contentType: attachment.contentType,
            ),
    );
    return created.toEntity();
  }
}
