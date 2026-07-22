import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../domain/agent_dashboard.dart';
import 'section_card.dart';

/// Bloc « Alertes récentes ».
///
/// Alimenté par `GET /notifications/` : `agent/dashboard/` n'expose qu'un
/// compteur, pas le contenu des alertes. Le compteur, lui, sert de repère
/// quand il dépasse le nombre d'alertes affichées.
class AgentAlertsCard extends StatelessWidget {
  const AgentAlertsCard({
    required this.alerts,
    required this.onOpenAlert,
    this.pendingAlerts,
    super.key,
  });

  final List<AgentAlert> alerts;

  final void Function(AgentAlert alert) onOpenAlert;

  /// Total annoncé par le serveur, `null` hors ligne.
  final int? pendingAlerts;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final total = pendingAlerts;

    return SectionCard(
      title: l10n.agentAlertsTitle,
      trailing: total != null && total > alerts.length
          ? _AlertCountBadge(count: total)
          : null,
      padded: true,
      child: alerts.isEmpty
          ? EmptyState(
              icon: Icons.notifications_none_outlined,
              title: l10n.agentAlertsEmptyTitle,
              message: l10n.agentAlertsEmptyMessage,
            )
          : Column(
              children: [
                for (final alert in alerts) ...[
                  if (alert != alerts.first)
                    const SizedBox(height: AppSpacing.xs + 1),
                  _AlertTile(alert: alert, onTap: () => onOpenAlert(alert)),
                ],
              ],
            ),
    );
  }
}

/// Nombre total d'alertes en attente côté serveur.
class _AlertCountBadge extends StatelessWidget {
  const _AlertCountBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs,
        vertical: AppSpacing.xxs / 2,
      ),
      decoration: const BoxDecoration(
        color: AppColors.primary50,
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        '$count',
        style: AppTextStyles.referenceSmall.copyWith(
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _AlertTile extends StatelessWidget {
  const _AlertTile({required this.alert, required this.onTap});

  final AgentAlert alert;
  final VoidCallback onTap;

  /// Icône représentant la nature de l'alerte.
  static IconData iconFor(AgentAlertKind kind) => switch (kind) {
    AgentAlertKind.parcel => Icons.inventory_2_outlined,
    AgentAlertKind.trip => Icons.schedule_outlined,
    AgentAlertKind.booking => Icons.confirmation_number_outlined,
    AgentAlertKind.payment => Icons.payments_outlined,
    AgentAlertKind.claim => Icons.report_problem_outlined,
    AgentAlertKind.review => Icons.star_outline,
    AgentAlertKind.message => Icons.chat_bubble_outline,
    AgentAlertKind.system => Icons.warning_amber_outlined,
  };

  @override
  Widget build(BuildContext context) {
    final palette = AppStatusColors.of(alert.kind.statusType);

    return Material(
      color: AppColors.surface,
      borderRadius: AppRadii.brLg,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brLg,
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.sm + 1),
          decoration: const BoxDecoration(
            borderRadius: AppRadii.brLg,
            border: AppBorders.card,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 34,
                height: 34,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: palette.background,
                  borderRadius: AppRadii.brCard,
                ),
                child: Icon(
                  iconFor(alert.kind),
                  size: AppSizes.iconSm,
                  color: palette.foreground,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            alert.title,
                            style: AppTypography.sans(
                              size: 13.5,
                              weight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        Text(
                          AppTimeFormat.relative(context.l10n, alert.createdAt),
                          style: AppTypography.sans(
                            size: 10.5,
                            weight: FontWeight.w500,
                            color: AppColors.textTertiary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.xxs / 2),
                    Text(
                      alert.body,
                      style: AppTextStyles.caption.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
