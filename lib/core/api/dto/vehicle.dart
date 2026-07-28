// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle_status_enum.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

/// Vehicule d'une compagnie. `company` est deduite de l'utilisateur courant.
@freezed
abstract class Vehicle with _$Vehicle {
  const factory Vehicle({
    required int id,
    required String registration,
    String? brand,
    String? model,
    @JsonKey(name: 'vehicle_type')
    String? vehicleType,
    @JsonKey(name: 'total_seats')
    required int totalSeats,
    required VehicleStatusEnum status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    @JsonKey(name: 'seat_plan')
    required dynamic seatPlan,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
