// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout.freezed.dart';
part 'logout.g.dart';

@freezed
abstract class Logout with _$Logout {
  const factory Logout({
    required String refresh,
  }) = _Logout;

  factory Logout.fromJson(Map<String, dynamic> json) =>
      _$LogoutFromJson(json);
}
