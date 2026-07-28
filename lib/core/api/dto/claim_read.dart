// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'claim_attachment.dart';
import 'claim_read_status_enum.dart';
import 'claim_type_enum.dart';

part 'claim_read.freezed.dart';
part 'claim_read.g.dart';

/// Lecture detaillee d'une reclamation (voyageur, admin, super admin).
@freezed
abstract class ClaimRead with _$ClaimRead {
  const factory ClaimRead({
    required int id,
    required int company,
    @JsonKey(name: 'company_name')
    required String companyName,
    int? booking,
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    @JsonKey(name: 'claim_type')
    required ClaimTypeEnum claimType,
    @JsonKey(name: 'claim_type_display')
    required String claimTypeDisplay,
    required String subject,
    required String description,
    ClaimReadStatusEnum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    String? response,
    @JsonKey(name: 'responded_at')
    DateTime? respondedAt,
    @JsonKey(name: 'is_overdue')
    required bool isOverdue,
    required List<ClaimAttachment> attachments,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _ClaimRead;

  factory ClaimRead.fromJson(Map<String, dynamic> json) =>
      _$ClaimReadFromJson(json);
}
