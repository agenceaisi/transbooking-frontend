// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_create.freezed.dart';
part 'review_create.g.dart';

/// Depot d'un avis par un voyageur (validation metier dans le service).
@freezed
abstract class ReviewCreate with _$ReviewCreate {
  const factory ReviewCreate({
    required int trip,
    required int rating,
    String? comment,
  }) = _ReviewCreate;

  factory ReviewCreate.fromJson(Map<String, dynamic> json) =>
      _$ReviewCreateFromJson(json);
}
