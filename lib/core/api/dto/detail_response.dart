// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_response.freezed.dart';
part 'detail_response.g.dart';

/// Reponse generique {"detail": "..."} (documentation OpenAPI).
@freezed
abstract class DetailResponse with _$DetailResponse {
  const factory DetailResponse({
    required String detail,
  }) = _DetailResponse;

  factory DetailResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailResponseFromJson(json);
}
