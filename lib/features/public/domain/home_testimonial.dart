import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_testimonial.freezed.dart';

/// Témoignage mis en avant sur la page d'accueil.
///
/// Issu de `GET /public/testimonials/` (`Testimonial`) : sélection réservée au
/// super admin (guide §6.12).
@freezed
abstract class HomeTestimonial with _$HomeTestimonial {
  const factory HomeTestimonial({
    required int id,
    required String author,
    required String companyName,
    required int rating,
    String? comment,
  }) = _HomeTestimonial;

  const HomeTestimonial._();

  /// Initiales de l'auteur pour l'avatar (« Aminata O. » → « AO »).
  String get initials {
    final words = author.trim().split(RegExp(r'\s+'))
      ..removeWhere((word) => word.isEmpty);
    if (words.isEmpty) return '?';
    return words.take(2).map((word) => word[0]).join().toUpperCase();
  }
}
