import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/sync/connection_providers.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/connection_banner.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../auth/domain/user_role.dart';
import '../../../auth/presentation/session_controller.dart';
import '../../domain/agent_dashboard.dart';
import '../agent_dashboard_controller.dart';
import '../widgets/agent_alerts_card.dart';
import '../widgets/agent_bottom_nav.dart';
import '../widgets/agent_header.dart';
import '../widgets/agent_quick_actions.dart';
import '../widgets/next_boarding_card.dart';
import '../widgets/next_departures_card.dart';
import '../widgets/pending_sync_sheet.dart';

/// Tableau de bord agent — écran d'accueil du guichetier et du contrôleur.
///
/// Priorité au terrain : la disposition mobile est la référence, la vue
/// tablette/desktop reprend les mêmes blocs sur deux colonnes.
///
/// Les actions rapides et la barre basse pointent vers des écrans construits
/// en phase 5 : en attendant, elles annoncent clairement qu'ils arrivent, au
/// lieu de mener à une page vide.
class AgentDashboardScreen extends ConsumerWidget {
  const AgentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionControllerProvider);
    final role = session.role ?? UserRole.agentGuichet;
    final isController = role == UserRole.controleur;
    final dashboard = ref.watch(agentDashboardControllerProvider);

    final isCompact = !AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          AgentHeader(
            name: session.displayName ?? context.l10n.agentGreetingFallback,
            roleLabel: _roleLabel(context, role),
            isCompact: isCompact,
            onSignOut: () =>
                ref.read(sessionControllerProvider.notifier).signOut(),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () =>
                  ref.read(agentDashboardControllerProvider.notifier).refresh(),
              // On regarde ce que l'état *porte*, pas sa classe : pendant un
              // rechargement, Riverpod renvoie un `AsyncLoading` qui conserve
              // la valeur ou l'erreur précédente. L'agent garde son programme
              // à l'écran au lieu de le voir clignoter en squelette.
              child: switch (dashboard) {
                AsyncValue(:final value?) => _DashboardBody(
                  snapshot: value,
                  isController: isController,
                  isCompact: isCompact,
                ),
                AsyncValue(:final error?) => _DashboardError(error: error),
                _ => const _DashboardLoading(),
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: isCompact
          ? AgentBottomNav(items: _navItems(context, isController))
          : null,
    );
  }

  String _roleLabel(BuildContext context, UserRole role) {
    return role == UserRole.controleur
        ? context.l10n.agentRoleControleur
        : context.l10n.agentRoleGuichet;
  }

  List<AgentNavItem> _navItems(BuildContext context, bool isController) {
    final l10n = context.l10n;
    void comingSoon() => _showComingSoon(context);

    return [
      AgentNavItem(
        label: l10n.agentNavHome,
        icon: Icons.home_outlined,
        isCurrent: true,
        onPressed: () {},
      ),
      if (isController) ...[
        AgentNavItem(
          label: l10n.agentNavScan,
          icon: Icons.qr_code_scanner,
          onPressed: comingSoon,
        ),
        AgentNavItem(
          label: l10n.agentNavPassengers,
          icon: Icons.format_list_bulleted,
          onPressed: comingSoon,
        ),
      ] else ...[
        AgentNavItem(
          label: l10n.agentNavPassengers,
          icon: Icons.person_outline,
          onPressed: comingSoon,
        ),
        AgentNavItem(
          label: l10n.agentNavParcels,
          icon: Icons.inventory_2_outlined,
          onPressed: comingSoon,
        ),
        AgentNavItem(
          label: l10n.agentNavScan,
          icon: Icons.qr_code_scanner,
          onPressed: comingSoon,
        ),
      ],
      AgentNavItem(
        label: l10n.agentNavProfile,
        icon: Icons.person_outline,
        onPressed: comingSoon,
      ),
    ];
  }
}

/// Contenu du tableau de bord, une fois les données obtenues.
class _DashboardBody extends ConsumerWidget {
  const _DashboardBody({
    required this.snapshot,
    required this.isController,
    required this.isCompact,
  });

  final AgentDashboardSnapshot snapshot;
  final bool isController;
  final bool isCompact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connection = ref.watch(connectionSnapshotProvider);
    final banner = ConnectionBanner.card(
      status: connection.status,
      pendingCount: connection.pendingCount,
      onTap: () => _openPendingSheet(context, ref, connection),
    );

    final alerts = AgentAlertsCard(
      alerts: snapshot.alerts,
      pendingAlerts: snapshot.pendingAlerts,
      onOpenAlert: (_) => _showComingSoon(context),
    );

    final actions = AgentQuickActions(
      actions: _quickActions(context, isController),
      isCompact: isCompact,
    );

    final schedule = isController
        ? NextBoardingCard(
            departure: snapshot.nextDeparture,
            lastUpdatedLabel: _lastUpdatedLabel(context, snapshot),
            onScan: () => _showComingSoon(context),
            onViewPassengers: () => _showComingSoon(context),
          )
        : NextDeparturesCard(
            departures: snapshot.departures,
            lastUpdatedLabel: _lastUpdatedLabel(context, snapshot),
            isCompact: isCompact,
            onOpenSchedule: () => _showComingSoon(context),
            onViewPassengers: (_) => _showComingSoon(context),
            onAddPassenger: (_) => _showComingSoon(context),
          );

    if (isCompact) {
      return ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          banner,
          const SizedBox(height: AppSpacing.md),
          _SectionLabel(context.l10n.agentQuickActionsTitle),
          actions,
          const SizedBox(height: AppSpacing.md),
          schedule,
          const SizedBox(height: AppSpacing.md),
          alerts,
        ],
      );
    }

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.xl),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 155,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SectionLabel(context.l10n.agentQuickActionsTitle),
                  actions,
                  const SizedBox(height: AppSpacing.lg),
                  schedule,
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.xl),
            Expanded(
              flex: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SectionLabel(context.l10n.agentConnectionSectionTitle),
                  banner,
                  const SizedBox(height: AppSpacing.lg),
                  alerts,
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// « Dernière mise à jour à HHhMM » — affiché uniquement si les données
  /// affichées viennent du cache local (CLAUDE.md §6).
  String? _lastUpdatedLabel(
    BuildContext context,
    AgentDashboardSnapshot snapshot,
  ) {
    final cachedAt = snapshot.cachedAt;
    if (cachedAt == null) return null;
    return context.l10n.lastUpdatedAt(
      AppTimeFormat.hourMinuteCompact(context, cachedAt),
    );
  }

  Future<void> _openPendingSheet(
    BuildContext context,
    WidgetRef ref,
    ConnectionSnapshot connection,
  ) {
    return PendingSyncSheet.show(
      context,
      snapshot: connection,
      operations: ref.read(pendingOperationsProvider).value ?? const [],
    );
  }

  /// Actions rapides du rôle courant, telles que la maquette les ordonne.
  List<AgentQuickAction> _quickActions(BuildContext context, bool controller) {
    final l10n = context.l10n;
    void comingSoon() => _showComingSoon(context);

    final scan = AgentQuickAction(
      label: l10n.agentActionScanQr,
      icon: Icons.qr_code_scanner,
      background: AppColors.primary,
      foreground: AppColors.onPrimary,
      onPressed: comingSoon,
    );

    if (controller) {
      return [
        scan,
        AgentQuickAction(
          label: l10n.agentActionPassengerList,
          icon: Icons.format_list_bulleted,
          background: AppColors.primary100,
          foreground: AppColors.primary900,
          onPressed: comingSoon,
        ),
      ];
    }

    return [
      AgentQuickAction(
        label: l10n.agentActionRegisterPassenger,
        icon: Icons.person_add_alt_outlined,
        background: AppColors.primary100,
        foreground: AppColors.primary900,
        onPressed: comingSoon,
      ),
      AgentQuickAction(
        label: l10n.agentActionRegisterParcel,
        icon: Icons.inventory_2_outlined,
        background: AppStatusColors.warning.background,
        foreground: AppStatusColors.warning.foreground,
        onPressed: comingSoon,
      ),
      AgentQuickAction(
        label: l10n.agentActionDaySchedule,
        icon: Icons.calendar_today_outlined,
        background: AppStatusColors.info.background,
        foreground: AppStatusColors.info.foreground,
        onPressed: comingSoon,
      ),
      scan,
    ];
  }
}

/// Intitulé d'un groupe de blocs.
class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSpacing.xxs / 2,
        bottom: AppSpacing.xs + 2,
      ),
      child: Text(
        label,
        style: AppTypography.sans(
          size: 13,
          weight: FontWeight.w700,
          color: AppColors.textStrong,
        ),
      ),
    );
  }
}

/// Esquisse de la page pendant le premier chargement.
class _DashboardLoading extends StatelessWidget {
  const _DashboardLoading();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: const [
        LoadingSkeleton(height: 68, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.md),
        Row(
          children: [
            Expanded(
              child: LoadingSkeleton(
                height: 112,
                borderRadius: AppRadii.brCard,
              ),
            ),
            SizedBox(width: AppSpacing.sm),
            Expanded(
              child: LoadingSkeleton(
                height: 112,
                borderRadius: AppRadii.brCard,
              ),
            ),
          ],
        ),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 220, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 160, borderRadius: AppRadii.brCard),
      ],
    );
  }
}

/// Échec complet : ni réseau, ni cache exploitable.
class _DashboardError extends ConsumerWidget {
  const _DashboardError({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: ErrorState(
            failure: error is Failure ? error as Failure : null,
            onRetry: () =>
                ref.read(agentDashboardControllerProvider.notifier).refresh(),
          ),
        ),
      ],
    );
  }
}

/// Annonce qu'un écran arrive, sans laisser l'agent devant une page morte.
void _showComingSoon(BuildContext context) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(context.l10n.featureComingSoon)));
}
