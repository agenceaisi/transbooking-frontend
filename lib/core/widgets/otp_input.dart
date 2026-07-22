import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_theme.dart';

/// Saisie du code de confirmation Mobile Money.
///
/// Six chiffres en monospace, conformément au design system (données de
/// référence). Appelle [onCompleted] dès que les six chiffres sont saisis, ce
/// qui évite un appui supplémentaire au guichet.
class OtpInput extends StatefulWidget {
  const OtpInput({
    required this.onCompleted,
    this.onChanged,
    this.length = 6,
    this.enabled = true,
    this.hasError = false,
    this.autofocus = true,
    super.key,
  });

  /// Appelé avec le code complet.
  final ValueChanged<String> onCompleted;

  /// Appelé à chaque frappe — sert à effacer un message d'erreur précédent.
  final ValueChanged<String>? onChanged;

  /// Longueur du code envoyé par l'API.
  final int length;

  /// Désactivé pendant la vérification, ou une fois le code expiré.
  final bool enabled;

  /// Code refusé : les cases passent en rouge.
  final bool hasError;

  final bool autofocus;

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    setState(() {});
    widget.onChanged?.call(value);
    if (value.length == widget.length) {
      widget.onCompleted(value);
    }
  }

  /// Le champ réel est invisible : les cases ne sont qu'un rendu de son
  /// contenu. Une seule source de vérité, et le clavier natif fonctionne.
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Semantics(
            textField: true,
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              autofocus: widget.autofocus,
              enabled: widget.enabled,
              keyboardType: TextInputType.number,
              maxLength: widget.length,
              showCursor: false,
              style: const TextStyle(color: Colors.transparent),
              decoration: const InputDecoration(
                counterText: '',
                border: InputBorder.none,
                fillColor: Colors.transparent,
                filled: false,
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: _onChanged,
            ),
          ),
        ),
        IgnorePointer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(widget.length, _buildBox),
          ),
        ),
      ],
    );
  }

  Widget _buildBox(int index) {
    final value = _controller.text;
    final hasDigit = index < value.length;
    final isNext = index == value.length && _focusNode.hasFocus;

    final Color borderColor;
    if (widget.hasError) {
      borderColor = AppStatusColors.danger.dot;
    } else if (isNext) {
      borderColor = AppColors.primary;
    } else {
      borderColor = AppColors.border;
    }

    return Container(
      width: AppSizes.otpBox,
      height: AppSizes.otpBox + 4,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.enabled ? AppColors.surface : AppColors.surfaceSubtle,
        border: Border.all(
          color: borderColor,
          width: isNext || widget.hasError ? 1.5 : 1,
        ),
        borderRadius: AppRadii.brMd,
      ),
      child: Text(
        hasDigit ? value[index] : '',
        style: AppTextStyles.otpDigit.copyWith(
          color: widget.hasError
              ? AppStatusColors.danger.foreground
              : AppColors.textPrimary,
        ),
      ),
    );
  }
}
