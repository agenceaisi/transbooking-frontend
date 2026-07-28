import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/sync/connectivity_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../domain/arrived_parcel.dart';
import '../agent_parcel_arrivals_controller.dart';
import '../widgets/agent_task_scaffold.dart';

/// Notification d'arrivée de colis (guide §6.9).
///
/// Le SMS exige le réseau (jamais mis en file : l'app ne doit jamais laisser
/// croire qu'un SMS est parti alors qu'il ne l'est pas, CLAUDE.md §6).
/// « Marquer prévenu » (appel manuel), lui, part dans l'outbox hors ligne
/// depuis la correction du 2026-07-26 (`api/backend_completion_requests_5b.md`,
/// point 3 — `OfflineParcelNotification` côté API). « Appeler » et
/// l'impression du bordereau nécessitent un package non validé
/// (`url_launcher`/`printing`, cf. mémoire du projet) → « Bientôt disponible ».
class AgentParcelArrivalsScreen extends ConsumerWidget {
  const AgentParcelArrivalsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final arrivals = ref.watch(agentParcelArrivalsControllerProvider);
    final isOnline = ref.watch(isOnlineProvider).value ?? true;

    return AgentTaskScaffold(
      title: l10n.agentParcelArrivalsTitle,
      offlineNotice: l10n.agentParcelArrivalsOfflineNotice,
      child: RefreshIndicator(
        onRefresh: () => ref
            .read(agentParcelArrivalsControllerProvider.notifier)
            .refresh(),
        child: switch (arrivals) {
          AsyncValue(:final value?) => value.isEmpty
              ? ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      child: EmptyState(
                        icon: Icons.mark_email_read_outlined,
                        title: l10n.agentParcelArrivalsEmptyTitle,
                        message: l10n.agentParcelArrivalsEmptyMessage,
                      ),
                    ),
                  ],
                )
              : ListView(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  children: [
                    for (final parcel in value) ...[
                      _ArrivedParcelCard(parcel: parcel, isOnline: isOnline),
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
                      .read(agentParcelArrivalsControllerProvider.notifier)
                      .refresh(),
                ),
              ),
            ],
          ),
          _ => ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: const [
              LoadingSkeleton(height: 140, borderRadius: AppRadii.brCard),
              SizedBox(height: AppSpacing.sm),
              LoadingSkeleton(height: 140, borderRadius: AppRadii.brCard),
            ],
          ),
        },
      ),
    );
  }
}

class _ArrivedParcelCard extends ConsumerStatefulWidget {
  const _ArrivedParcelCard({required this.parcel, required this.isOnline});

  final ArrivedParcel parcel;
  final bool isOnline;

  @override
  ConsumerState<_ArrivedParcelCard> createState() =>
      _ArrivedParcelCardState();
}

class _ArrivedParcelCardState extends ConsumerState<_ArrivedParcelCard> {
  bool _busy = false;

  Future<void> _act(Future<void> Function() action) async {
    setState(() => _busy = true);
    try {
      await action();
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final parcel = widget.parcel;
    final canAct = !_busy;
    final smsDisabled = !widget.isOnline || _busy || parcel.smsAlreadySent;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(parcel.trackingNumber, style: AppTextStyles.reference),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(parcel.recipientName, style: AppTextStyles.bodyStrong),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xxs,
                ),
                decoration: BoxDecoration(
                  color: AppStatusColors.success.background,
                  borderRadius: AppRadii.brPill,
                ),
                child: Text(
                  l10n.agentParcelArrivedBadge,
                  style: AppTypography.sans(
                    size: 11,
                    weight: FontWeight.w700,
                    color: AppStatusColors.success.foreground,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: AppSizes.iconSm,
                color: AppColors.textTertiary,
              ),
              const SizedBox(width: AppSpacing.xxs),
              Text(parcel.destinationCity, style: AppTextStyles.body),
              const SizedBox(width: AppSpacing.sm),
              Text(parcel.recipientPhone, style: AppTextStyles.reference),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: smsDisabled
                      ? null
                      : () => _act(
                          () => ref
                              .read(
                                agentParcelArrivalsControllerProvider.notifier,
                              )
                              .notify(
                                parcelId: parcel.id,
                                trackingNumber: parcel.trackingNumber,
                                bySms: true,
                              ),
                        ),
                  child: Text(
                    parcel.smsAlreadySent
                        ? l10n.agentParcelSmsSent
                        : widget.isOnline
                        ? l10n.agentParcelSendSms
                        : l10n.agentParcelSmsUnavailable,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: OutlinedButton(
                  onPressed: () => _comingSoon(context),
                  child: Text(l10n.agentParcelCall),
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: FilledButton(
                  onPressed: canAct
                      ? () => _act(
                          () => ref
                              .read(
                                agentParcelArrivalsControllerProvider.notifier,
                              )
                              .notify(
                                parcelId: parcel.id,
                                trackingNumber: parcel.trackingNumber,
                                bySms: false,
                              ),
                        )
                      : null,
                  child: Text(
                    widget.isOnline
                        ? l10n.agentParcelMarkNotified
                        : l10n.agentParcelMarkNotifiedQueued,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static void _comingSoon(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(context.l10n.featureComingSoon)));
  }
}
