import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Pastille d'identité d'une compagnie : monogramme sur fond indigo.
///
/// Emplacement du futur logo réseau — les zones photo sont des placeholders
/// (CLAUDE.md §0), on ne génère aucune image. Tant que le client ne fournit pas
/// de logo, le monogramme fait foi.
class CompanyLogoAvatar extends StatelessWidget {
  const CompanyLogoAvatar({
    required this.monogram,
    this.size = 44,
    this.background = AppColors.primary,
    this.fontSize,
    super.key,
  });

  final String monogram;
  final double size;
  final Color background;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(size * 0.25),
      ),
      child: Text(
        monogram,
        style: AppTypography.sans(
          size: fontSize ?? size * 0.34,
          weight: FontWeight.w800,
          color: AppColors.onPrimary,
        ),
      ),
    );
  }
}
