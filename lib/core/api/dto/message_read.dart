// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_read.freezed.dart';
part 'message_read.g.dart';

/// Lecture d'un message (expediteur et destinataire resolus).
@freezed
abstract class MessageRead with _$MessageRead {
  const factory MessageRead({
    required int id,
    required int sender,
    @JsonKey(name: 'sender_name')
    required String senderName,
    required int recipient,
    @JsonKey(name: 'recipient_name')
    required String recipientName,
    String? subject,
    required String body,
    @JsonKey(name: 'is_read')
    bool? isRead,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _MessageRead;

  factory MessageRead.fromJson(Map<String, dynamic> json) =>
      _$MessageReadFromJson(json);
}
