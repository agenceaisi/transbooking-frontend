// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_offline_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentOfflineData _$AgentOfflineDataFromJson(Map<String, dynamic> json) =>
    _AgentOfflineData(
      trips: (json['trips'] as List<dynamic>)
          .map((e) => OfflineTrip.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookings: (json['bookings'] as List<dynamic>)
          .map((e) => OfflineBookingRead.fromJson(e as Map<String, dynamic>))
          .toList(),
      parcelArrivals: (json['parcel_arrivals'] as List<dynamic>)
          .map((e) => OfflineParcelRead.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AgentOfflineDataToJson(_AgentOfflineData instance) =>
    <String, dynamic>{
      'trips': instance.trips,
      'bookings': instance.bookings,
      'parcel_arrivals': instance.parcelArrivals,
    };
