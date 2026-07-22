import 'package:flutter/material.dart';

import '../error/failure.dart';
import '../error/failure_messages.dart';
import '../localization/l10n_extension.dart';
import '../theme/app_theme.dart';
import 'secondary_button.dart';

/// État d'erreur — explique le problème et propose l'action à faire.
///
/// Jamais de trace technique : le message vient de [Failure], traduit par
/// `failure_messages.dart`.
class ErrorState extends StatelessWidget {
  const ErrorState({
    this.failure,
    this.message,
    this.title,
    this.onRetry,
    super.key,
  });

  /// Erreur du domaine — sa traduction sert de message.
  final Failure? failure;

  /// Message explicite, prioritaire sur [failure].
  final String? message;

  /// Titre, déjà traduit.
  final String? title;

  /// Relance l'opération ; le bouton disparaît si absent.
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final text =
        message ?? failure?.localizedMessage(l10n) ?? l10n.failureUnexpected;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 40,
              color: AppStatusColors.danger.dot,
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              title ?? l10n.errorStateTitle,
              style: AppTextStyles.subtitle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              text,
              style: AppTextStyles.caption,
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: AppSpacing.lg),
              SecondaryButton(
                label: l10n.actionRetry,
                onPressed: onRetry,
                icon: Icons.refresh,
                expand: false,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
