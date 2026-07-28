import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/localization/l10n_extension.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/secondary_button.dart';
import '../../../core/widgets/status_badge.dart';
import '../domain/seat_correction.dart';
import 'agent_providers.dart';

/// Ouvre la modale « billet corrigé » dès qu'une synchronisation réattribue
/// un siège (guide §6.15).
///
/// À appeler depuis `build()` (n'importe quel `ConsumerWidget`/`ConsumerState`
/// dont l'écran reste monté, typiquement le tableau de bord — seul écran
/// agent toujours à l'écran).
void listenForSeatCorrections(WidgetRef ref, BuildContext context) {
  ref.listen<AsyncValue<SeatCorrection>>(seatCorrectionsProvider, (
    previous,
    next,
  ) {
    final correction = next.value;
    if (correction == null) return;
    _showSeatCorrectedDialog(context, ref, correction);
  });
}

void _showSeatCorrectedDialog(
  BuildContext context,
  WidgetRef ref,
  SeatCorrection correction,
) {
  final l10n = context.l10n;
  final originalSeat = correction.originalSeat;
  showDialog<void>(
    context: context,
    builder: (dialogContext) => Dialog(
      shape: const RoundedRectangleBorder(borderRadius: AppRadii.brLg),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 52,
              height: 52,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppStatusColors.warning.background,
                borderRadius: AppRadii.brMd,
              ),
              child: Icon(
                Icons.warning_amber_rounded,
                color: AppStatusColors.warning.foreground,
                size: 26,
              ),
            ),
            const SizedBox(height: AppSpacing.sm + 2),
            StatusBadge(
              label: l10n.agentSeatCorrectedBadge,
              type: StatusType.warning,
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              l10n.agentSeatCorrectedTitle,
              style: AppTextStyles.dialogTitle,
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              originalSeat != null
                  ? l10n.agentSeatCorrectedBodyWithOriginal(
                      correction.passengerName,
                      originalSeat,
                      correction.newSeat,
                    )
                  : l10n.agentSeatCorrectedBody(
                      correction.passengerName,
                      correction.newSeat,
                    ),
              style: AppTextStyles.body,
            ),
            const SizedBox(height: AppSpacing.md),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.sm + 2,
              ),
              decoration: BoxDecoration(
                color: AppColors.surfaceSubtle,
                borderRadius: AppRadii.brLg,
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.agentSeatCorrectedNewSeatLabel,
                    style: AppTextStyles.bodyStrong,
                  ),
                  Text(
                    correction.newSeat,
                    style: AppTextStyles.dialogTitle.copyWith(
                      color: AppColors.primary900,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Row(
              children: [
                Expanded(
                  child: SecondaryButton(
                    label: l10n.actionClose,
                    onPressed: () => Navigator.of(dialogContext).pop(),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: PrimaryButton(
                    label: l10n.agentPassengerPrint,
                    icon: Icons.print_outlined,
                    onPressed: () {
                      Navigator.of(dialogContext).pop();
                      // Fire-and-forget : l'imprimante thermique du guichet
                      // n'a pas d'écran de suivi dédié à ce stade (aucun
                      // package d'impression validé, cf. mémoire du projet).
                      ref
                          .read(agentBookingRepositoryProvider)
                          .printTicket(correction.ticketNumber);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
