// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_read.freezed.dart';
part 'review_read.g.dart';

/// Lecture d'un avis (public et admin).
@freezed
abstract class ReviewRead with _$ReviewRead {
  const factory ReviewRead({
    required int id,
    required int company,
    @JsonKey(name: 'company_name')
    required String companyName,
    required int trip,
    required String author,
    required int rating,
    String? comment,
    String? response,
    @JsonKey(name: 'responded_at')
    DateTime? respondedAt,
    @JsonKey(name: 'is_flagged')
    bool? isFlagged,
    @JsonKey(name: 'is_testimonial')
    bool? isTestimonial,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _ReviewRead;

  factory ReviewRead.fromJson(Map<String, dynamic> json) =>
      _$ReviewReadFromJson(json);
}
