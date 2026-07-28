// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_f60_enum.dart';

part 'trip_write.freezed.dart';
part 'trip_write.g.dart';

/// Creation/modification d'un voyage par le company admin.
/// 
/// `available_seats` est initialise depuis `vehicle.total_seats` a la creation
/// et n'est jamais fixe manuellement. `price` reprend `route.base_price` si non
/// fourni.
@freezed
abstract class TripWrite with _$TripWrite {
  const factory TripWrite({
    required int id,
    required int route,
    required int vehicle,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'arrival_time')
    DateTime? arrivalTime,
    String? price,
    StatusF60Enum? status,
    @JsonKey(name: 'cancellation_reason')
    required String cancellationReason,
  }) = _TripWrite;

  factory TripWrite.fromJson(Map<String, dynamic> json) =>
      _$TripWriteFromJson(json);
}
