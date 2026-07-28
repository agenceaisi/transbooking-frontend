// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_booking_read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedBookingReadList _$PaginatedBookingReadListFromJson(
  Map<String, dynamic> json,
) => _PaginatedBookingReadList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => BookingRead.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedBookingReadListToJson(
  _PaginatedBookingReadList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
