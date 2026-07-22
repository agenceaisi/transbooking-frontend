import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../localization/l10n_extension.dart';
import '../theme/app_theme.dart';

/// Champ de saisie du design system.
///
/// Reprend la structure des maquettes : libellé au-dessus du champ (et non
/// flottant), filet fin, message d'erreur en dessous. Les erreurs viennent
/// aussi bien de la validation locale que des messages de champ renvoyés par
/// l'API (`{ "phone": ["…"] }`, guide §4) — les deux s'affichent au même
/// endroit.
class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.label,
    required this.controller,
    this.hintText,
    this.errorText,
    this.helperText,
    this.labelTrailing,
    this.optional = false,
    this.obscure = false,
    this.enabled = true,
    this.autofocus = false,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.autofillHints,
    this.inputFormatters,
    this.maxLength,
    this.onChanged,
    this.onSubmitted,
    super.key,
  });

  /// Libellé, déjà traduit.
  final String label;

  final TextEditingController controller;

  final String? hintText;

  /// Message d'erreur ; le champ passe au rouge tant qu'il est non nul.
  final String? errorText;

  /// Aide affichée sous le champ, en l'absence d'erreur.
  final String? helperText;

  /// Élément posé à droite du libellé (ex. « Mot de passe oublié ? »).
  final Widget? labelTrailing;

  /// Ajoute la mention « (optionnel) » au libellé.
  final bool optional;

  /// Masque la saisie et ajoute l'œil de révélation.
  final bool obscure;

  final bool enabled;

  final bool autofocus;

  final TextInputType? keyboardType;

  final TextInputAction? textInputAction;

  final TextCapitalization textCapitalization;

  final Iterable<String>? autofillHints;

  final List<TextInputFormatter>? inputFormatters;

  final int? maxLength;

  final ValueChanged<String>? onChanged;

  final ValueChanged<String>? onSubmitted;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  /// Révélation du mot de passe — état purement local au champ.
  bool _revealed = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final hasError = widget.errorText != null;
    final isObscured = widget.obscure && !_revealed;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: _FieldLabel(
                label: widget.label,
                optional: widget.optional,
                optionalSuffix: l10n.fieldOptional,
              ),
            ),
            if (widget.labelTrailing != null) widget.labelTrailing!,
          ],
        ),
        const SizedBox(height: AppSpacing.xxs + 2),
        TextField(
          controller: widget.controller,
          enabled: widget.enabled,
          autofocus: widget.autofocus,
          obscureText: isObscured,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          autofillHints: widget.autofillHints,
          inputFormatters: widget.inputFormatters,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          onSubmitted: widget.onSubmitted,
          style: AppTextStyles.body,
          decoration: InputDecoration(
            hintText: widget.hintText,
            errorText: widget.errorText,
            helperText: hasError ? null : widget.helperText,
            counterText: '',
            suffixIcon: widget.obscure
                ? _RevealButton(
                    revealed: _revealed,
                    onPressed: () => setState(() => _revealed = !_revealed),
                    showLabel: l10n.passwordShow,
                    hideLabel: l10n.passwordHide,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}

/// Libellé posé au-dessus du champ.
class _FieldLabel extends StatelessWidget {
  const _FieldLabel({
    required this.label,
    required this.optional,
    required this.optionalSuffix,
  });

  final String label;
  final bool optional;
  final String optionalSuffix;

  @override
  Widget build(BuildContext context) {
    if (!optional) return Text(label, style: AppTextStyles.label);

    return Text.rich(
      TextSpan(
        text: '$label ',
        style: AppTextStyles.label,
        children: [
          TextSpan(
            text: optionalSuffix,
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textTertiary,
            ),
          ),
        ],
      ),
    );
  }
}

/// Œil de révélation d'un mot de passe.
class _RevealButton extends StatelessWidget {
  const _RevealButton({
    required this.revealed,
    required this.onPressed,
    required this.showLabel,
    required this.hideLabel,
  });

  final bool revealed;
  final VoidCallback onPressed;
  final String showLabel;
  final String hideLabel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        revealed ? Icons.visibility_off_outlined : Icons.visibility_outlined,
        size: 20,
        color: AppColors.textTertiary,
      ),
      tooltip: revealed ? hideLabel : showLabel,
      splashRadius: 20,
    );
  }
}
