// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripRead _$TripReadFromJson(Map<String, dynamic> json) => _TripRead(
  id: (json['id'] as num).toInt(),
  route: (json['route'] as num).toInt(),
  routeLabel: json['route_label'] as String,
  originCity: json['origin_city'] as String,
  destinationCity: json['destination_city'] as String,
  vehicle: (json['vehicle'] as num).toInt(),
  vehicleRegistration: json['vehicle_registration'] as String,
  departureTime: DateTime.parse(json['departure_time'] as String),
  arrivalTime: json['arrival_time'] == null
      ? null
      : DateTime.parse(json['arrival_time'] as String),
  price: json['price'] as String,
  availableSeats: (json['available_seats'] as num?)?.toInt(),
  status: $enumDecodeNullable(_$StatusF60EnumEnumMap, json['status']),
  statusDisplay: json['status_display'] as String,
  company: (json['company'] as num).toInt(),
  companyName: json['company_name'] as String,
  companySigle: json['company_sigle'] as String,
  companyRating: (json['company_rating'] as num?)?.toDouble(),
  isDirect: json['is_direct'] as bool,
  stopsCount: (json['stops_count'] as num).toInt(),
  durationMinutes: (json['duration_minutes'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$TripReadToJson(_TripRead instance) => <String, dynamic>{
  'id': instance.id,
  'route': instance.route,
  'route_label': instance.routeLabel,
  'origin_city': instance.originCity,
  'destination_city': instance.destinationCity,
  'vehicle': instance.vehicle,
  'vehicle_registration': instance.vehicleRegistration,
  'departure_time': instance.departureTime.toIso8601String(),
  'arrival_time': instance.arrivalTime?.toIso8601String(),
  'price': instance.price,
  'available_seats': instance.availableSeats,
  'status': _$StatusF60EnumEnumMap[instance.status],
  'status_display': instance.statusDisplay,
  'company': instance.company,
  'company_name': instance.companyName,
  'company_sigle': instance.companySigle,
  'company_rating': instance.companyRating,
  'is_direct': instance.isDirect,
  'stops_count': instance.stopsCount,
  'duration_minutes': instance.durationMinutes,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$StatusF60EnumEnumMap = {
  StatusF60Enum.scheduled: 'scheduled',
  StatusF60Enum.inProgress: 'in_progress',
  StatusF60Enum.delayed: 'delayed',
  StatusF60Enum.cancelled: 'cancelled',
  StatusF60Enum.completed: 'completed',
};
