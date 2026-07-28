import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/sync/connection_providers.dart';
import '../../../../core/sync/connection_status.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/connection_banner.dart';
import '../../../../core/widgets/inline_alert.dart';
import 'pending_sync_sheet.dart';

/// Ossature des écrans-tâches du guichet (enregistrement passager/colis,
/// notification colis, programme du jour).
///
/// Reprend l'en-tête indigo de la maquette (retour + titre) et garde le
/// bandeau de connexion **toujours visible** (CLAUDE.md §6) sous l'en-tête.
class AgentTaskScaffold extends ConsumerWidget {
  const AgentTaskScaffold({
    required this.title,
    required this.child,
    this.actions = const [],
    this.offlineNotice,
    this.bottomBar,
    super.key,
  });

  final String title;
  final Widget child;

  /// Actions posées à droite de l'en-tête (ex. « Actualiser »).
  final List<Widget> actions;

  /// Message affiché sous le bandeau **uniquement** hors ligne — pour les
  /// écrans où une action précise devient indisponible (ex. SMS colis).
  final String? offlineNotice;

  final Widget? bottomBar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connection = ref.watch(connectionSnapshotProvider);
    final isOffline =
        connection.status == ConnectionStatus.offline ||
        connection.status == ConnectionStatus.offlinePending;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Container(
              color: AppColors.primary,
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.sm,
                AppSpacing.sm,
                AppSpacing.md,
                AppSpacing.md,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => _back(context),
                    icon: const Icon(Icons.arrow_back, color: AppColors.white),
                    tooltip: MaterialLocalizations.of(
                      context,
                    ).backButtonTooltip,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.sans(
                        size: 17,
                        weight: FontWeight.w800,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  ...actions,
                ],
              ),
            ),
          ),
          ConnectionBanner(
            status: connection.status,
            pendingCount: connection.pendingCount,
            onTap: () => PendingSyncSheet.show(
              context,
              snapshot: connection,
              operations: ref.read(pendingOperationsProvider).value ?? const [],
            ),
          ),
          if (isOffline && offlineNotice != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.md,
                AppSpacing.sm,
                AppSpacing.md,
                0,
              ),
              child: InlineAlert(type: StatusType.warning, message: offlineNotice!),
            ),
          Expanded(child: child),
        ],
      ),
      bottomNavigationBar: bottomBar == null
          ? null
          : Container(
              decoration: const BoxDecoration(
                color: AppColors.surface,
                border: Border(top: BorderSide(color: AppColors.borderSoft)),
              ),
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: bottomBar,
                ),
              ),
            ),
    );
  }

  void _back(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.goNamed(AppRoutes.agentName);
    }
  }
}
