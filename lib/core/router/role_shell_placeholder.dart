import 'package:flutter/material.dart';

import '../localization/l10n_extension.dart';
import '../theme/app_theme.dart';

/// Coquille d'un espace tant que ses écrans ne sont pas construits.
///
/// Sert à vérifier l'aiguillage par rôle de bout en bout. Chaque module la
/// remplacera par son propre shell.
class RoleShellPlaceholder extends StatelessWidget {
  const RoleShellPlaceholder({required this.title, super.key});

  /// Libellé de l'espace, déjà traduit par l'appelant.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Center(
          child: Text(
            context.l10n.shellPlaceholderMessage,
            style: AppTextStyles.body,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
