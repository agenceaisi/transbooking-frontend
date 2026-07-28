// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_change.freezed.dart';
part 'password_change.g.dart';

/// Changement de mot de passe par l'utilisateur authentifie.
@freezed
abstract class PasswordChange with _$PasswordChange {
  const factory PasswordChange({
    @JsonKey(name: 'old_password')
    required String oldPassword,
    @JsonKey(name: 'new_password')
    required String newPassword,
  }) = _PasswordChange;

  factory PasswordChange.fromJson(Map<String, dynamic> json) =>
      _$PasswordChangeFromJson(json);
}
