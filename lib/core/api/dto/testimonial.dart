// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'testimonial.freezed.dart';
part 'testimonial.g.dart';

/// Temoignage valide, affiche sur la page d'accueil publique.
@freezed
abstract class Testimonial with _$Testimonial {
  const factory Testimonial({
    required int id,
    required int company,
    @JsonKey(name: 'company_name')
    required String companyName,
    required String author,
    required int rating,
    String? comment,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _Testimonial;

  factory Testimonial.fromJson(Map<String, dynamic> json) =>
      _$TestimonialFromJson(json);
}
