import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Filtre déroulant du module agent — destination, véhicule…
///
/// Les options viennent toujours des données déjà chargées (programme du
/// jour), jamais d'une liste séparée : un filtre ne propose que des valeurs
/// qui donneront au moins un résultat.
class AgentFilterDropdown extends StatelessWidget {
  const AgentFilterDropdown({
    required this.hint,
    required this.value,
    required this.options,
    required this.onChanged,
    super.key,
  });

  final String hint;
  final String? value;
  final List<String> options;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      initialValue: options.contains(value) ? value : null,
      isExpanded: true,
      icon: const Icon(Icons.expand_more, size: 18),
      decoration: InputDecoration(
        hintText: hint,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
        filled: true,
        fillColor: AppColors.surface,
        border: const OutlineInputBorder(
          borderRadius: AppRadii.brMd,
          borderSide: BorderSide(color: AppColors.border),
        ),
      ),
      items: [
        DropdownMenuItem(value: null, child: Text(hint)),
        for (final option in options)
          DropdownMenuItem(value: option, child: Text(option)),
      ],
      onChanged: onChanged,
    );
  }
}
