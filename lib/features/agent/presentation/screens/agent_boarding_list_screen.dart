import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/sync/connection_providers.dart';
import '../../../../core/sync/connection_status.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../domain/boarding_passenger.dart';
import '../../domain/boarding_roster.dart';
import '../boarding_list_controller.dart';
import '../widgets/agent_task_scaffold.dart';
import '../widgets/board_all_dialog.dart';
import '../widgets/last_minute_passenger_dialog.dart';
import '../widgets/validate_boarding_dialog.dart';

/// Liste des passagers et embarquement d'un voyage (maquette « Liste
/// passagers & Embarquement », phase 5C).
///
/// Aucun endpoint ne relit l'état d'embarquement d'un voyage (mémoire du
/// projet, point 5) : la liste et ses compteurs viennent entièrement du
/// paquet du jour et du journal local des embarquements confirmés
/// (`BoardingRoster`, `core/storage/tables/boarding_tables.dart`).
class AgentBoardingListScreen extends ConsumerStatefulWidget {
  const AgentBoardingListScreen({required this.tripId, super.key});

  final int tripId;

  @override
  ConsumerState<AgentBoardingListScreen> createState() =>
      _AgentBoardingListScreenState();
}

class _AgentBoardingListScreenState
    extends ConsumerState<AgentBoardingListScreen> {
  final Set<String> _processing = {};

  Future<void> _toggle(BoardingPassenger passenger) async {
    final l10n = context.l10n;
    if (_processing.contains(passenger.ticketNumber) || passenger.isBoarded) {
      return;
    }
    if (!passenger.canToggleBoarding) {
      _toast(l10n.agentBoardingUnpaidCannotBoard);
      return;
    }

    setState(() => _processing.add(passenger.ticketNumber));
    try {
      await ref
          .read(boardingListControllerProvider(widget.tripId).notifier)
          .confirmBoarding(passenger.ticketNumber);
    } on Failure catch (failure) {
      if (mounted) _toast(failure.localizedMessage(l10n));
    } finally {
      if (mounted) {
        setState(() => _processing.remove(passenger.ticketNumber));
      }
    }
  }

  void _toast(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final async = ref.watch(boardingListControllerProvider(widget.tripId));
    final connection = ref.watch(connectionSnapshotProvider);
    final isOffline =
        connection.status == ConnectionStatus.offline ||
        connection.status == ConnectionStatus.offlinePending;

    final roster = async.value;
    final title = roster == null
        ? l10n.agentBoardingTitle
        : '${ref.read(boardingListControllerProvider(widget.tripId).notifier).trip.originCity} '
              '→ '
              '${ref.read(boardingListControllerProvider(widget.tripId).notifier).trip.destinationCity}';

    return AgentTaskScaffold(
      title: title,
      offlineNotice: l10n.agentBoardingOfflineNotice,
      actions: [
        IconButton(
          onPressed: () => ref
              .read(boardingListControllerProvider(widget.tripId).notifier)
              .refresh(),
          icon: const Icon(Icons.refresh, color: AppColors.white),
          tooltip: l10n.actionRefresh,
        ),
      ],
      bottomBar: roster == null || roster.validated
          ? null
          : _ValidateBar(
              tripId: widget.tripId,
              roster: roster,
              isOffline: isOffline,
            ),
      child: switch (async) {
        AsyncValue(:final value?) => RefreshIndicator(
          onRefresh: () => ref
              .read(boardingListControllerProvider(widget.tripId).notifier)
              .refresh(),
          child: _Body(
            tripId: widget.tripId,
            roster: value,
            processing: _processing,
            onToggle: _toggle,
          ),
        ),
        AsyncValue(:final error?) => ListView(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.6,
              child: ErrorState(
                failure: error is Failure ? error : null,
                onRetry: () => ref
                    .read(
                      boardingListControllerProvider(widget.tripId).notifier,
                    )
                    .refresh(),
              ),
            ),
          ],
        ),
        _ => ListView(
          padding: const EdgeInsets.all(AppSpacing.md),
          children: const [
            LoadingSkeleton(height: 96, borderRadius: AppRadii.brCard),
            SizedBox(height: AppSpacing.md),
            LoadingSkeleton(height: 130, borderRadius: AppRadii.brCard),
            SizedBox(height: AppSpacing.sm),
            LoadingSkeleton(height: 72, borderRadius: AppRadii.brCard),
            SizedBox(height: AppSpacing.sm),
            LoadingSkeleton(height: 72, borderRadius: AppRadii.brCard),
          ],
        ),
      },
    );
  }
}

class _ValidateBar extends ConsumerWidget {
  const _ValidateBar({
    required this.tripId,
    required this.roster,
    required this.isOffline,
  });

  final int tripId;
  final BoardingRoster roster;
  final bool isOffline;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (isOffline)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.xs),
            child: Text(
              l10n.agentBoardingValidateRequiresOnline,
              style: AppTextStyles.caption,
              textAlign: TextAlign.center,
            ),
          ),
        FilledButton(
          onPressed: isOffline || roster.registeredCount == 0
              ? null
              : () => showValidateBoardingDialog(
                  context,
                  ref,
                  tripId: tripId,
                  boardedCount: roster.boardedCount,
                  absentCount: roster.absentCount,
                ),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            disabledBackgroundColor: AppColors.borderStrong,
            minimumSize: const Size.fromHeight(AppSizes.control),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
            textStyle: AppTextStyles.button,
          ),
          child: Text(l10n.agentBoardingValidateAction),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.tripId,
    required this.roster,
    required this.processing,
    required this.onToggle,
  });

  final int tripId;
  final BoardingRoster roster;
  final Set<String> processing;
  final ValueChanged<BoardingPassenger> onToggle;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        if (roster.validated)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.md),
            child: _ValidatedBanner(roster: roster),
          ),
        if (roster.isFromCache)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: Text(
              l10n.lastUpdatedAt(
                AppTimeFormat.hourMinuteCompact(context, roster.cachedAt!),
              ),
              style: AppTextStyles.caption,
            ),
          ),
        _ProgressCard(roster: roster),
        const SizedBox(height: AppSpacing.md),
        _StatsGrid(roster: roster),
        const SizedBox(height: AppSpacing.md),
        _ActionsRow(tripId: tripId, roster: roster),
        const SizedBox(height: AppSpacing.md),
        Text(
          l10n.agentBoardingPassengersTitle(roster.registeredCount),
          style: AppTextStyles.subtitle,
        ),
        const SizedBox(height: AppSpacing.sm),
        if (roster.passengers.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.xl),
            child: Text(
              l10n.agentBoardingEmpty,
              style: AppTextStyles.caption,
              textAlign: TextAlign.center,
            ),
          )
        else
          for (final passenger in roster.passengers) ...[
            _PassengerTile(
              passenger: passenger,
              locked: roster.validated,
              busy: processing.contains(passenger.ticketNumber),
              onToggle: () => onToggle(passenger),
            ),
            const SizedBox(height: AppSpacing.xs),
          ],
      ],
    );
  }
}

class _ValidatedBanner extends StatelessWidget {
  const _ValidatedBanner({required this.roster});

  final BoardingRoster roster;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final validatedAt = roster.validatedAt;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm + 2),
      decoration: BoxDecoration(
        color: AppStatusColors.success.background,
        border: Border.all(color: AppStatusColors.success.border),
        borderRadius: AppRadii.brCard,
      ),
      child: Row(
        children: [
          Container(
            width: 26,
            height: 26,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppStatusColors.success.dot,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check, size: 15, color: AppColors.white),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              validatedAt == null
                  ? l10n.agentBoardingValidatedBanner(
                      roster.boardedCount,
                      roster.absentCount,
                    )
                  : l10n.agentBoardingValidatedBannerAt(
                      AppTimeFormat.hourMinuteCompact(context, validatedAt),
                      roster.boardedCount,
                      roster.absentCount,
                    ),
              style: AppTextStyles.caption.copyWith(
                color: AppStatusColors.success.foreground,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProgressCard extends StatelessWidget {
  const _ProgressCard({required this.roster});

  final BoardingRoster roster;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final denom = roster.progressDenominator;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: AppRadii.brCard,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.agentBoardingProgressLabel,
                style: AppTypography.sans(
                  size: 12,
                  weight: FontWeight.w500,
                  color: AppColors.primary100,
                ),
              ),
              Text(
                roster.totalSeats != null
                    ? '${roster.boardedCount} / $denom'
                    : l10n.agentBoardingProgressOfRegistered(
                        roster.boardedCount,
                        denom,
                      ),
                style: AppTypography.sans(
                  size: 14,
                  weight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          ClipRRect(
            borderRadius: AppRadii.brPill,
            child: LinearProgressIndicator(
              value: roster.boardingRatio.clamp(0, 1),
              minHeight: 9,
              backgroundColor: AppColors.white.withValues(alpha: 0.18),
              valueColor: const AlwaysStoppedAnimation(AppColors.accent300),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatsGrid extends StatelessWidget {
  const _StatsGrid({required this.roster});

  final BoardingRoster roster;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final remaining = roster.remainingCapacity;

    final stats = <(String, String, Color)>[
      (
        l10n.agentBoardingStatRegistered,
        '${roster.registeredCount}',
        AppColors.textStrong,
      ),
      (
        l10n.agentBoardingStatPaid,
        '${roster.paidCount}',
        AppStatusColors.success.foreground,
      ),
      (
        l10n.agentBoardingStatUnpaid,
        '${roster.unpaidCount}',
        AppStatusColors.danger.foreground,
      ),
      (
        l10n.agentBoardingStatBoarded,
        '${roster.boardedCount}',
        AppColors.primary900,
      ),
      (
        l10n.agentBoardingStatAbsent,
        '${roster.absentCount}',
        AppStatusColors.warning.foreground,
      ),
      (
        l10n.agentBoardingStatRemaining,
        remaining == null ? '—' : '$remaining',
        AppColors.textSecondary,
      ),
    ];

    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.xs,
      crossAxisSpacing: AppSpacing.xs,
      childAspectRatio: 1.35,
      children: [
        for (final stat in stats)
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.surface,
              borderRadius: AppRadii.brCard,
              border: AppBorders.card,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  stat.$2,
                  style: AppTextStyles.kpi.copyWith(
                    fontSize: 19,
                    color: stat.$3,
                  ),
                ),
                const SizedBox(height: AppSpacing.xxs / 2),
                Text(
                  stat.$1,
                  style: AppTextStyles.caption.copyWith(fontSize: 10.5),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _ActionsRow extends ConsumerWidget {
  const _ActionsRow({required this.tripId, required this.roster});

  final int tripId;
  final BoardingRoster roster;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final locked = roster.validated;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilledButton.icon(
          onPressed: locked
              ? null
              : () => context.push(
                  AppRoutes.agentScanQr,
                  extra: tripId,
                ),
          icon: const Icon(Icons.qr_code_scanner),
          label: Text(l10n.agentBoardingScanAction),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            disabledBackgroundColor: AppColors.borderStrong,
            minimumSize: const Size.fromHeight(AppSizes.control),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: locked || roster.notYetBoarded.isEmpty
                    ? null
                    : () => showBoardAllDialog(
                        context,
                        ref,
                        tripId: tripId,
                        remainingToBoard: roster.notYetBoarded.length,
                      ),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(AppSizes.control),
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppRadii.brMd,
                  ),
                ),
                child: Text(l10n.agentBoardingAllAction),
              ),
            ),
            const SizedBox(width: AppSpacing.xs),
            Expanded(
              child: OutlinedButton(
                onPressed: locked
                    ? null
                    : () => showLastMinutePassengerDialog(
                        context,
                        ref,
                        tripId: tripId,
                      ),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(AppSizes.control),
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppRadii.brMd,
                  ),
                ),
                child: Text(l10n.agentBoardingLastMinuteAction),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.xs),
        OutlinedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(l10n.featureComingSoon)));
          },
          icon: const Icon(Icons.download_outlined, size: 18),
          label: Text(l10n.agentBoardingDownloadList),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(AppSizes.control),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
          ),
        ),
      ],
    );
  }
}

class _PassengerTile extends StatelessWidget {
  const _PassengerTile({
    required this.passenger,
    required this.locked,
    required this.busy,
    required this.onToggle,
  });

  final BoardingPassenger passenger;
  final bool locked;
  final bool busy;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm + 2),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: AppBorders.card,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: AppSpacing.xs,
                  runSpacing: AppSpacing.xxs,
                  children: [
                    Text(passenger.fullName, style: AppTextStyles.bodyStrong),
                    StatusBadge(
                      label: passenger.isPaid
                          ? l10n.agentBoardingPaid
                          : l10n.agentBoardingUnpaid,
                      type: passenger.isPaid
                          ? StatusType.success
                          : StatusType.danger,
                    ),
                    if (passenger.boardedOffline)
                      Tooltip(
                        message: l10n.agentBoardingOfflineNotice,
                        child: Icon(
                          Icons.cloud_off,
                          size: 14,
                          color: AppStatusColors.warning.foreground,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xxs),
                Row(
                  children: [
                    Text(passenger.ticketNumber, style: AppTextStyles.reference),
                    const SizedBox(width: AppSpacing.xs),
                    Text('·', style: AppTextStyles.caption),
                    const SizedBox(width: AppSpacing.xs),
                    Text(
                      l10n.agentBoardingSeat(
                        passenger.seatNumber ?? '—',
                      ),
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          _BoardingCheckbox(
            checked: passenger.isBoarded,
            disabled: locked || !passenger.canToggleBoarding,
            busy: busy,
            onTap: onToggle,
          ),
        ],
      ),
    );
  }
}

class _BoardingCheckbox extends StatelessWidget {
  const _BoardingCheckbox({
    required this.checked,
    required this.disabled,
    required this.busy,
    required this.onTap,
  });

  final bool checked;
  final bool disabled;
  final bool busy;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: disabled || busy ? null : onTap,
      borderRadius: AppRadii.brSm,
      child: SizedBox(
        width: 26,
        height: 26,
        child: busy
            ? const Padding(
                padding: EdgeInsets.all(4),
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Container(
                decoration: BoxDecoration(
                  color: checked ? AppColors.primary : AppColors.surface,
                  borderRadius: AppRadii.brSm,
                  border: Border.all(
                    color: checked ? AppColors.primary : AppColors.border,
                    width: 2,
                  ),
                ),
                child: checked
                    ? const Icon(Icons.check, size: 16, color: AppColors.white)
                    : null,
              ),
      ),
    );
  }
}
