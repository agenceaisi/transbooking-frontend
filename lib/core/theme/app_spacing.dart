import 'package:flutter/widgets.dart';

import 'app_colors.dart';

/// Échelle d'espacements (grille souple 4/8 px).
///
/// Les marges du produit sont généreuses : préférer les valeurs hautes pour
/// séparer les blocs, les basses pour l'intérieur d'un composant.
abstract final class AppSpacing {
  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 20;
  static const double xl = 24;
  static const double xxl = 32;
  static const double xxxl = 40;

  /// Marge horizontale des écrans en vue mobile.
  static const double screenMobile = md;

  /// Marge horizontale des écrans en vue desktop.
  static const double screenDesktop = xxl;
}

/// Rayons d'arrondi — « ni carrés, ni très ronds » (handoff v2.0).
abstract final class AppRadii {
  /// Petites puces, tags, lignes de squelette.
  static const double sm = 6;

  /// Boutons, champs, pastilles d'icône.
  static const double md = 8;

  /// Cartes et encarts — la valeur dominante des maquettes.
  static const double card = 10;

  /// Modale, conteneurs élevés.
  static const double lg = 12;

  /// Grand conteneur (cadre mobile, panneau desktop).
  static const double xl = 16;

  /// Feuille inférieure (coins hauts uniquement).
  static const double sheet = 20;

  /// Badges et pastilles entièrement arrondis.
  static const double pill = 999;

  static const BorderRadius brSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius brMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius brLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius brCard = BorderRadius.all(Radius.circular(card));
  static const BorderRadius brXl = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius brPill = BorderRadius.all(Radius.circular(pill));
  static const BorderRadius brSheetTop = BorderRadius.only(
    topLeft: Radius.circular(sheet),
    topRight: Radius.circular(sheet),
  );
}

/// Ombres portées — discrètes, elles structurent sans décorer.
abstract final class AppShadows {
  /// Carte standard.
  static const List<BoxShadow> card = [
    BoxShadow(color: Color(0x0A000000), offset: Offset(0, 2), blurRadius: 8),
  ];

  /// Bouton primaire (teinte indigo).
  static const List<BoxShadow> buttonPrimary = [
    BoxShadow(color: Color(0x331B2A4A), offset: Offset(0, 2), blurRadius: 6),
  ];

  /// Modale et conteneur desktop élevé.
  static const List<BoxShadow> elevated = [
    BoxShadow(color: Color(0x47000000), offset: Offset(0, 24), blurRadius: 60),
  ];

  /// Tiroir latéral (ombre projetée vers la gauche).
  static const List<BoxShadow> drawer = [
    BoxShadow(color: Color(0x2E000000), offset: Offset(-12, 0), blurRadius: 40),
  ];

  /// Feuille inférieure (ombre projetée vers le haut).
  static const List<BoxShadow> sheet = [
    BoxShadow(color: Color(0x2E000000), offset: Offset(0, -12), blurRadius: 40),
  ];

  /// Toast.
  static const List<BoxShadow> toast = [
    BoxShadow(color: Color(0x24000000), offset: Offset(0, 10), blurRadius: 30),
  ];
}

/// Points de rupture responsive.
///
/// L'application privilégie le mobile (usage terrain des agents) ; la mise en
/// page desktop/tablette s'active à partir de [desktop].
abstract final class AppBreakpoints {
  static const double desktop = 1024;

  static bool isDesktop(double width) => width >= desktop;
}

/// Filets réutilisables.
abstract final class AppBorders {
  static const BorderSide side = BorderSide(color: AppColors.border);

  static const Border card = Border.fromBorderSide(side);
}

/// Épaisseurs et tailles récurrentes des composants.
abstract final class AppSizes {
  /// Hauteur des boutons et des champs de saisie.
  static const double control = 48;

  /// Hauteur des boutons compacts (barres d'outils).
  static const double controlCompact = 38;

  /// Côté d'une pastille de statut.
  static const double statusDot = 8;

  /// Côté d'une pastille de statut mise en avant (bandeau de connexion).
  static const double statusDotLarge = 13;

  /// Épaisseur du halo teinté autour d'une pastille mise en avant.
  static const double statusDotHalo = 5;

  /// Icône d'accompagnement dans un texte ou un bouton compact.
  static const double iconSm = 18;

  /// Icône d'une pastille d'action ou d'alerte.
  static const double iconMd = 24;

  /// Côté d'une case de saisie du code de confirmation.
  static const double otpBox = 52;
}
