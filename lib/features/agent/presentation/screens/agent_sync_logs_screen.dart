import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/sync_log_entry.dart';
import '../agent_sync_logs_controller.dart';
import '../widgets/agent_task_scaffold.dart';

/// Historique des synchronisations (`GET /agent/sync/logs/`, guide §6.15).
class AgentSyncLogsScreen extends ConsumerWidget {
  const AgentSyncLogsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final logs = ref.watch(agentSyncLogsControllerProvider);

    return AgentTaskScaffold(
      title: l10n.agentSyncLogsTitle,
      child: RefreshIndicator(
        onRefresh: () =>
            ref.read(agentSyncLogsControllerProvider.notifier).refresh(),
        child: switch (logs) {
          AsyncValue(:final value?) => value.isEmpty
              ? ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      child: EmptyState(
                        icon: Icons.history,
                        title: l10n.agentSyncLogsEmptyTitle,
                        message: l10n.agentSyncLogsEmptyMessage,
                      ),
                    ),
                  ],
                )
              : ListView(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  children: [
                    for (final log in value) ...[
                      _SyncLogCard(log: log),
                      const SizedBox(height: AppSpacing.sm),
                    ],
                  ],
                ),
          AsyncValue(:final error?) => ListView(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: ErrorState(
                  message: error.toString(),
                  onRetry: () => ref
                      .read(agentSyncLogsControllerProvider.notifier)
                      .refresh(),
                ),
              ),
            ],
          ),
          _ => ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: const [
              LoadingSkeleton(height: 90, borderRadius: AppRadii.brCard),
              SizedBox(height: AppSpacing.sm),
              LoadingSkeleton(height: 90, borderRadius: AppRadii.brCard),
            ],
          ),
        },
      ),
    );
  }
}

class _SyncLogCard extends StatelessWidget {
  const _SyncLogCard({required this.log});

  final SyncLogEntry log;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
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
            children: [
              Expanded(
                child: Text(
                  AppTimeFormat.mediumDateTime(context, log.createdAt),
                  style: AppTextStyles.bodyStrong,
                ),
              ),
              _badge(l10n),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(_summary(l10n), style: AppTextStyles.caption),
        ],
      ),
    );
  }

  Widget _badge(AppLocalizations l10n) {
    if (log.errorsCount > 0) {
      return StatusBadge(
        label: l10n.agentSyncLogsBadgeErrors(log.errorsCount),
        type: StatusType.danger,
      );
    }
    if (log.conflictsCount > 0) {
      return StatusBadge(
        label: l10n.agentSyncLogsBadgeConflicts(log.conflictsCount),
        type: StatusType.warning,
      );
    }
    return StatusBadge(
      label: l10n.agentSyncLogsBadgeOk,
      type: StatusType.success,
    );
  }

  String _summary(AppLocalizations l10n) {
    final parts = <String>[
      if (log.bookingsSynced > 0) l10n.agentSyncLogsBookingsCount(log.bookingsSynced),
      if (log.parcelsSynced > 0) l10n.agentSyncLogsParcelsCount(log.parcelsSynced),
      if (log.validationsSynced > 0)
        l10n.agentSyncLogsValidationsCount(log.validationsSynced),
      if (log.parcelNotificationsSynced > 0)
        l10n.agentSyncLogsNotificationsCount(log.parcelNotificationsSynced),
    ];
    return parts.isEmpty ? l10n.agentSyncLogsNoWrites : parts.join(' · ');
  }
}
