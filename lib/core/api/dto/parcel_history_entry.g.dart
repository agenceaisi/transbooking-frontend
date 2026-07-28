// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_history_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParcelHistoryEntry _$ParcelHistoryEntryFromJson(Map<String, dynamic> json) =>
    _ParcelHistoryEntry(
      status: $enumDecode(_$Status62aEnumEnumMap, json['status']),
      statusDisplay: json['status_display'] as String,
      location: json['location'] as String?,
      timestamp: DateTime.parse(json['timestamp'] as String),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$ParcelHistoryEntryToJson(_ParcelHistoryEntry instance) =>
    <String, dynamic>{
      'status': _$Status62aEnumEnumMap[instance.status]!,
      'status_display': instance.statusDisplay,
      'location': instance.location,
      'timestamp': instance.timestamp.toIso8601String(),
      'note': instance.note,
    };

const _$Status62aEnumEnumMap = {
  Status62aEnum.registered: 'registered',
  Status62aEnum.inTransit: 'in_transit',
  Status62aEnum.arrived: 'arrived',
  Status62aEnum.notified: 'notified',
  Status62aEnum.collected: 'collected',
};
