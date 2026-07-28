import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/agent_dashboard.dart' show TripStatus;
import '../../domain/agent_schedule.dart';
import '../../domain/agent_trip.dart';
import '../agent_schedule_controller.dart';
import '../widgets/agent_filter_dropdown.dart';
import '../widgets/agent_task_scaffold.dart';

/// Programme du jour — planning des départs de l'agent (guide §6.6).
///
/// L'API ne renvoie que le voyage du **jour courant**
/// (`GET /agent/trips/today/`, sans paramètre de date) : le sélecteur de date
/// de la maquette (Aujourd'hui / Demain / …) n'a donc aucune source pour les
/// autres jours et n'est pas reproduit — signalé plutôt qu'inventé
/// (CLAUDE.md §0). Le champ « chauffeur » de la maquette n'a lui non plus
/// aucun champ d'API (cf. mémoire du projet, phase 3, point 7) : omis.
class AgentScheduleScreen extends ConsumerStatefulWidget {
  const AgentScheduleScreen({super.key});

  @override
  ConsumerState<AgentScheduleScreen> createState() =>
      _AgentScheduleScreenState();
}

class _AgentScheduleScreenState extends ConsumerState<AgentScheduleScreen> {
  String? _destFilter;
  String? _vehicleFilter;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final schedule = ref.watch(agentScheduleControllerProvider);

    return AgentTaskScaffold(
      title: l10n.agentScheduleTitle,
      actions: [
        IconButton(
          onPressed: () =>
              ref.read(agentScheduleControllerProvider.notifier).refresh(),
          icon: const Icon(Icons.refresh, color: AppColors.white),
          tooltip: l10n.actionRefresh,
        ),
      ],
      child: RefreshIndicator(
        onRefresh: () =>
            ref.read(agentScheduleControllerProvider.notifier).refresh(),
        child: switch (schedule) {
          AsyncValue(:final value?) => _ScheduleBody(
            snapshot: value,
            destFilter: _destFilter,
            vehicleFilter: _vehicleFilter,
            onDestFilter: (value) => setState(() => _destFilter = value),
            onVehicleFilter: (value) => setState(() => _vehicleFilter = value),
          ),
          AsyncValue(:final error?) => ListView(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: ErrorState(
                  message: error.toString(),
                  onRetry: () => ref
                      .read(agentScheduleControllerProvider.notifier)
                      .refresh(),
                ),
              ),
            ],
          ),
          _ => ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: const [
              LoadingSkeleton(height: 72, borderRadius: AppRadii.brCard),
              SizedBox(height: AppSpacing.md),
              LoadingSkeleton(height: 100, borderRadius: AppRadii.brCard),
              SizedBox(height: AppSpacing.sm),
              LoadingSkeleton(height: 100, borderRadius: AppRadii.brCard),
            ],
          ),
        },
      ),
    );
  }
}

class _ScheduleBody extends StatelessWidget {
  const _ScheduleBody({
    required this.snapshot,
    required this.destFilter,
    required this.vehicleFilter,
    required this.onDestFilter,
    required this.onVehicleFilter,
  });

  final AgentScheduleSnapshot snapshot;
  final String? destFilter;
  final String? vehicleFilter;
  final ValueChanged<String?> onDestFilter;
  final ValueChanged<String?> onVehicleFilter;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final destinations = {for (final t in snapshot.trips) t.destinationCity}
        .toList(growable: false)
      ..sort();
    final vehicles =
        {
              for (final t in snapshot.trips)
                if (t.vehicleRegistration != null) t.vehicleRegistration!,
            }.toList(growable: false)
          ..sort();

    final filtered =
        snapshot.trips.where((trip) {
            if (destFilter != null && trip.destinationCity != destFilter) {
              return false;
            }
            if (vehicleFilter != null &&
                trip.vehicleRegistration != vehicleFilter) {
              return false;
            }
            return true;
          }).toList(growable: false)
          ..sort((a, b) => a.departureTime.compareTo(b.departureTime));

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        if (snapshot.isFromCache)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: Text(
              l10n.lastUpdatedAt(
                AppTimeFormat.hourMinuteCompact(context, snapshot.cachedAt!),
              ),
              style: AppTextStyles.caption,
            ),
          ),
        Row(
          children: [
            Expanded(
              child: AgentFilterDropdown(
                hint: l10n.agentScheduleFilterDestination,
                value: destFilter,
                options: destinations,
                onChanged: onDestFilter,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: AgentFilterDropdown(
                hint: l10n.agentScheduleFilterVehicle,
                value: vehicleFilter,
                options: vehicles,
                onChanged: onVehicleFilter,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        if (filtered.isEmpty)
          EmptyState(
            icon: Icons.event_busy_outlined,
            title: l10n.agentScheduleEmptyTitle,
            message: l10n.agentScheduleEmptyMessage,
          )
        else
          for (final trip in filtered) ...[
            _TripCard(trip: trip),
            const SizedBox(height: AppSpacing.sm),
          ],
      ],
    );
  }
}

class _TripCard extends StatelessWidget {
  const _TripCard({required this.trip});

  final AgentTrip trip;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cancelled = trip.isCancelled;

    return Opacity(
      opacity: cancelled ? 0.55 : 1,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadii.brCard,
          border: AppBorders.card,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 56,
                  child: Text(
                    AppTimeFormat.hourMinute(context, trip.departureTime),
                    style: AppTextStyles.kpi.copyWith(fontSize: 19),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: AppSpacing.xs,
                    runSpacing: AppSpacing.xxs,
                    children: [
                      Text(
                        trip.destinationCity,
                        style: AppTextStyles.bodyStrong,
                      ),
                      if (trip.status != null)
                        StatusBadge(
                          label: _statusLabel(l10n, trip.status!),
                          type: _statusType(trip.status!),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            if (trip.vehicleRegistration != null) ...[
              const SizedBox(height: AppSpacing.xxs),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: Text(
                  trip.vehicleRegistration!,
                  style: AppTextStyles.reference,
                ),
              ),
            ],
            const SizedBox(height: AppSpacing.sm),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.xs,
              children: [
                StatusBadge(
                  label: trip.isFull
                      ? l10n.agentSeatsFull
                      : l10n.agentSeatsAvailable(trip.availableSeats ?? 0),
                  type: trip.isFull ? StatusType.danger : StatusType.success,
                  showDot: false,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: AppSpacing.xs,
                  runSpacing: AppSpacing.xs,
                  children: [
                    TextButton(
                      onPressed: () => context.push(
                        AppRoutes.agentBoardingListPath(trip.id),
                      ),
                      child: Text(l10n.agentSchedulePassengerList),
                    ),
                    if (!cancelled && !trip.isFull)
                      FilledButton(
                        onPressed: () => context.push(
                          AppRoutes.agentNewPassenger,
                          extra: trip,
                        ),
                        child: Text(l10n.agentScheduleAddPassenger),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static String _statusLabel(AppLocalizations l10n, TripStatus status) =>
      switch (status) {
        TripStatus.scheduled => l10n.agentTripStatusScheduled,
        TripStatus.inProgress => l10n.agentTripStatusInProgress,
        TripStatus.delayed => l10n.agentDepartureDelayed,
        TripStatus.cancelled => l10n.agentDepartureCancelled,
        TripStatus.completed => l10n.agentTripStatusCompleted,
      };

  static StatusType _statusType(TripStatus status) => switch (status) {
    TripStatus.scheduled => StatusType.info,
    TripStatus.inProgress => StatusType.success,
    TripStatus.delayed => StatusType.warning,
    TripStatus.cancelled => StatusType.neutral,
    TripStatus.completed => StatusType.neutral,
  };
}
