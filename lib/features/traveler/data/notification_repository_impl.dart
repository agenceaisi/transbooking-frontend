import '../domain/app_notification.dart';
import '../domain/notification_repository.dart';
import 'notification_remote_data_source.dart';
import 'traveler_mappers.dart';

/// Implémentation de [NotificationRepository].
class NotificationRepositoryImpl implements NotificationRepository {
  const NotificationRepositoryImpl(this._remote);

  final NotificationRemoteDataSource _remote;

  @override
  Future<List<AppNotification>> list() async {
    final notifications = await _remote.list();
    return notifications
        .map((notification) => notification.toEntity())
        .toList(growable: false);
  }

  @override
  Future<void> markRead(int id) => _remote.markRead(id);

  @override
  Future<int> markAllRead() => _remote.markAllRead();
}
