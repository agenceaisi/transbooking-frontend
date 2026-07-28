// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle.dart';

part 'paginated_vehicle_list.freezed.dart';
part 'paginated_vehicle_list.g.dart';

@freezed
abstract class PaginatedVehicleList with _$PaginatedVehicleList {
  const factory PaginatedVehicleList({
    required int count,
    String? next,
    String? previous,
    required List<Vehicle> results,
  }) = _PaginatedVehicleList;

  factory PaginatedVehicleList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedVehicleListFromJson(json);
}
