// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveler_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelerDashboard _$TravelerDashboardFromJson(Map<String, dynamic> json) =>
    _TravelerDashboard(
      nextTrips: (json['next_trips'] as List<dynamic>)
          .map((e) => TravelerNextTrip.fromJson(e as Map<String, dynamic>))
          .toList(),
      activeBookingsCount: (json['active_bookings_count'] as num).toInt(),
      pendingCount: (json['pending_count'] as num).toInt(),
      paidCount: (json['paid_count'] as num).toInt(),
      cancelledCount: (json['cancelled_count'] as num).toInt(),
      recentNotifications: (json['recent_notifications'] as List<dynamic>)
          .map((e) => NotificationSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TravelerDashboardToJson(_TravelerDashboard instance) =>
    <String, dynamic>{
      'next_trips': instance.nextTrips,
      'active_bookings_count': instance.activeBookingsCount,
      'pending_count': instance.pendingCount,
      'paid_count': instance.paidCount,
      'cancelled_count': instance.cancelledCount,
      'recent_notifications': instance.recentNotifications,
    };
