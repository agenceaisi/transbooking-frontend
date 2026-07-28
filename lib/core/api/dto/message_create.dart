// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_create.freezed.dart';
part 'message_create.g.dart';

/// Envoi d'un message. L'objet est obligatoire pour les agents.
@freezed
abstract class MessageCreate with _$MessageCreate {
  const factory MessageCreate({
    required int recipient,
    String? subject,
    required String body,
  }) = _MessageCreate;

  factory MessageCreate.fromJson(Map<String, dynamic> json) =>
      _$MessageCreateFromJson(json);
}
