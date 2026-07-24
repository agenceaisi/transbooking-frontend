import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/parcel_tracking.dart';

/// Timeline verticale de progression d'un colis.
///
/// Dérivée du champ `status` typé (cf. [ParcelTracking]) : étape faite (indigo
/// plein), en cours (contour indigo + pastille « En cours »), à venir (gris).
class ParcelTimeline extends StatelessWidget {
  const ParcelTimeline({required this.steps, super.key});

  final List<ParcelTimelineStep> steps;

  /// Libellé d'une étape, aligné sur les valeurs `*_display` de l'API.
  static String stageLabel(AppLocalizations l10n, ParcelStage stage) {
    return switch (stage) {
      ParcelStage.registered => l10n.parcelStageRegistered,
      ParcelStage.inTransit => l10n.parcelStageInTransit,
      ParcelStage.arrived => l10n.parcelStageArrived,
      ParcelStage.notified => l10n.parcelStageNotified,
      ParcelStage.collected => l10n.parcelStageCollected,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < steps.length; i++)
          _StepRow(step: steps[i], isLast: i == steps.length - 1),
      ],
    );
  }
}

class _StepRow extends StatelessWidget {
  const _StepRow({required this.step, required this.isLast});

  final ParcelTimelineStep step;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final done = step.state == ParcelStageState.done;
    final current = step.state == ParcelStageState.current;
    final active = done || current;

    final nodeColor = done
        ? AppColors.primary
        : current
        ? AppColors.primary50
        : AppColors.surfaceSubtle;
    final borderColor = active ? AppColors.primary : AppColors.borderStrong;
    final iconColor = done
        ? AppColors.onPrimary
        : current
        ? AppColors.primary
        : AppColors.textTertiary;
    final lineColor = done ? AppColors.primary : AppColors.border;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 34,
                height: 34,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: nodeColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: borderColor, width: 2),
                ),
                child: Icon(
                  done ? Icons.check : Icons.circle,
                  size: done ? 16 : 8,
                  color: iconColor,
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    constraints: const BoxConstraints(minHeight: 28),
                    color: lineColor,
                  ),
                ),
            ],
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        ParcelTimeline.stageLabel(l10n, step.stage),
                        style: AppTypography.sans(
                          size: 15,
                          weight: FontWeight.w700,
                          color: active
                              ? AppColors.textPrimary
                              : AppColors.textTertiary,
                        ),
                      ),
                      if (current) ...[
                        const SizedBox(width: AppSpacing.xs),
                        _CurrentTag(label: l10n.trackingStageCurrent),
                      ],
                    ],
                  ),
                  if (step.note != null && step.note!.isNotEmpty) ...[
                    const SizedBox(height: AppSpacing.xxs + 1),
                    Text(
                      step.note!,
                      style: AppTypography.sans(
                        size: 13,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                  if (step.timestamp != null || step.location != null) ...[
                    const SizedBox(height: AppSpacing.xxs + 1),
                    Text(
                      _stampLabel(context, step),
                      style: AppTypography.mono(
                        size: 11.5,
                        weight: FontWeight.w500,
                        color: AppColors.textTertiary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Lieu et horodatage d'une étape — « Boromo · 08 juil. 2026 · 07:40 ».
String _stampLabel(BuildContext context, ParcelTimelineStep step) {
  final parts = <String>[
    if (step.location != null && step.location!.isNotEmpty) step.location!,
    if (step.timestamp != null)
      AppTimeFormat.mediumDateTime(context, step.timestamp!),
  ];
  return parts.join(' · ');
}

class _CurrentTag extends StatelessWidget {
  const _CurrentTag({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs,
        vertical: 2,
      ),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        label.toUpperCase(),
        style: AppTypography.mono(
          size: 9.5,
          weight: FontWeight.w600,
          letterSpacing: 0.5,
          color: AppColors.onPrimary,
        ),
      ),
    );
  }
}
