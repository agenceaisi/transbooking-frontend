import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/network_providers.dart';
import '../../../core/storage/database_provider.dart';
import '../../../core/sync/outbox_writer.dart';
import '../data/agent_boarding_repository_impl.dart';
import '../data/agent_booking_remote_data_source.dart';
import '../data/agent_booking_repository_impl.dart';
import '../data/agent_control_remote_data_source.dart';
import '../data/agent_dashboard_cache.dart';
import '../data/agent_dashboard_repository_impl.dart';
import '../data/agent_parcel_remote_data_source.dart';
import '../data/agent_parcel_repository_impl.dart';
import '../data/agent_remote_data_source.dart';
import '../data/agent_scan_repository_impl.dart';
import '../data/agent_schedule_repository_impl.dart';
import '../data/agent_sync_remote_data_source.dart';
import '../data/agent_sync_repository_impl.dart';
import '../domain/agent_booking_repository.dart';
import '../domain/agent_dashboard_repository.dart';
import '../domain/agent_parcel_repository.dart';
import '../domain/agent_schedule_repository.dart';
import '../domain/agent_sync_repository.dart';
import '../domain/boarding_repository.dart';
import '../domain/scan_repository.dart';
import '../domain/seat_correction.dart';

/// Source de données HTTP du module agent.
final agentRemoteDataSourceProvider = Provider<AgentRemoteDataSource>(
  (ref) => AgentRemoteDataSource(ref.watch(dioProvider)),
);

/// Cache local du tableau de bord (Drift).
final agentDashboardCacheProvider = Provider<AgentDashboardCache>(
  (ref) => AgentDashboardCache(ref.watch(localDatabaseProvider)),
);

/// Dépôt du tableau de bord — seul point d'entrée de la présentation.
final agentDashboardRepositoryProvider = Provider<AgentDashboardRepository>(
  (ref) => AgentDashboardRepositoryImpl(
    remote: ref.watch(agentRemoteDataSourceProvider),
    cache: ref.watch(agentDashboardCacheProvider),
  ),
);

/// Source de données HTTP de la synchronisation hors ligne (guide §6.15).
final agentSyncRemoteDataSourceProvider = Provider<AgentSyncRemoteDataSource>(
  (ref) => AgentSyncRemoteDataSource(ref.watch(dioProvider)),
);

/// File d'écritures hors ligne (Drift) — utilisée par les écrans de saisie
/// des phases 5B et 5C pour mettre en attente une réservation, un colis ou un
/// embarquement.
final outboxWriterProvider = Provider<OutboxWriter>(
  (ref) => OutboxWriter(ref.watch(localDatabaseProvider)),
);

/// Moteur de synchronisation — seul point d'entrée de la présentation pour le
/// socle hors ligne.
final agentSyncRepositoryProvider = Provider<AgentSyncRepository>(
  (ref) => AgentSyncRepositoryImpl(
    database: ref.watch(localDatabaseProvider),
    remote: ref.watch(agentSyncRemoteDataSourceProvider),
  ),
);

/// Programme du jour — voyages de l'agent (guide §6.6).
final agentScheduleRepositoryProvider = Provider<AgentScheduleRepository>(
  (ref) => AgentScheduleRepositoryImpl(
    remote: ref.watch(agentRemoteDataSourceProvider),
    database: ref.watch(localDatabaseProvider),
  ),
);

/// Source de données HTTP de l'enregistrement d'un passager (guide §6.7).
final agentBookingRemoteDataSourceProvider =
    Provider<AgentBookingRemoteDataSource>(
      (ref) => AgentBookingRemoteDataSource(ref.watch(dioProvider)),
    );

/// Enregistrement d'un passager au guichet.
final agentBookingRepositoryProvider = Provider<AgentBookingRepository>(
  (ref) => AgentBookingRepositoryImpl(
    remote: ref.watch(agentBookingRemoteDataSourceProvider),
    outbox: ref.watch(outboxWriterProvider),
  ),
);

/// Source de données HTTP des colis au guichet (guide §6.9).
final agentParcelRemoteDataSourceProvider =
    Provider<AgentParcelRemoteDataSource>(
      (ref) => AgentParcelRemoteDataSource(ref.watch(dioProvider)),
    );

/// Colis au guichet : enregistrement, arrivées, notification.
final agentParcelRepositoryProvider = Provider<AgentParcelRepository>(
  (ref) => AgentParcelRepositoryImpl(
    remote: ref.watch(agentParcelRemoteDataSourceProvider),
    outbox: ref.watch(outboxWriterProvider),
  ),
);

/// Sièges réattribués à la synchronisation — alimente la modale « billet
/// corrigé » (guide §6.15).
final seatCorrectionsProvider = StreamProvider<SeatCorrection>(
  (ref) => ref.watch(agentSyncRepositoryProvider).seatCorrections,
);

/// Source de données HTTP du contrôleur — scan et embarquement (guide §6.7).
final agentControlRemoteDataSourceProvider =
    Provider<AgentControlRemoteDataSource>(
      (ref) => AgentControlRemoteDataSource(ref.watch(dioProvider)),
    );

/// Liste des passagers et pointage d'embarquement d'un voyage (phase 5C).
final boardingRepositoryProvider = Provider<BoardingRepository>(
  (ref) => AgentBoardingRepositoryImpl(
    database: ref.watch(localDatabaseProvider),
    controlRemote: ref.watch(agentControlRemoteDataSourceProvider),
    bookingRemote: ref.watch(agentBookingRemoteDataSourceProvider),
    bookingRepository: ref.watch(agentBookingRepositoryProvider),
    outbox: ref.watch(outboxWriterProvider),
  ),
);

/// Scan de billet à l'embarquement (phase 5C).
final scanRepositoryProvider = Provider<ScanRepository>(
  (ref) => AgentScanRepositoryImpl(
    remote: ref.watch(agentControlRemoteDataSourceProvider),
    database: ref.watch(localDatabaseProvider),
    boardingRepository: ref.watch(boardingRepositoryProvider),
  ),
);
