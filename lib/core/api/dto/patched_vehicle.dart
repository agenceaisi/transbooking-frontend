// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle_status_enum.dart';

part 'patched_vehicle.freezed.dart';
part 'patched_vehicle.g.dart';

/// Vehicule d'une compagnie. `company` est deduite de l'utilisateur courant.
@freezed
abstract class PatchedVehicle with _$PatchedVehicle {
  const factory PatchedVehicle({
    int? id,
    String? registration,
    String? brand,
    String? model,
    @JsonKey(name: 'vehicle_type')
    String? vehicleType,
    @JsonKey(name: 'total_seats')
    int? totalSeats,
    VehicleStatusEnum? status,
    @JsonKey(name: 'status_display')
    String? statusDisplay,
    @JsonKey(name: 'seat_plan')
    dynamic seatPlan,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _PatchedVehicle;

  factory PatchedVehicle.fromJson(Map<String, dynamic> json) =>
      _$PatchedVehicleFromJson(json);
}
