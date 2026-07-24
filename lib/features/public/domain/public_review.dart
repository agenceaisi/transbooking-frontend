import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_review.freezed.dart';

/// Avis public affiché sur la fiche d'une compagnie.
///
/// Issu de `GET /reviews/?company_id=` (`ReviewRead`). L'`author` est déjà
/// anonymisé côté serveur (prénom + initiale). La réponse de la compagnie, si
/// elle existe, s'affiche en dessous.
@freezed
abstract class PublicReview with _$PublicReview {
  const factory PublicReview({
    required int id,
    required String author,
    required int rating,
    String? comment,
    String? response,
    DateTime? respondedAt,
    required DateTime createdAt,
  }) = _PublicReview;

  const PublicReview._();

  bool get hasResponse => response != null && response!.trim().isNotEmpty;
}
