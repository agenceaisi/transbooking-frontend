import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/storage/tables/outbox_tables.dart';
import '../../../../core/sync/connection_providers.dart';
import '../../../../core/sync/pending_operation.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/blinking_dot.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/primary_button.dart';
import '../agent_providers.dart';

/// Feuille « données en attente », ouverte en touchant le bandeau de connexion.
///
/// L'envoi automatique se déclenche seul au retour du réseau (moteur de
/// synchronisation, phase 5A) : la feuille n'expose qu'un bouton « Réessayer »,
/// réservé au cas où un envoi précédent a échoué.
class PendingSyncSheet extends ConsumerStatefulWidget {
  const PendingSyncSheet({
    required this.snapshot,
    required this.operations,
    super.key,
  });

  final ConnectionSnapshot snapshot;

  final List<PendingOperation> operations;

  /// Ouvre la feuille depuis le bandeau.
  static Future<void> show(
    BuildContext context, {
    required ConnectionSnapshot snapshot,
    required List<PendingOperation> operations,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) =>
          PendingSyncSheet(snapshot: snapshot, operations: operations),
    );
  }

  @override
  ConsumerState<PendingSyncSheet> createState() => _PendingSyncSheetState();
}

class _PendingSyncSheetState extends ConsumerState<PendingSyncSheet> {
  bool _isRetrying = false;

  Future<void> _retry() async {
    setState(() => _isRetrying = true);
    try {
      await ref.read(agentSyncRepositoryProvider).retryFailed();
    } finally {
      if (mounted) setState(() => _isRetrying = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final snapshot = widget.snapshot;
    final operations = widget.operations;
    final palette = AppStatusColors.of(snapshot.status.statusType);

    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.82,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.lg,
            0,
            AppSpacing.lg,
            AppSpacing.lg,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BlinkingDot.haloed(
                    color: palette.dot,
                    isBlinking: snapshot.status.isBlinking,
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      l10n.agentPendingSheetTitle,
                      style: AppTextStyles.dialogTitle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Flexible(
                child: operations.isEmpty
                    ? _AllSynced(lastSyncAt: snapshot.lastSyncAt)
                    : _PendingList(operations: operations),
              ),
              if (snapshot.lastSyncError != null) ...[
                const SizedBox(height: AppSpacing.md),
                InlineAlert(
                  type: StatusType.danger,
                  message: snapshot.lastSyncError!,
                ),
              ],
              if (snapshot.status.canRetry) ...[
                const SizedBox(height: AppSpacing.md),
                PrimaryButton(
                  label: _isRetrying
                      ? l10n.agentSyncRetrying
                      : l10n.agentSyncRetryButton,
                  icon: Icons.refresh,
                  isLoading: _isRetrying,
                  onPressed: _isRetrying ? null : _retry,
                ),
              ] else if (operations.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.md),
                InlineAlert(
                  type: StatusType.info,
                  message: l10n.agentSyncEngineNotice,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Rien à envoyer — l'agent peut travailler l'esprit tranquille.
class _AllSynced extends StatelessWidget {
  const _AllSynced({this.lastSyncAt});

  final DateTime? lastSyncAt;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const palette = AppStatusColors.success;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 58,
          height: 58,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: palette.background,
            borderRadius: AppRadii.brCard,
          ),
          child: Icon(Icons.check, size: 30, color: palette.foreground),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(l10n.agentPendingEmptyTitle, style: AppTextStyles.subtitle),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          l10n.agentPendingEmptyMessage,
          style: AppTextStyles.caption,
          textAlign: TextAlign.center,
        ),
        if (lastSyncAt != null) ...[
          const SizedBox(height: AppSpacing.xs),
          Text(
            l10n.lastUpdatedAt(
              AppTimeFormat.hourMinuteCompact(context, lastSyncAt!),
            ),
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textTertiary,
            ),
          ),
        ],
      ],
    );
  }
}

/// Liste des écritures hors ligne encore à envoyer.
class _PendingList extends StatelessWidget {
  const _PendingList({required this.operations});

  final List<PendingOperation> operations;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          l10n.agentPendingCount(operations.length),
          style: AppTextStyles.caption,
        ),
        const SizedBox(height: AppSpacing.sm),
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: operations.length,
            separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.xs),
            itemBuilder: (context, index) =>
                _PendingTile(operation: operations[index]),
          ),
        ),
      ],
    );
  }
}

class _PendingTile extends StatelessWidget {
  const _PendingTile({required this.operation});

  final PendingOperation operation;

  static IconData _iconFor(OutboxEntity entity) => switch (entity) {
    OutboxEntity.booking => Icons.person_add_alt_outlined,
    OutboxEntity.parcel => Icons.inventory_2_outlined,
    OutboxEntity.validation => Icons.how_to_reg_outlined,
    OutboxEntity.parcelNotification => Icons.notifications_active_outlined,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final label = switch (operation.entity) {
      OutboxEntity.booking => l10n.agentPendingBooking,
      OutboxEntity.parcel => l10n.agentPendingParcel,
      OutboxEntity.validation => l10n.agentPendingValidation,
      OutboxEntity.parcelNotification => l10n.agentPendingParcelNotification,
    };

    final (statusLabel, statusType) = switch (operation.status) {
      OutboxStatus.pending => (
        l10n.agentPendingStatusPending,
        StatusType.warning,
      ),
      OutboxStatus.syncing => (l10n.agentPendingStatusSyncing, StatusType.info),
      OutboxStatus.failed => (l10n.agentPendingStatusFailed, StatusType.danger),
      OutboxStatus.synced => (
        l10n.agentPendingStatusPending,
        StatusType.neutral,
      ),
    };
    final palette = AppStatusColors.of(statusType);

    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm + 1),
      decoration: const BoxDecoration(
        color: AppColors.surfaceSubtle,
        borderRadius: AppRadii.brLg,
        border: AppBorders.card,
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.surface,
              borderRadius: AppRadii.brCard,
              border: AppBorders.card,
            ),
            child: Icon(
              _iconFor(operation.entity),
              size: AppSizes.iconSm,
              color: AppColors.primary900,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: AppTypography.sans(
                    size: 13.5,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.xxs / 2),
                Text(
                  // La référence est la clé d'idempotence : elle vaut mieux
                  // qu'un libellé approximatif pour retrouver la saisie.
                  '${operation.reference} · '
                  '${AppTimeFormat.relative(l10n, operation.createdAt)}',
                  style: AppTextStyles.referenceSmall.copyWith(
                    fontSize: 11.5,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.xs),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.xs + 2,
              vertical: AppSpacing.xxs / 2,
            ),
            decoration: BoxDecoration(
              color: palette.background,
              borderRadius: AppRadii.brPill,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlinkingDot(
                  color: palette.dot,
                  size: AppSizes.statusDot - 2,
                  isBlinking: operation.status == OutboxStatus.syncing,
                ),
                const SizedBox(width: AppSpacing.xxs + 2),
                Text(
                  statusLabel,
                  style: AppTypography.sans(
                    size: 11,
                    weight: FontWeight.w600,
                    color: palette.foreground,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
