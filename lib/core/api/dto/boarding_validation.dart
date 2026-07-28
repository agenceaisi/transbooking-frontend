// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'boarding_validation_method_enum.dart';

part 'boarding_validation.freezed.dart';
part 'boarding_validation.g.dart';

/// Lecture d'un embarquement.
@freezed
abstract class BoardingValidation with _$BoardingValidation {
  const factory BoardingValidation({
    required int id,
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    @JsonKey(name: 'passenger_name')
    required String passengerName,
    BoardingValidationMethodEnum? method,
    @JsonKey(name: 'method_display')
    required String methodDisplay,
    @JsonKey(name: 'boarded_at')
    required DateTime boardedAt,
    @JsonKey(name: 'is_offline')
    bool? isOffline,
  }) = _BoardingValidation;

  factory BoardingValidation.fromJson(Map<String, dynamic> json) =>
      _$BoardingValidationFromJson(json);
}
