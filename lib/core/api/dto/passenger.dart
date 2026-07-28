// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger.freezed.dart';
part 'passenger.g.dart';

/// Passager d'un voyage, pour le choix d'un destinataire de message.
@freezed
abstract class Passenger with _$Passenger {
  const factory Passenger({
    required int id,
    @JsonKey(name: 'full_name')
    required String fullName,
    required String phone,
  }) = _Passenger;

  factory Passenger.fromJson(Map<String, dynamic> json) =>
      _$PassengerFromJson(json);
}
