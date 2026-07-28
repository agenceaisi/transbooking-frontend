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
import '../../domain/app_notification.dart';
import '../../domain/traveler_dashboard_summary.dart';
import '../traveler_providers.dart';
import '../widgets/traveler_nav.dart';
import '../widgets/traveler_shell.dart';

/// Teintes translucides posées sur l'indigo du bandeau. Aucun jeton dédié dans
/// la palette — même convention que le menu latéral voyageur (traveler_shell).
const Color _onIndigoFill = Color(0x1AFFFFFF);
const Color _onIndigoBorder = Color(0x40FFFFFF);

/// Icône + palette de statut d'une notification, selon son type technique.
/// Une valeur inconnue retombe sur une pastille neutre (jamais de couleur
/// inventée) — cf. guide §6.16.
({IconData icon, StatusPalette palette}) _notificationVisual(
  NotificationKind kind,
) => switch (kind) {
  NotificationKind.booking => (
    icon: Icons.confirmation_number_outlined,
    palette: AppStatusColors.success,
  ),
  NotificationKind.payment => (
    icon: Icons.payments_outlined,
    palette: AppStatusColors.success,
  ),
  NotificationKind.parcel => (
    icon: Icons.inventory_2_outlined,
    palette: AppStatusColors.info,
  ),
  NotificationKind.claim => (
    icon: Icons.feedback_outlined,
    palette: AppStatusColors.warning,
  ),
  NotificationKind.review => (
    icon: Icons.star_outline_rounded,
    palette: AppStatusColors.info,
  ),
  NotificationKind.trip => (
    icon: Icons.directions_bus_outlined,
    palette: AppStatusColors.warning,
  ),
  NotificationKind.message => (
    icon: Icons.mail_outline_rounded,
    palette: AppStatusColors.info,
  ),
  NotificationKind.system => (
    icon: Icons.notifications_none_rounded,
    palette: AppStatusColors.neutral,
  ),
  NotificationKind.unknown => (
    icon: Icons.notifications_none_rounded,
    palette: AppStatusColors.neutral,
  ),
};

/// Tableau de bord voyageur (maquette « Tableau de bord voyageur ») : bandeau
/// d'accueil, synthèse, actions rapides, prochains voyages et notifications.
class TravelerDashboardScreen extends ConsumerWidget {
  const TravelerDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(travelerDashboardProvider);

    return TravelerShell(
      current: TravelerDestination.dashboard,
      bookingsBadge: dashboard.value?.activeBookingsCount,
      child: const _DashboardView(),
    );
  }
}

/// Vue défilante : bandeau fixe en tête, contenu en dessous. Le `ScrollController`
/// permet à la cloche du bandeau de défiler jusqu'aux notifications.
class _DashboardView extends ConsumerStatefulWidget {
  const _DashboardView();

  @override
  ConsumerState<_DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<_DashboardView> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToNotifications() {
    if (!_scrollController.hasClients) return;
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dashboard = ref.watch(travelerDashboardProvider);
    final session = ref.watch(sessionControllerProvider);
    final now = ref.watch(clockProvider).value ?? DateTime.now();

    final unread = dashboard.value == null
        ? 0
        : dashboard.value!.recentNotifications
              .where((notification) => !notification.isRead)
              .length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Header(
          userName: session.displayName,
          now: now,
          unreadCount: unread,
          onBell: _scrollToNotifications,
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async => ref.invalidate(travelerDashboardProvider),
            child: dashboard.when(
              loading: () => const _DashboardSkeleton(),
              error: (error, _) => _ErrorScroll(
                failure: error is Failure ? error : null,
                onRetry: () => ref.invalidate(travelerDashboardProvider),
              ),
              data: (summary) => _Body(
                summary: summary,
                scrollController: _scrollController,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.summary, required this.scrollController});

  final TravelerDashboardSummary summary;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ListView(
      controller: scrollController,
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        _KpiRow(
          activeBookings: summary.activeBookingsCount,
          scheduledTrips: summary.nextTrips.length,
        ),
        const SizedBox(height: AppSpacing.md),
        _TicketStatusCard(
          paid: summary.paidCount,
          pending: summary.pendingCount,
          cancelled: summary.cancelledCount,
        ),
        const SizedBox(height: AppSpacing.md),
        Text(l10n.dashQuickActions, style: AppTextStyles.subtitle),
        const SizedBox(height: AppSpacing.sm),
        const _QuickActions(),
        const SizedBox(height: AppSpacing.md),
        _NextTrips(trips: summary.nextTrips),
        const SizedBox(height: AppSpacing.md),
        _Notifications(notifications: summary.recentNotifications),
      ],
    );
  }
}

/// Bandeau indigo : avatar (initiales), date + salut personnalisé, cloche.
class _Header extends StatelessWidget {
  const _Header({
    required this.userName,
    required this.now,
    required this.unreadCount,
    required this.onBell,
  });

  final String? userName;
  final DateTime now;
  final int unreadCount;
  final VoidCallback onBell;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final name = userName?.trim();
    final firstName = (name != null && name.isNotEmpty)
        ? name.split(' ').first
        : null;

    return Container(
      width: double.infinity,
      color: AppColors.primary700,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            AppSpacing.sm,
            AppSpacing.md,
            AppSpacing.md,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.primary50,
                child: Text(
                  travelerInitials(name),
                  style: AppTypography.sans(
                    size: 14,
                    weight: FontWeight.w700,
                    color: AppColors.primary900,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppTimeFormat.fullDate(context, now),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.sans(
                        size: 11.5,
                        color: AppColors.onPrimaryMuted,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      firstName == null
                          ? l10n.dashGreetingFallback
                          : l10n.dashGreeting(firstName),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.sans(
                        size: 19,
                        weight: FontWeight.w800,
                        color: AppColors.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              _BellButton(unreadCount: unreadCount, onTap: onBell),
            ],
          ),
        ),
      ),
    );
  }
}

class _BellButton extends StatelessWidget {
  const _BellButton({required this.unreadCount, required this.onTap});

  final int unreadCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: context.l10n.dashNotifications,
      child: Material(
        color: _onIndigoFill,
        borderRadius: AppRadii.brLg,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadii.brLg,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: AppRadii.brLg,
              border: Border.all(color: _onIndigoBorder),
            ),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                const Icon(
                  Icons.notifications_none_rounded,
                  size: 20,
                  color: AppColors.onPrimary,
                ),
                if (unreadCount > 0)
                  Positioned(
                    top: 8,
                    right: 9,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: AppColors.accent,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.primary700, width: 2),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Deux cartes KPI : réservations actives (clair) et voyages programmés (foncé).
class _KpiRow extends StatelessWidget {
  const _KpiRow({required this.activeBookings, required this.scheduledTrips});

  final int activeBookings;
  final int scheduledTrips;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // IntrinsicHeight borne la hauteur (sinon `stretch` dans un ListView force
    // une hauteur infinie) et garde les deux cartes à la même hauteur.
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _KpiCard(
              label: l10n.dashActiveBookings,
              value: '$activeBookings',
              dark: false,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: _KpiCard(
              label: l10n.dashScheduledTrips,
              value: '$scheduledTrips',
              dark: true,
            ),
          ),
        ],
      ),
    );
  }
}

class _KpiCard extends StatelessWidget {
  const _KpiCard({
    required this.label,
    required this.value,
    required this.dark,
  });

  final String label;
  final String value;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: dark ? AppColors.primary700 : AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: dark ? null : Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.sans(
              size: 12,
              weight: FontWeight.w500,
              color: dark ? AppColors.onPrimaryMuted : AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            value,
            style: AppTypography.sans(
              size: 30,
              weight: FontWeight.w700,
              tabular: true,
              color: dark ? AppColors.onPrimary : AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

/// Carte « Statut des billets » : compteurs Payé / En attente / Annulé dérivés
/// de la liste des réservations. Affiche « – » tant que la liste n'est pas
/// chargée (jamais 0 trompeur).
class _TicketStatusCard extends StatelessWidget {
  const _TicketStatusCard({
    required this.paid,
    required this.pending,
    required this.cancelled,
  });

  final int paid;
  final int pending;
  final int cancelled;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.dashTicketStatus,
            style: AppTypography.sans(
              size: 12.5,
              weight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              Expanded(
                child: _StatusTile(
                  count: '$paid',
                  label: l10n.dashStatusPaid,
                  palette: AppStatusColors.success,
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: _StatusTile(
                  count: '$pending',
                  label: l10n.dashStatusPending,
                  palette: AppStatusColors.warning,
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: _StatusTile(
                  count: '$cancelled',
                  label: l10n.dashStatusCancelled,
                  palette: AppStatusColors.danger,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusTile extends StatelessWidget {
  const _StatusTile({
    required this.count,
    required this.label,
    required this.palette,
  });

  final String count;
  final String label;
  final StatusPalette palette;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.sm - 2,
        horizontal: AppSpacing.xxs,
      ),
      decoration: BoxDecoration(
        color: palette.background,
        borderRadius: AppRadii.brLg,
      ),
      child: Column(
        children: [
          Text(
            count,
            style: AppTypography.sans(
              size: 22,
              weight: FontWeight.w700,
              tabular: true,
              color: palette.foreground,
            ),
          ),
          const SizedBox(height: AppSpacing.xxs),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.sans(
              size: 10.5,
              weight: FontWeight.w500,
              color: palette.foreground,
            ),
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
        background: AppColors.primary100,
        foreground: AppColors.primary900,
        onTap: () => context.goNamed(AppRoutes.searchResultsName),
      ),
      _QuickAction(
        title: l10n.dashActionBookings,
        icon: Icons.confirmation_number_outlined,
        background: AppColors.primary100,
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
      trailing: trips.isEmpty
          ? null
          : _SeeAllLink(
              onTap: () => context.goNamed(AppRoutes.travelerBookingsName),
            ),
      child: trips.isEmpty
          ? Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: EmptyState(
                icon: Icons.event_available_outlined,
                title: l10n.dashNextTripsEmptyTitle,
                message: l10n.dashNextTripsEmptyMessage,
              ),
            )
          : Column(
              children: [
                for (var i = 0; i < trips.length; i++) ...[
                  if (i > 0)
                    const Divider(height: 1, color: AppColors.borderSoft),
                  _TripRow(trip: trips[i]),
                ],
              ],
            ),
    );
  }
}

class _TripRow extends StatelessWidget {
  const _TripRow({required this.trip});

  final TravelerTripPreview trip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 42,
            child: Column(
              children: [
                Text(
                  '${trip.departureTime.toLocal().day}',
                  style: AppTypography.sans(
                    size: 16,
                    weight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  _monthAbbrev(context, trip.departureTime),
                  style: AppTextStyles.eyebrow.copyWith(fontSize: 9),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${trip.origin} → ${trip.destination}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(size: 13.5, weight: FontWeight.w700),
                ),
                const SizedBox(height: 2),
                Text(
                  '${AppTimeFormat.hourMinute(context, trip.departureTime)} · '
                  '${trip.companyName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(
                    size: 11.5,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
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

  /// Abréviation du mois en capitales, sans point (« JUIL »).
  String _monthAbbrev(BuildContext context, DateTime dateTime) {
    final parts = AppTimeFormat.mediumDate(context, dateTime).split(' ');
    final month = parts.length > 1 ? parts[1] : '';
    return month.replaceAll('.', '').toUpperCase();
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
    final unread = notifications
        .where((notification) => !notification.isRead)
        .length;
    return _Panel(
      title: l10n.dashNotifications,
      trailing: unread == 0 ? null : _CountBadge(count: unread),
      child: notifications.isEmpty
          ? Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: EmptyState(
                icon: Icons.notifications_none,
                title: l10n.dashNotificationsEmptyTitle,
                message: l10n.dashNotificationsEmptyMessage,
              ),
            )
          : Column(
              children: [
                for (var i = 0; i < notifications.length; i++) ...[
                  if (i > 0)
                    const Divider(height: 1, color: AppColors.borderSoft),
                  _NotificationRow(notification: notifications[i]),
                ],
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
    final visual = _notificationVisual(notification.kind);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm - 1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: visual.palette.background,
              borderRadius: AppRadii.brMd,
            ),
            child: Icon(
              visual.icon,
              size: 16,
              color: visual.palette.foreground,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(size: 12.5, weight: FontWeight.w600),
                ),
                const SizedBox(height: 3),
                Text(
                  AppTimeFormat.relative(l10n, notification.createdAt),
                  style: AppTypography.mono(
                    size: 11,
                    color: AppColors.textTertiary,
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

/// Carte à en-tête (titre + action facultative) suivie d'un contenu.
class _Panel extends StatelessWidget {
  const _Panel({required this.title, required this.child, this.trailing});

  final String title;
  final Widget child;
  final Widget? trailing;

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
              AppSpacing.sm + 2,
              AppSpacing.md,
              AppSpacing.sm + 2,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: AppTypography.sans(
                      size: 15,
                      weight: FontWeight.w700,
                    ),
                  ),
                ),
                ?trailing,
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.borderSoft),
          child,
        ],
      ),
    );
  }
}

class _SeeAllLink extends StatelessWidget {
  const _SeeAllLink({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brSm,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xxs,
          vertical: 2,
        ),
        child: Text(
          context.l10n.dashSeeAll,
          style: AppTypography.sans(
            size: 12.5,
            weight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  const _CountBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs - 1,
        vertical: 1,
      ),
      decoration: BoxDecoration(
        color: AppStatusColors.danger.dot,
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        '$count',
        style: AppTypography.mono(
          size: 10,
          weight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );
  }
}

/// État d'erreur défilant (pour garder le « tirer pour rafraîchir »).
class _ErrorScroll extends StatelessWidget {
  const _ErrorScroll({required this.failure, required this.onRetry});

  final Failure? failure;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Center(child: ErrorState(failure: failure, onRetry: onRetry)),
          ),
        ),
      ),
    );
  }
}

class _DashboardSkeleton extends StatelessWidget {
  const _DashboardSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      physics: const AlwaysScrollableScrollPhysics(),
      children: const [
        Row(
          children: [
            Expanded(
              child: LoadingSkeleton(height: 92, borderRadius: AppRadii.brCard),
            ),
            SizedBox(width: AppSpacing.sm),
            Expanded(
              child: LoadingSkeleton(height: 92, borderRadius: AppRadii.brCard),
            ),
          ],
        ),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 96, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 150, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 180, borderRadius: AppRadii.brCard),
      ],
    );
  }
}
