// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_summary.dart';
import 'traveler_next_trip.dart';

part 'traveler_dashboard.freezed.dart';
part 'traveler_dashboard.g.dart';

@freezed
abstract class TravelerDashboard with _$TravelerDashboard {
  const factory TravelerDashboard({
    @JsonKey(name: 'next_trips')
    required List<TravelerNextTrip> nextTrips,
    @JsonKey(name: 'active_bookings_count')
    required int activeBookingsCount,
    @JsonKey(name: 'pending_count')
    required int pendingCount,
    @JsonKey(name: 'paid_count')
    required int paidCount,
    @JsonKey(name: 'cancelled_count')
    required int cancelledCount,
    @JsonKey(name: 'recent_notifications')
    required List<NotificationSummary> recentNotifications,
  }) = _TravelerDashboard;

  factory TravelerDashboard.fromJson(Map<String, dynamic> json) =>
      _$TravelerDashboardFromJson(json);
}
