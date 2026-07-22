import 'package:flutter/widgets.dart';

/// Statuts sémantiques du design system (handoff v2.0).
///
/// Seules couleurs restées inchangées entre les deux directions visuelles :
/// leur signification est **fixe** dans toute l'application et alignée sur les
/// énumérations de l'API (cf. guide d'intégration §5) :
///
/// | Statut     | Sens métier                                                  |
/// |------------|--------------------------------------------------------------|
/// | [success]  | payé · connecté · actif · voyage en cours                      |
/// | [info]     | programmé · synchronisation en cours (variante clignotante)    |
/// | [warning]  | retardé · code à saisir · hors-ligne avec données en attente   |
/// | [danger]   | annulé · non payé · suspendu · échec de synchronisation        |
/// | [neutral]  | inactif · hors-ligne sans données en attente                   |
enum StatusType { success, info, warning, danger, neutral }

/// Jeu de quatre tons cohérents pour un statut.
///
/// [background] et [border] habillent le conteneur, [foreground] porte le
/// texte, [dot] la pastille. Toujours utiliser les quatre ensemble : c'est ce
/// qui garantit un contraste correct.
@immutable
class StatusPalette {
  const StatusPalette({
    required this.background,
    required this.foreground,
    required this.dot,
    required this.border,
  });

  /// Fond du badge / de la carte.
  final Color background;

  /// Texte et icônes.
  final Color foreground;

  /// Pastille de statut.
  final Color dot;

  /// Filet du conteneur.
  final Color border;
}

/// Accès aux palettes de statut.
abstract final class AppStatusColors {
  /// Vert — succès.
  static const StatusPalette success = StatusPalette(
    background: Color(0xFFE4F3EB),
    foreground: Color(0xFF137A48),
    dot: Color(0xFF1B9E5A),
    border: Color(0xFFC6E7D3),
  );

  /// Bleu — information.
  static const StatusPalette info = StatusPalette(
    background: Color(0xFFE6EEFB),
    foreground: Color(0xFF1D4FB0),
    dot: Color(0xFF2563C9),
    border: Color(0xFFC6D8F5),
  );

  /// Orange — attention.
  static const StatusPalette warning = StatusPalette(
    background: Color(0xFFFBEBD4),
    foreground: Color(0xFF9A5B12),
    dot: Color(0xFFE8962F),
    border: Color(0xFFF1D9AE),
  );

  /// Rouge — erreur.
  static const StatusPalette danger = StatusPalette(
    background: Color(0xFFFBE3E3),
    foreground: Color(0xFFB3261E),
    dot: Color(0xFFD23B3B),
    border: Color(0xFFF3C9C9),
  );

  /// Gris — neutre.
  static const StatusPalette neutral = StatusPalette(
    background: Color(0xFFECEAE4),
    foreground: Color(0xFF4B5160),
    dot: Color(0xFF6B7280),
    border: Color(0xFFD7D9E0),
  );

  /// Palette correspondant à [type].
  static StatusPalette of(StatusType type) => switch (type) {
    StatusType.success => success,
    StatusType.info => info,
    StatusType.warning => warning,
    StatusType.danger => danger,
    StatusType.neutral => neutral,
  };
}
