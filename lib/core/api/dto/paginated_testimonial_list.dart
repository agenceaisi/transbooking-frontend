// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'testimonial.dart';

part 'paginated_testimonial_list.freezed.dart';
part 'paginated_testimonial_list.g.dart';

@freezed
abstract class PaginatedTestimonialList with _$PaginatedTestimonialList {
  const factory PaginatedTestimonialList({
    required int count,
    String? next,
    String? previous,
    required List<Testimonial> results,
  }) = _PaginatedTestimonialList;

  factory PaginatedTestimonialList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedTestimonialListFromJson(json);
}
