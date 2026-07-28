// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_attachment.freezed.dart';
part 'claim_attachment.g.dart';

/// Lecture d'une piece jointe (URL du fichier + metadonnees).
@freezed
abstract class ClaimAttachment with _$ClaimAttachment {
  const factory ClaimAttachment({
    required int id,
    required String file,
    @JsonKey(name: 'original_name')
    String? originalName,
    @JsonKey(name: 'content_type')
    String? contentType,
    int? size,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _ClaimAttachment;

  factory ClaimAttachment.fromJson(Map<String, dynamic> json) =>
      _$ClaimAttachmentFromJson(json);
}
