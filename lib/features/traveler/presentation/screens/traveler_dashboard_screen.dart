import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/utils/clock_provider.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../auth/presentation/session_controller.dart';
import '../../domain/traveler_dashboard_summary.dart';
import '../traveler_providers.dart';
import '../widgets/traveler_nav.dart';
import '../widgets/traveler_shell.dart';

/// Tableau de bord voyageur (maquette « Tableau de bord voyageur ») : accueil
/// personnalisé, synthèse voyages, actions rapides et notifications récentes.
class TravelerDashboardScreen extends ConsumerWidget {
  const TravelerDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(travelerDashboardProvider);

    return TravelerShell(
      current: TravelerDestination.dashboard,
      bookingsBadge: dashboard.value?.activeBookingsCount,
      child: RefreshIndicator(
        onRefresh: () async => ref.invalidate(travelerDashboardProvider),
        child: dashboard.when(
          loading: () => const _DashboardSkeleton(),
          error: (error, _) => ListView(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: ErrorState(
                  failure: error is Failure ? error : null,
                  onRetry: () => ref.invalidate(travelerDashboardProvider),
                ),
              ),
            ],
          ),
          data: (summary) => _Body(summary: summary),
        ),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.summary});

  final TravelerDashboardSummary summary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final firstName = ref
        .watch(sessionControllerProvider)
        .displayName
        ?.split(' ')
        .first;
    final now = ref.watch(clockProvider).value ?? DateTime.now();

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        _Greeting(firstName: firstName, now: now),
        const SizedBox(height: AppSpacing.lg),
        _SummaryRow(summary: summary),
        const SizedBox(height: AppSpacing.lg),
        Text(l10n.dashQuickActions, style: AppTextStyles.subtitle),
        const SizedBox(height: AppSpacing.sm),
        const _QuickActions(),
        const SizedBox(height: AppSpacing.lg),
        _NextTrips(trips: summary.nextTrips),
        const SizedBox(height: AppSpacing.lg),
        _Notifications(notifications: summary.recentNotifications),
      ],
    );
  }
}

class _Greeting extends StatelessWidget {
  const _Greeting({required this.firstName, required this.now});

  final String? firstName;
  final DateTime now;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTimeFormat.fullDate(context, now),
                style: AppTextStyles.caption,
              ),
              const SizedBox(height: AppSpacing.xxs),
              Text(
                firstName == null
                    ? l10n.dashGreetingFallback
                    : l10n.dashGreeting(firstName!),
                style: AppTextStyles.pageTitle,
              ),
              const SizedBox(height: AppSpacing.xxs),
              Text(l10n.dashGreetingSubtitle, style: AppTextStyles.caption),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        FilledButton.icon(
          onPressed: () => context.goNamed(AppRoutes.searchResultsName),
          icon: const Icon(Icons.add, size: AppSizes.iconSm),
          label: Text(l10n.dashBookTrip),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
            textStyle: AppTextStyles.button,
          ),
        ),
      ],
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({required this.summary});

  final TravelerDashboardSummary summary;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return LayoutBuilder(
      builder: (context, constraints) {
        final tiles = [
          _SummaryTile(
            label: l10n.dashActiveBookings,
            value: '${summary.activeBookingsCount}',
            icon: Icons.confirmation_number_outlined,
          ),
          _SummaryTile(
            label: l10n.dashPending,
            value: '${summary.pendingCount}',
            icon: Icons.schedule_outlined,
            highlight: summary.pendingCount > 0,
          ),
          _SummaryTile(
            label: l10n.dashUpcoming,
            value: '${summary.nextTrips.length}',
            icon: Icons.event_outlined,
            dark: true,
          ),
        ];
        final wide = constraints.maxWidth > 560;
        return Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: [
            for (final tile in tiles)
              SizedBox(
                width: wide
                    ? (constraints.maxWidth - 2 * AppSpacing.sm) / 3
                    : (constraints.maxWidth - AppSpacing.sm) / 2,
                child: tile,
              ),
          ],
        );
      },
    );
  }
}

class _SummaryTile extends StatelessWidget {
  const _SummaryTile({
    required this.label,
    required this.value,
    required this.icon,
    this.dark = false,
    this.highlight = false,
  });

  final String label;
  final String value;
  final IconData icon;
  final bool dark;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    final bg = dark ? AppColors.primary700 : AppColors.surface;
    final fg = dark ? AppColors.white : AppColors.textPrimary;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: AppRadii.brCard,
        border: dark ? null : Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 34,
                height: 34,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: dark
                      ? const Color(0x28FFFFFF)
                      : (highlight
                            ? AppStatusColors.warning.background
                            : AppColors.primary50),
                  borderRadius: AppRadii.brMd,
                ),
                child: Icon(
                  icon,
                  size: 18,
                  color: dark
                      ? AppColors.white
                      : (highlight
                            ? AppStatusColors.warning.foreground
                            : AppColors.primary900),
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: Text(
                  label,
                  style: AppTypography.sans(
                    size: 12.5,
                    weight: FontWeight.w500,
                    color: dark
                        ? AppColors.onPrimaryMuted
                        : AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            value,
            style: AppTextStyles.kpi.copyWith(color: fg, fontSize: 34),
          ),
        ],
      ),
    );
  }
}

class _QuickActions extends StatelessWidget {
  const _QuickActions();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final actions = <_QuickAction>[
      _QuickAction(
        title: l10n.dashActionSearch,
        icon: Icons.search,
        background: AppColors.primary50,
        foreground: AppColors.primary900,
        onTap: () => context.goNamed(AppRoutes.searchResultsName),
      ),
      _QuickAction(
        title: l10n.dashActionBookings,
        icon: Icons.confirmation_number_outlined,
        background: AppColors.primary50,
        foreground: AppColors.primary900,
        onTap: () => context.goNamed(AppRoutes.travelerBookingsName),
      ),
      _QuickAction(
        title: l10n.dashActionParcels,
        icon: Icons.inventory_2_outlined,
        background: AppStatusColors.warning.background,
        foreground: AppStatusColors.warning.foreground,
        onTap: () => context.goNamed(AppRoutes.parcelTrackingName),
      ),
      _QuickAction(
        title: l10n.dashActionClaim,
        icon: Icons.feedback_outlined,
        background: AppStatusColors.danger.background,
        foreground: AppStatusColors.danger.foreground,
        onTap: () => context.goNamed(AppRoutes.travelerClaimsName),
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = constraints.maxWidth > 560 ? 4 : 2;
        final width =
            (constraints.maxWidth - (columns - 1) * AppSpacing.sm) / columns;
        return Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: [
            for (final action in actions) SizedBox(width: width, child: action),
          ],
        );
      },
    );
  }
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({
    required this.title,
    required this.icon,
    required this.background,
    required this.foreground,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Color background;
  final Color foreground;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: AppRadii.brCard,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brCard,
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brCard,
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: AppRadii.brLg,
                ),
                child: Icon(icon, size: 22, color: foreground),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                title,
                style: AppTypography.sans(size: 13.5, weight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NextTrips extends StatelessWidget {
  const _NextTrips({required this.trips});

  final List<TravelerTripPreview> trips;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return _Panel(
      title: l10n.dashNextTrips,
      child: trips.isEmpty
          ? EmptyState(
              icon: Icons.event_available_outlined,
              title: l10n.dashNextTripsEmptyTitle,
              message: l10n.dashNextTripsEmptyMessage,
            )
          : Column(children: [for (final trip in trips) _TripRow(trip: trip)]),
    );
  }
}

class _TripRow extends StatelessWidget {
  const _TripRow({required this.trip});

  final TravelerTripPreview trip;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                '${trip.departureTime.toLocal().day}',
                style: AppTypography.sans(
                  size: 18,
                  weight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
              Text(
                AppTimeFormat.mediumDate(
                  context,
                  trip.departureTime,
                ).split(' ').skip(1).take(1).join().toUpperCase(),
                style: AppTextStyles.eyebrow,
              ),
            ],
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${trip.origin} → ${trip.destination}',
                  style: AppTypography.sans(size: 14, weight: FontWeight.w700),
                ),
                Text(
                  '${AppTimeFormat.hourMinute(context, trip.departureTime)} · '
                  '${l10n.dashSeat} ${trip.seatNumber}',
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ),
          Container(
            width: 9,
            height: 9,
            decoration: BoxDecoration(
              color: _statusColor(trip.status),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }

  Color _statusColor(String status) => switch (status) {
    'paid' => AppStatusColors.success.dot,
    'pending' => AppStatusColors.warning.dot,
    'cancelled' || 'refunded' => AppStatusColors.danger.dot,
    _ => AppStatusColors.info.dot,
  };
}

class _Notifications extends StatelessWidget {
  const _Notifications({required this.notifications});

  final List<TravelerNotificationPreview> notifications;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return _Panel(
      title: l10n.dashNotifications,
      child: notifications.isEmpty
          ? EmptyState(
              icon: Icons.notifications_none,
              title: l10n.dashNotificationsEmptyTitle,
              message: l10n.dashNotificationsEmptyMessage,
            )
          : Column(
              children: [
                for (final notification in notifications)
                  _NotificationRow(notification: notification),
              ],
            ),
    );
  }
}

class _NotificationRow extends StatelessWidget {
  const _NotificationRow({required this.notification});

  final TravelerNotificationPreview notification;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary50,
              borderRadius: AppRadii.brMd,
            ),
            child: const Icon(
              Icons.notifications_outlined,
              size: 16,
              color: AppColors.primary900,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: AppTypography.sans(size: 13, weight: FontWeight.w600),
                ),
                const SizedBox(height: 2),
                Text(
                  notification.body,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.caption,
                ),
                const SizedBox(height: 2),
                Text(
                  AppTimeFormat.relative(l10n, notification.createdAt),
                  style: AppTextStyles.referenceSmall.copyWith(
                    color: AppColors.textTertiary,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          if (!notification.isRead)
            Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(top: 4),
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}

class _Panel extends StatelessWidget {
  const _Panel({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.sm,
            ),
            child: Text(title, style: AppTextStyles.subtitle),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.xs,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}

class _DashboardSkeleton extends StatelessWidget {
  const _DashboardSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: const [
        LoadingSkeleton(height: 70, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.lg),
        Row(
          children: [
            Expanded(
              child: LoadingSkeleton(
                height: 110,
                borderRadius: AppRadii.brCard,
              ),
            ),
            SizedBox(width: AppSpacing.sm),
            Expanded(
              child: LoadingSkeleton(
                height: 110,
                borderRadius: AppRadii.brCard,
              ),
            ),
          ],
        ),
        SizedBox(height: AppSpacing.lg),
        LoadingSkeleton(height: 200, borderRadius: AppRadii.brCard),
      ],
    );
  }
}
