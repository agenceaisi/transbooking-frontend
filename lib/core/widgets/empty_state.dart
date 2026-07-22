import 'package:flutter/material.dart';

import '../localization/l10n_extension.dart';
import '../theme/app_theme.dart';
import 'primary_button.dart';

/// État vide — une invitation à agir, jamais un simple « Aucune donnée ».
class EmptyState extends StatelessWidget {
  const EmptyState({
    this.title,
    this.message,
    this.icon = Icons.inbox_outlined,
    this.actionLabel,
    this.onAction,
    super.key,
  });

  /// Titre, déjà traduit.
  final String? title;

  /// Phrase qui explique quoi faire ensuite.
  final String? message;

  final IconData icon;

  /// Libellé de l'action proposée, déjà traduit.
  final String? actionLabel;

  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final showAction = actionLabel != null && onAction != null;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: AppColors.textTertiary),
            const SizedBox(height: AppSpacing.md),
            Text(
              title ?? context.l10n.emptyStateTitle,
              style: AppTextStyles.subtitle,
              textAlign: TextAlign.center,
            ),
            if (message != null) ...[
              const SizedBox(height: AppSpacing.xs),
              Text(
                message!,
                style: AppTextStyles.caption,
                textAlign: TextAlign.center,
              ),
            ],
            if (showAction) ...[
              const SizedBox(height: AppSpacing.lg),
              PrimaryButton(
                label: actionLabel!,
                onPressed: onAction,
                expand: false,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
