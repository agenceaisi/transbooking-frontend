// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trans_booking_token_obtain_pair.freezed.dart';
part 'trans_booking_token_obtain_pair.g.dart';

@freezed
abstract class TransBookingTokenObtainPair with _$TransBookingTokenObtainPair {
  const factory TransBookingTokenObtainPair({
    required String phone,
    required String password,
  }) = _TransBookingTokenObtainPair;

  factory TransBookingTokenObtainPair.fromJson(Map<String, dynamic> json) =>
      _$TransBookingTokenObtainPairFromJson(json);
}
