import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Bandeau d'information posé dans le flux de la page.
///
/// Reprend le composant « Bandeaux inline » du design system : pastille ronde
/// portant l'icône, titre, corps de texte, le tout dans les quatre tons du
/// statut. À réserver aux messages liés au contenu de l'écran — les retours
/// éphémères passent par un toast.
class InlineAlert extends StatelessWidget {
  const InlineAlert({
    required this.message,
    this.title,
    this.type = StatusType.info,
    super.key,
  });

  /// Corps du message, déjà traduit.
  final String message;

  /// Titre facultatif, en gras au-dessus du message.
  final String? title;

  final StatusType type;

  @override
  Widget build(BuildContext context) {
    final palette = AppStatusColors.of(type);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: palette.background,
        borderRadius: AppRadii.brMd,
        border: Border.all(color: palette.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: palette.dot,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(_iconFor(type), size: 14, color: AppColors.white),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null) ...[
                  Text(
                    title!,
                    style: AppTextStyles.bodyStrong.copyWith(
                      fontSize: 13.5,
                      color: palette.foreground,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xxs / 2),
                ],
                Text(
                  message,
                  style: AppTextStyles.caption.copyWith(
                    color: palette.foreground,
                    height: 1.45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static IconData _iconFor(StatusType type) => switch (type) {
    StatusType.success => Icons.check_rounded,
    StatusType.info => Icons.info_outline_rounded,
    StatusType.warning => Icons.priority_high_rounded,
    StatusType.danger => Icons.close_rounded,
    StatusType.neutral => Icons.remove_rounded,
  };
}
