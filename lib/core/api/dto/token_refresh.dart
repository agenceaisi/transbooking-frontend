// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_refresh.freezed.dart';
part 'token_refresh.g.dart';

@freezed
abstract class TokenRefresh with _$TokenRefresh {
  const factory TokenRefresh({
    required String access,
    required String refresh,
  }) = _TokenRefresh;

  factory TokenRefresh.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshFromJson(json);
}
