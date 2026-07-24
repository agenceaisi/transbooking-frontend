import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';

/// Affiche le QR d'un billet, fourni par l'API en PNG encodé base64
/// (`BookingRead.qr_code`, guide §6.7).
///
/// Le QR n'est jamais généré côté client : on ne fait que rendre l'image reçue.
/// Une donnée illisible tombe sur un repli plutôt que de planter.
class QrCodeView extends StatelessWidget {
  const QrCodeView({required this.base64Png, this.size = 180, super.key});

  /// Contenu base64, avec ou sans préfixe `data:image/png;base64,`.
  final String? base64Png;
  final double size;

  @override
  Widget build(BuildContext context) {
    final bytes = _decode(base64Png);

    if (bytes == null) {
      return _Fallback(size: size, message: context.l10n.ticketQrUnavailable);
    }

    return Image.memory(
      bytes,
      width: size,
      height: size,
      gaplessPlayback: true,
      filterQuality: FilterQuality.none,
      errorBuilder: (context, _, _) =>
          _Fallback(size: size, message: context.l10n.ticketQrUnavailable),
    );
  }

  static Uint8List? _decode(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    final comma = raw.indexOf(',');
    final payload = raw.startsWith('data:') && comma >= 0
        ? raw.substring(comma + 1)
        : raw;
    try {
      return base64Decode(payload.trim());
    } on FormatException {
      return null;
    }
  }
}

class _Fallback extends StatelessWidget {
  const _Fallback({required this.size, required this.message});

  final double size;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        color: AppColors.surfaceSubtle,
        borderRadius: AppRadii.brMd,
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.qr_code_2, size: 40, color: AppColors.textTertiary),
          const SizedBox(height: AppSpacing.xs),
          Text(
            message,
            textAlign: TextAlign.center,
            style: AppTextStyles.caption,
          ),
        ],
      ),
    );
  }
}
