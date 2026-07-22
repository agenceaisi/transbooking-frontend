// `CupertinoPageTransitionsBuilder` vit dans la bibliothèque Cupertino depuis
// Flutter 3.44 : on garde le glissement natif attendu sur iOS.
import 'package:flutter/cupertino.dart' show CupertinoPageTransitionsBuilder;
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_spacing.dart';
import 'app_status_colors.dart';
import 'app_typography.dart';

export 'app_colors.dart';
export 'app_spacing.dart';
export 'app_status_colors.dart';
export 'app_typography.dart';

/// Assemblage du thème Material à partir des tokens du design system.
///
/// Ce fichier ré-exporte l'ensemble des tokens : un `import
/// 'package:transbooking_bf/core/theme/app_theme.dart';` suffit dans un widget.
abstract final class AppTheme {
  /// Rouge d'erreur — repris du jeu de statut « danger », pour que les champs
  /// en erreur et les badges « Annulé » parlent la même langue.
  static final Color _danger = AppStatusColors.danger.dot;

  /// Thème clair — le seul prévu (design sobre et institutionnel, usage diurne
  /// en agence comme sur le terrain).
  static ThemeData get light {
    final colorScheme = ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.primary50,
      onPrimaryContainer: AppColors.primary900,
      secondary: AppColors.accent,
      onSecondary: AppColors.white,
      secondaryContainer: AppColors.accent50,
      onSecondaryContainer: AppColors.accent700,
      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
      onSurfaceVariant: AppColors.textSecondary,
      outline: AppColors.border,
      outlineVariant: AppColors.divider,
      error: _danger,
      onError: AppColors.white,
      scrim: AppColors.scrim,
    );

    final base = ThemeData(
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.background,
      splashFactory: InkSparkle.splashFactory,
    );

    return base.copyWith(
      textTheme: _textTheme(base.textTheme),
      // Barre supérieure mobile du handoff : papier blanc, titre en serif, un
      // simple filet en guise de séparation. Les shells qui veulent l'en-tête
      // indigo (module agent) surchargent localement.
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.textPrimary,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: AppTextStyles.dialogTitle,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        shape: const Border(bottom: BorderSide(color: AppColors.borderSoft)),
      ),
      cardTheme: const CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadii.brCard,
          side: AppBorders.side,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 1,
      ),
      inputDecorationTheme: _inputDecorationTheme(),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: AppRadii.brSheetTop),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surface,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brLg),
        titleTextStyle: AppTextStyles.dialogTitle,
        contentTextStyle: AppTextStyles.body,
      ),
      // Toast du handoff : carte blanche à filet, pas un pavé sombre.
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.toastBackground,
        contentTextStyle: AppTypography.sans(
          size: 13,
          weight: FontWeight.w600,
          height: 1.4,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadii.brCard,
          side: BorderSide(color: AppColors.border),
        ),
        elevation: 0,
        behavior: SnackBarBehavior.floating,
      ),
      // Animations minimales : pas de transition décorative d'entrée de page.
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: FadeForwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.windows: FadeForwardsPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.linux: FadeForwardsPageTransitionsBuilder(),
        },
      ),
    );
  }

  /// Applique l'échelle typographique nommée aux styles Material.
  static TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      displayLarge: AppTextStyles.kpi,
      headlineLarge: AppTextStyles.pageTitle,
      headlineMedium: AppTextStyles.sectionTitle,
      titleLarge: AppTextStyles.subtitle,
      titleMedium: AppTextStyles.bodyStrong,
      bodyLarge: AppTextStyles.body,
      bodyMedium: AppTextStyles.body,
      bodySmall: AppTextStyles.caption,
      labelLarge: AppTextStyles.button,
      labelMedium: AppTextStyles.label,
    );
  }

  static InputDecorationTheme _inputDecorationTheme() {
    OutlineInputBorder border(Color color, {double width = 1}) {
      return OutlineInputBorder(
        borderRadius: AppRadii.brMd,
        borderSide: BorderSide(color: color, width: width),
      );
    }

    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.sm,
      ),
      hintStyle: AppTypography.sans(size: 14, color: AppColors.textTertiary),
      labelStyle: AppTextStyles.label,
      // Les champs portent un filet plus marqué que les cartes (#C3C7CE).
      enabledBorder: border(AppColors.borderStrong),
      focusedBorder: border(AppColors.primary, width: 1.5),
      errorBorder: border(_danger, width: 1.5),
      focusedErrorBorder: border(_danger, width: 1.5),
      disabledBorder: border(AppColors.border),
    );
  }
}
