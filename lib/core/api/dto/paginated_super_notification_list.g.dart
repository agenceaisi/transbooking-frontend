// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_super_notification_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedSuperNotificationList _$PaginatedSuperNotificationListFromJson(
  Map<String, dynamic> json,
) => _PaginatedSuperNotificationList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => SuperNotification.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedSuperNotificationListToJson(
  _PaginatedSuperNotificationList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
