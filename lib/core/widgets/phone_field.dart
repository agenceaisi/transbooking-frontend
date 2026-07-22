import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../localization/l10n_extension.dart';
import '../theme/app_theme.dart';
import '../utils/phone_number.dart';

/// Champ de saisie d'un numéro burkinabè.
///
/// Reprend le composant des maquettes : libellé au-dessus, indicatif `+226`
/// dans un pavé grisé accolé au champ. L'utilisateur ne saisit que les huit
/// chiffres locaux ; [BfPhone.full] recompose la valeur attendue par l'API
/// (`+22670000000`).
class PhoneField extends StatelessWidget {
  const PhoneField({
    required this.controller,
    this.label,
    this.errorText,
    this.enabled = true,
    this.autofocus = false,
    this.textInputAction,
    this.onChanged,
    this.onSubmitted,
    super.key,
  });

  final TextEditingController controller;

  /// Libellé, déjà traduit ; celui des `.arb` par défaut.
  final String? label;

  /// Message d'erreur (validation locale ou champ `phone` renvoyé par l'API).
  final String? errorText;

  final bool enabled;

  final bool autofocus;

  final TextInputAction? textInputAction;

  final ValueChanged<String>? onChanged;

  final ValueChanged<String>? onSubmitted;

  /// Longueur de la partie locale — cf. [BfPhone].
  static const int localLength = BfPhone.localLength;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final hasError = errorText != null;
    final borderColor = hasError
        ? AppStatusColors.danger.dot
        : AppColors.borderStrong;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? l10n.phoneFieldLabel, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xxs + 2),
        Container(
          decoration: BoxDecoration(
            color: enabled ? AppColors.surface : AppColors.surfaceSubtle,
            borderRadius: AppRadii.brMd,
            border: Border.all(color: borderColor, width: hasError ? 1.5 : 1),
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              _CountryPrefix(code: l10n.phoneCountryPrefix),
              Expanded(
                child: TextField(
                  controller: controller,
                  enabled: enabled,
                  autofocus: autofocus,
                  keyboardType: TextInputType.phone,
                  textInputAction: textInputAction,
                  autofillHints: const [AutofillHints.telephoneNumberLocal],
                  style: AppTextStyles.reference,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(localLength),
                  ],
                  onChanged: onChanged,
                  onSubmitted: onSubmitted,
                  decoration: InputDecoration(
                    hintText: l10n.phoneFieldHint,
                    // Le filet est porté par le conteneur : le champ lui-même
                    // n'en dessine aucun, sinon on en verrait deux.
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    filled: false,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm,
                      vertical: AppSpacing.sm + 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (hasError) ...[
          const SizedBox(height: AppSpacing.xxs + 2),
          Text(
            errorText!,
            style: AppTextStyles.caption.copyWith(
              color: AppStatusColors.danger.foreground,
            ),
          ),
        ],
      ],
    );
  }
}

/// Pavé fixe de l'indicatif, accolé au champ.
class _CountryPrefix extends StatelessWidget {
  const _CountryPrefix({required this.code});

  final String code;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.sm + 2,
      ),
      decoration: const BoxDecoration(
        color: AppColors.neutral100,
        border: Border(right: BorderSide(color: AppColors.border)),
      ),
      child: Text(
        code,
        style: AppTextStyles.bodyStrong.copyWith(
          fontSize: 14,
          color: AppColors.textStrong,
        ),
      ),
    );
  }
}
