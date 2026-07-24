import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';

/// Catégorie d'une notification in-app (guide §5, `NotificationType`).
///
/// Redéclarée dans le domaine pour choisir une icône ; [unknown] couvre une
/// valeur future non prévue plutôt que de planter.
enum NotificationKind {
  booking('booking'),
  payment('payment'),
  parcel('parcel'),
  claim('claim'),
  review('review'),
  trip('trip'),
  message('message'),
  system('system'),
  unknown('');

  const NotificationKind(this.wire);

  final String wire;

  static NotificationKind fromWire(String? wire) {
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return NotificationKind.unknown;
  }
}

/// Notification in-app de l'utilisateur courant (`GET /notifications/`,
/// guide §6.14).
@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    required int id,
    required NotificationKind kind,
    required String typeDisplay,
    required String title,
    required String body,
    required bool isRead,
    required DateTime createdAt,
  }) = _AppNotification;
}
