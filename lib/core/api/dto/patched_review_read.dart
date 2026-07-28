// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_review_read.freezed.dart';
part 'patched_review_read.g.dart';

/// Lecture d'un avis (public et admin).
@freezed
abstract class PatchedReviewRead with _$PatchedReviewRead {
  const factory PatchedReviewRead({
    int? id,
    int? company,
    @JsonKey(name: 'company_name')
    String? companyName,
    int? trip,
    String? author,
    int? rating,
    String? comment,
    String? response,
    @JsonKey(name: 'responded_at')
    DateTime? respondedAt,
    @JsonKey(name: 'is_flagged')
    bool? isFlagged,
    @JsonKey(name: 'is_testimonial')
    bool? isTestimonial,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
  }) = _PatchedReviewRead;

  factory PatchedReviewRead.fromJson(Map<String, dynamic> json) =>
      _$PatchedReviewReadFromJson(json);
}
