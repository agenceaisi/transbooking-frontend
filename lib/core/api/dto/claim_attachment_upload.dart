// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_attachment_upload.freezed.dart';
part 'claim_attachment_upload.g.dart';

/// Ajout d'une piece jointe a une reclamation existante (multipart).
@freezed
abstract class ClaimAttachmentUpload with _$ClaimAttachmentUpload {
  const factory ClaimAttachmentUpload({
    required String file,
  }) = _ClaimAttachmentUpload;

  factory ClaimAttachmentUpload.fromJson(Map<String, dynamic> json) =>
      _$ClaimAttachmentUploadFromJson(json);
}
