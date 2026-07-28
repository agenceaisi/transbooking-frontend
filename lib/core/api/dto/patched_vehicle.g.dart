// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedVehicle _$PatchedVehicleFromJson(Map<String, dynamic> json) =>
    _PatchedVehicle(
      id: (json['id'] as num?)?.toInt(),
      registration: json['registration'] as String?,
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      vehicleType: json['vehicle_type'] as String?,
      totalSeats: (json['total_seats'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$VehicleStatusEnumEnumMap, json['status']),
      statusDisplay: json['status_display'] as String?,
      seatPlan: json['seat_plan'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PatchedVehicleToJson(_PatchedVehicle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registration': instance.registration,
      'brand': instance.brand,
      'model': instance.model,
      'vehicle_type': instance.vehicleType,
      'total_seats': instance.totalSeats,
      'status': _$VehicleStatusEnumEnumMap[instance.status],
      'status_display': instance.statusDisplay,
      'seat_plan': instance.seatPlan,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$VehicleStatusEnumEnumMap = {
  VehicleStatusEnum.active: 'active',
  VehicleStatusEnum.maintenance: 'maintenance',
  VehicleStatusEnum.inactive: 'inactive',
};
