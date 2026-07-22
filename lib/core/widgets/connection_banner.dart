import 'package:flutter/material.dart';

import '../localization/l10n_extension.dart';
import '../sync/connection_status.dart';
import '../theme/app_theme.dart';
import 'blinking_dot.dart';

/// Présentation du bandeau de connexion.
enum ConnectionBannerVariant {
  /// Filet pleine largeur, collé sous une barre d'application.
  bar,

  /// Carte cliquable du tableau de bord agent : titre, explication, compteur.
  card,
}

/// Bandeau d'état de la connexion et de la synchronisation.
///
/// Toujours visible dans le module agent. Cliquable : il ouvre le détail des
/// données en attente. Il ne ment jamais sur l'état réel (CLAUDE.md §6) — une
/// synchronisation échouée reste rouge tant qu'elle n'a pas abouti.
class ConnectionBanner extends StatelessWidget {
  const ConnectionBanner({
    required this.status,
    this.pendingCount = 0,
    this.onTap,
    this.variant = ConnectionBannerVariant.bar,
    super.key,
  });

  /// Variante carte de la maquette « Tableau de bord agent ».
  const ConnectionBanner.card({
    required this.status,
    this.pendingCount = 0,
    this.onTap,
    super.key,
  }) : variant = ConnectionBannerVariant.card;

  final ConnectionStatus status;

  /// Nombre d'écritures en attente, affiché dès qu'il est non nul.
  final int pendingCount;

  /// Ouvre la liste des données en attente, ou relance la synchronisation.
  final VoidCallback? onTap;

  final ConnectionBannerVariant variant;

  /// Message d'une ligne — variante [ConnectionBannerVariant.bar].
  String _message(BuildContext context) {
    final l10n = context.l10n;
    return switch (status) {
      ConnectionStatus.synced => l10n.connectionSynced,
      ConnectionStatus.syncing => l10n.connectionSyncing,
      ConnectionStatus.offlinePending => l10n.connectionOfflinePending(
        pendingCount,
      ),
      ConnectionStatus.offline => l10n.connectionOffline,
      ConnectionStatus.syncError => l10n.connectionSyncError,
    };
  }

  /// Titre de la variante carte.
  String _title(BuildContext context) {
    final l10n = context.l10n;
    return switch (status) {
      ConnectionStatus.synced => l10n.connectionSyncedTitle,
      ConnectionStatus.syncing => l10n.connectionSyncingTitle,
      ConnectionStatus.offlinePending => l10n.connectionOfflinePendingTitle,
      ConnectionStatus.offline => l10n.connectionOfflineTitle,
      ConnectionStatus.syncError => l10n.connectionSyncErrorTitle,
    };
  }

  /// Explication de la variante carte : ce que l'agent doit comprendre.
  String _body(BuildContext context) {
    final l10n = context.l10n;
    return switch (status) {
      ConnectionStatus.synced => l10n.connectionSyncedBody,
      ConnectionStatus.syncing => l10n.connectionSyncingBody,
      ConnectionStatus.offlinePending => l10n.connectionOfflinePendingBody,
      ConnectionStatus.offline => l10n.connectionOfflineBody,
      ConnectionStatus.syncError => l10n.connectionSyncErrorBody,
    };
  }

  @override
  Widget build(BuildContext context) {
    final palette = AppStatusColors.of(status.statusType);

    return switch (variant) {
      ConnectionBannerVariant.bar => _buildBar(context, palette),
      ConnectionBannerVariant.card => _buildCard(context, palette),
    };
  }

  Widget _buildBar(BuildContext context, StatusPalette palette) {
    final message = _message(context);

    return Semantics(
      liveRegion: true,
      button: onTap != null,
      label: message,
      child: Material(
        color: palette.background,
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: palette.border)),
            ),
            child: Row(
              children: [
                BlinkingDot(
                  color: palette.dot,
                  size: AppSizes.statusDot + 2,
                  isBlinking: status.isBlinking,
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Text(
                    message,
                    style: AppTextStyles.caption.copyWith(
                      color: palette.foreground,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (onTap != null)
                  Icon(
                    status.canRetry ? Icons.refresh : Icons.chevron_right,
                    size: AppSizes.iconSm,
                    color: palette.foreground,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, StatusPalette palette) {
    final title = _title(context);
    final body = _body(context);

    return Semantics(
      liveRegion: true,
      button: onTap != null,
      label: '$title. $body',
      child: Material(
        color: palette.background,
        borderRadius: AppRadii.brCard,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadii.brCard,
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              borderRadius: AppRadii.brCard,
              border: Border.all(color: palette.border, width: 1.5),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlinkingDot.haloed(
                  color: palette.dot,
                  isBlinking: status.isBlinking,
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.bodyStrong.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: palette.foreground,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xxs / 2),
                      Text(
                        body,
                        style: AppTextStyles.caption.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: palette.foreground.withValues(alpha: 0.82),
                        ),
                      ),
                    ],
                  ),
                ),
                if (pendingCount > 0) ...[
                  const SizedBox(width: AppSpacing.xs),
                  _PendingCountPill(count: pendingCount, palette: palette),
                ],
                if (onTap != null) ...[
                  const SizedBox(width: AppSpacing.xxs),
                  Icon(
                    status.canRetry ? Icons.refresh : Icons.chevron_right,
                    size: AppSizes.iconSm,
                    color: palette.foreground.withValues(alpha: 0.6),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Compteur d'écritures en attente, en chiffres à chasse fixe.
class _PendingCountPill extends StatelessWidget {
  const _PendingCountPill({required this.count, required this.palette});

  final int count;
  final StatusPalette palette;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs + 1,
        vertical: AppSpacing.xxs / 2,
      ),
      decoration: BoxDecoration(
        color: palette.dot,
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        '$count',
        style: AppTextStyles.referenceSmall.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
