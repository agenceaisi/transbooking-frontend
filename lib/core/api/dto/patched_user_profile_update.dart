// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_user_profile_update.freezed.dart';
part 'patched_user_profile_update.g.dart';

@freezed
abstract class PatchedUserProfileUpdate with _$PatchedUserProfileUpdate {
  const factory PatchedUserProfileUpdate({
    String? phone,
    String? email,
  }) = _PatchedUserProfileUpdate;

  factory PatchedUserProfileUpdate.fromJson(Map<String, dynamic> json) =>
      _$PatchedUserProfileUpdateFromJson(json);
}
