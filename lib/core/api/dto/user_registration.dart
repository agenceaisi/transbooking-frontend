// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration.freezed.dart';
part 'user_registration.g.dart';

@freezed
abstract class UserRegistration with _$UserRegistration {
  const factory UserRegistration({
    required String prenom,
    required String nom,
    required String phone,
    required String password,
    String? email,
  }) = _UserRegistration;

  factory UserRegistration.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationFromJson(json);
}
