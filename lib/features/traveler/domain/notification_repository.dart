import 'app_notification.dart';

/// Notifications in-app du voyageur (guide §6.14).
abstract interface class NotificationRepository {
  /// `GET /notifications/` — mes notifications, non lues en premier.
  Future<List<AppNotification>> list();

  /// `POST /notifications/{id}/read/` — marque une notification comme lue.
  Future<void> markRead(int id);

  /// `POST /notifications/read-all/` — tout marquer comme lu ; renvoie le
  /// nombre de notifications mises à jour.
  Future<int> markAllRead();
}
