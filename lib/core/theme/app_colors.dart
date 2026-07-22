import 'package:flutter/widgets.dart';

/// Palette centralisée du design system TransBooking BF.
///
/// Valeurs issues de « TransBooking BF - Design System.dc.html » (handoff
/// v2.0, juillet 2026) : indigo institutionnel en primaire, laiton en accent
/// unique — réservé aux CTA clés, jamais en fond large — sur un papier blanc
/// cassé. Aucune couleur ne doit être écrite en dur ailleurs dans le code.
///
/// Les couleurs sémantiques de statut (succès / info / attention / erreur /
/// neutre) vivent dans `AppStatusColors` : elles vont par jeux de quatre tons.
abstract final class AppColors {
  // ── Primaire — indigo institutionnel (confiance) ─────────────────────────
  /// Fond des puces, survols discrets, zones vides.
  static const Color primary50 = Color(0xFFF1F3F7);
  static const Color primary100 = Color(0xFFE4E8EF);
  static const Color primary300 = Color(0xFF7C8CAA);
  static const Color primary500 = Color(0xFF2E4368);

  /// Ton de base de la marque.
  static const Color primary700 = Color(0xFF1B2A4A);

  /// États survolés / pressés.
  static const Color primary900 = Color(0xFF12203A);

  /// Alias du ton de base — à préférer dans le code applicatif.
  static const Color primary = primary700;

  // ── Accent — laiton (CTA ponctuels, jalons) ──────────────────────────────
  // Jamais la couleur par défaut d'un bouton : elle perd son sens si elle est
  // partout.
  static const Color accent50 = Color(0xFFF6F1E7);
  static const Color accent100 = Color(0xFFEDE3CE);
  static const Color accent300 = Color(0xFFC9AD74);

  /// Ton de base de l'accent.
  static const Color accent500 = Color(0xFFA8823D);
  static const Color accent700 = Color(0xFF7A5F28);

  /// Alias du ton de base.
  static const Color accent = accent500;

  // ── Neutres — papier, filets, textes ─────────────────────────────────────
  static const Color white = Color(0xFFFFFFFF);

  /// Papier blanc cassé — fond général de l'application.
  static const Color paper = Color(0xFFFAF9F6);
  static const Color neutral100 = Color(0xFFF4F2EC);
  static const Color neutral200 = Color(0xFFECEAE4);
  static const Color neutral300 = Color(0xFFDCDFE3);
  static const Color neutral400 = Color(0xFFC3C7CE);
  static const Color neutral500 = Color(0xFF878D99);

  /// Graphite — libellés de formulaire, texte des boutons tertiaires.
  static const Color graphite = Color(0xFF3A3F49);

  /// Ardoise — texte secondaire.
  static const Color slate = Color(0xFF5C6470);

  /// Encre — texte principal.
  static const Color ink = Color(0xFF1A1A1A);

  // ── Alias de rôle (à privilégier dans les widgets) ───────────────────────
  /// Fond général de l'application.
  static const Color background = paper;

  /// Surface des cartes et feuilles.
  static const Color surface = white;

  /// Surface discrète (rails, panneaux latéraux, en-têtes de tableau).
  static const Color surfaceSubtle = neutral100;

  /// Ligne alternée d'un tableau zébré.
  static const Color rowAlternate = Color(0xFFF9F7F2);

  /// Texte principal.
  static const Color textPrimary = ink;

  /// Texte fort (libellés de champ, en-têtes de tableau, boutons tertiaires).
  static const Color textStrong = graphite;

  /// Texte secondaire (descriptions, aides).
  static const Color textSecondary = slate;

  /// Texte tertiaire (métadonnées, placeholders, étiquettes techniques).
  static const Color textTertiary = neutral500;

  /// Texte posé sur la couleur primaire.
  static const Color onPrimary = white;

  /// Texte secondaire posé sur la couleur primaire (menu latéral inactif).
  static const Color onPrimaryMuted = Color(0xFFC7CEDD);

  /// Bordure par défaut des cartes.
  static const Color border = neutral300;

  /// Bordure douce (séparateurs internes, lignes de tableau).
  static const Color borderSoft = neutral200;

  /// Bordure forte (champs de saisie, boutons tertiaires, éléments désactivés).
  static const Color borderStrong = neutral400;

  /// Séparateur très fin.
  static const Color divider = neutral200;

  /// Piste des barres de progression et des jauges.
  static const Color track = neutral200;

  /// Voile modal derrière les feuilles et boîtes de dialogue.
  static const Color scrim = Color(0x731A1A1A);

  /// Fond des toasts — carte blanche à filet coloré, pas de pavé sombre.
  static const Color toastBackground = white;
}
