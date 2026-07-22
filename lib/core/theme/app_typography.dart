import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Typographie centralisée du design system (handoff v2.0).
///
/// Trois familles, conformément aux maquettes validées :
///  - **IBM Plex Serif** — les titres, avec retenue. C'est ce qui donne le ton
///    institutionnel : titre de page, titre de section, titre de modale.
///  - **Public Sans** — sans-serif humaniste, tout le reste de l'interface.
///  - **JetBrains Mono** — les *données de référence* : numéro de billet,
///    code de suivi, montants, code de confirmation (OTP), heures, compteurs.
///    Chiffres à chasse fixe, pour que les colonnes s'alignent.
///
/// N'utiliser que les styles nommés de [AppTextStyles]. Les fabriques [serif],
/// [sans] et [mono] servent aux cas particuliers, pas à réinventer une échelle.
///
/// > Note terrain : `google_fonts` télécharge les polices au premier lancement
/// > puis les met en cache. Un appareil agent démarré sans réseau retombera
/// > sur la police système. Pour un usage 100 % hors-ligne, embarquer les
/// > `.ttf` dans `assets/fonts/` — ce fichier est le seul à modifier.
abstract final class AppTypography {
  /// Style IBM Plex Serif paramétrable — réservé aux titres.
  static TextStyle serif({
    required double size,
    FontWeight weight = FontWeight.w600,
    Color color = AppColors.textPrimary,
    double? height,
    double? letterSpacing,
  }) {
    return GoogleFonts.ibmPlexSerif(
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  /// Style Public Sans paramétrable.
  ///
  /// [tabular] aligne les chiffres (compteurs, KPI affichés en Public Sans).
  static TextStyle sans({
    required double size,
    FontWeight weight = FontWeight.w400,
    Color color = AppColors.textPrimary,
    double? height,
    double? letterSpacing,
    bool tabular = false,
  }) {
    return GoogleFonts.publicSans(
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
      fontFeatures: tabular ? const [FontFeature.tabularFigures()] : null,
    );
  }

  /// Style JetBrains Mono paramétrable (chiffres tabulaires toujours actifs).
  static TextStyle mono({
    required double size,
    FontWeight weight = FontWeight.w500,
    Color color = AppColors.textPrimary,
    double? height,
    double? letterSpacing,
  }) {
    return GoogleFonts.jetBrainsMono(
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
      fontFeatures: const [FontFeature.tabularFigures()],
    );
  }
}

/// Échelle typographique nommée des maquettes (section « Typographie » du
/// handoff).
///
/// Sept styles de base couvrent l'interface ; les variantes monospace couvrent
/// les données de référence.
abstract final class AppTextStyles {
  // ── Titres (IBM Plex Serif) ──────────────────────────────────────────────
  /// Titre d'écran — 28 / 600.
  static TextStyle get pageTitle =>
      AppTypography.serif(size: 28, height: 1.12, letterSpacing: -0.14);

  /// Titre de section — 21 / 600.
  static TextStyle get sectionTitle =>
      AppTypography.serif(size: 21, height: 1.15, letterSpacing: -0.1);

  /// Titre de modale, de tiroir ou de carte de formulaire — 18 / 600.
  static TextStyle get dialogTitle =>
      AppTypography.serif(size: 18, height: 1.25);

  // ── Interface (Public Sans) ──────────────────────────────────────────────
  /// Sous-titre / intitulé de bloc — 17 / 600.
  static TextStyle get subtitle =>
      AppTypography.sans(size: 17, weight: FontWeight.w600, height: 1.3);

  /// Corps de texte — 15 / 400.
  static TextStyle get body => AppTypography.sans(size: 15, height: 1.55);

  /// Corps accentué — 15 / 600.
  static TextStyle get bodyStrong =>
      AppTypography.sans(size: 15, weight: FontWeight.w600, height: 1.45);

  /// Légende, métadonnée — 13 / 400.
  static TextStyle get caption => AppTypography.sans(
    size: 13,
    height: 1.45,
    color: AppColors.textSecondary,
  );

  /// Chiffre clé d'un indicateur — 38 / 700, chiffres tabulaires.
  static TextStyle get kpi => AppTypography.sans(
    size: 38,
    weight: FontWeight.w700,
    height: 1.1,
    letterSpacing: -0.76,
    tabular: true,
  );

  /// Libellé de bouton — 14 / 600.
  static TextStyle get button =>
      AppTypography.sans(size: 14, weight: FontWeight.w600, height: 1.2);

  /// Libellé de champ / de section, au-dessus d'un contenu — 13 / 600.
  static TextStyle get label => AppTypography.sans(
    size: 13,
    weight: FontWeight.w600,
    color: AppColors.textStrong,
  );

  /// Texte d'un badge de statut — 13 / 600.
  static TextStyle get badge =>
      AppTypography.sans(size: 13, weight: FontWeight.w600, height: 1.2);

  // ── Données de référence (JetBrains Mono) ────────────────────────────────
  /// Numéro de billet, code de suivi — 15 / 500.
  static TextStyle get reference =>
      AppTypography.mono(size: 15, weight: FontWeight.w500, letterSpacing: 0.2);

  /// Numéro de billet mis en avant (carte de billet, en-tête de détail).
  static TextStyle get referenceLarge =>
      AppTypography.mono(size: 17, weight: FontWeight.w500, letterSpacing: 0.3);

  /// Numéro de billet en petit (listes, tableaux).
  static TextStyle get referenceSmall =>
      AppTypography.mono(size: 13, letterSpacing: 0.2);

  /// Montant en FCFA.
  static TextStyle get amount =>
      AppTypography.mono(size: 15, weight: FontWeight.w700);

  /// Chiffre du code de confirmation (OTP).
  static TextStyle get otpDigit =>
      AppTypography.mono(size: 24, weight: FontWeight.w500, height: 1.1);

  /// Étiquette technique en capitales espacées (en-têtes de section, tags).
  static TextStyle get eyebrow => AppTypography.mono(
    size: 11,
    weight: FontWeight.w600,
    letterSpacing: 1.1,
    color: AppColors.textTertiary,
  );
}
