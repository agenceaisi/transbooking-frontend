// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'testimonial_toggle.freezed.dart';
part 'testimonial_toggle.g.dart';

/// Mise en avant (ou retrait) d'un avis en temoignage par le super admin.
@freezed
abstract class TestimonialToggle with _$TestimonialToggle {
  const factory TestimonialToggle({
    @JsonKey(name: 'is_testimonial')
    bool? isTestimonial,
  }) = _TestimonialToggle;

  factory TestimonialToggle.fromJson(Map<String, dynamic> json) =>
      _$TestimonialToggleFromJson(json);
}
