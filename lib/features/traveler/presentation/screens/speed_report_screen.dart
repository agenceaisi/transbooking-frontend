import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/utils/clock_provider.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../domain/feedback_repository.dart';
import '../speed_report_submit_controller.dart';
import '../widgets/reference_chip.dart';
import '../widgets/traveler_task_scaffold.dart';

/// Gravité ressentie — proxy d'interface. L'API n'a pas de champ dédié : le
/// choix est joint à la description transmise à la compagnie.
enum _Severity { low, medium, high }

/// Signalement d'excès de vitesse (maquette « Signalement excès de vitesse »).
///
/// Anonyme (guide §6.11). L'horodatage est posé côté serveur ; la
/// géolocalisation nécessiterait un plugin non intégré (CLAUDE.md §2) — elle est
/// donc présentée comme indisponible, sans bloquer l'envoi.
class SpeedReportScreen extends ConsumerStatefulWidget {
  const SpeedReportScreen({super.key});

  @override
  ConsumerState<SpeedReportScreen> createState() => _SpeedReportScreenState();
}

class _SpeedReportScreenState extends ConsumerState<SpeedReportScreen> {
  final _busController = TextEditingController();
  final _commentController = TextEditingController();
  _Severity _severity = _Severity.medium;
  bool _submitted = false;
  int? _referenceId;

  @override
  void dispose() {
    _busController.dispose();
    _commentController.dispose();
    super.dispose();
  }

  bool get _isValid => _commentController.text.trim().length >= 10;

  String _severityLabel(_Severity severity) {
    final l10n = context.l10n;
    return switch (severity) {
      _Severity.low => l10n.speedReportSeverityLow,
      _Severity.medium => l10n.speedReportSeverityMedium,
      _Severity.high => l10n.speedReportSeverityHigh,
    };
  }

  SpeedReportSeverity _severityWire(_Severity severity) => switch (severity) {
    _Severity.low => SpeedReportSeverity.low,
    _Severity.medium => SpeedReportSeverity.medium,
    _Severity.high => SpeedReportSeverity.high,
  };

  Future<void> _submit() async {
    final l10n = context.l10n;
    // La gravité part désormais dans son champ structuré (`severity`) ; on ne
    // garde dans la description que le bus/ligne éventuel et le commentaire.
    final buffer = StringBuffer();
    if (_busController.text.trim().isNotEmpty) {
      buffer.write(
        '${l10n.speedReportBusLabel} : ${_busController.text.trim()}. ',
      );
    }
    buffer.write(_commentController.text.trim());

    final reference = await ref
        .read(speedReportSubmitProvider.notifier)
        .submit(
          severity: _severityWire(_severity),
          description: buffer.toString(),
        );
    if (reference != null && mounted) {
      setState(() {
        _referenceId = reference;
        _submitted = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return TravelerTaskScaffold(
      title: l10n.speedReportTitle,
      subtitle: l10n.speedReportAnonymous,
      leadingIcon: Icons.warning_amber_rounded,
      leadingIconColor: AppStatusColors.danger.foreground,
      bottomBar: _submitted ? null : _submitBar(),
      child: _submitted ? _confirmation() : _form(),
    );
  }

  Widget _submitBar() {
    final submit = ref.watch(speedReportSubmitProvider);
    return PrimaryButton(
      label: context.l10n.speedReportSubmit,
      onPressed: _isValid ? _submit : null,
      isLoading: submit.isLoading,
    );
  }

  Widget _form() {
    final l10n = context.l10n;
    final submit = ref.watch(speedReportSubmitProvider);
    final now = ref.watch(clockProvider).value ?? DateTime.now();

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        InlineAlert(
          type: StatusType.info,
          title: l10n.speedReportShieldTitle,
          message: l10n.speedReportShieldMessage,
        ),
        const SizedBox(height: AppSpacing.lg),
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _AutoField(
                label: l10n.speedReportTimestamp,
                value: AppTimeFormat.mediumDateTime(context, now),
                icon: Icons.schedule_outlined,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: _AutoField(
                label: l10n.speedReportLocation,
                value: l10n.speedReportLocationUnavailable,
                icon: Icons.location_off_outlined,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        AppTextField(
          label: l10n.speedReportBusLabel,
          controller: _busController,
          optional: true,
          hintText: l10n.speedReportBusHint,
          textCapitalization: TextCapitalization.sentences,
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(l10n.speedReportSeverityFieldLabel, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xs),
        Row(
          children: [
            for (final severity in _Severity.values) ...[
              Expanded(
                child: _SeverityChip(
                  label: _severityLabel(severity),
                  palette: _paletteFor(severity),
                  selected: _severity == severity,
                  onTap: () => setState(() => _severity = severity),
                ),
              ),
              if (severity != _Severity.high)
                const SizedBox(width: AppSpacing.xs),
            ],
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        AppTextField(
          label: l10n.speedReportCommentLabel,
          controller: _commentController,
          hintText: l10n.speedReportCommentHint,
          maxLength: 600,
          keyboardType: TextInputType.multiline,
          textCapitalization: TextCapitalization.sentences,
          onChanged: (_) => setState(() {}),
          helperText: l10n.speedReportCommentHelper,
        ),
        if (submit.hasError) ...[
          const SizedBox(height: AppSpacing.md),
          InlineAlert(
            type: StatusType.danger,
            message: _errorMessage(submit.error!),
          ),
        ],
        const SizedBox(height: AppSpacing.md),
      ],
    );
  }

  Widget _confirmation() {
    final l10n = context.l10n;
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.xl),
      children: [
        const SizedBox(height: AppSpacing.lg),
        Center(
          child: Container(
            width: 88,
            height: 88,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppStatusColors.success.dot,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_rounded,
              size: 46,
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(
          l10n.speedReportThanksTitle,
          textAlign: TextAlign.center,
          style: AppTypography.serif(size: 22, weight: FontWeight.w600),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          l10n.speedReportThanksMessage,
          textAlign: TextAlign.center,
          style: AppTypography.sans(
            size: 14,
            height: 1.55,
            color: AppColors.textSecondary,
          ),
        ),
        if (_referenceId != null) ...[
          const SizedBox(height: AppSpacing.md),
          Center(
            child: ReferenceChip(
              label: l10n.speedReportReference(_referenceId!),
            ),
          ),
        ],
        const SizedBox(height: AppSpacing.xl),
        SecondaryButton(
          label: l10n.speedReportNewReport,
          onPressed: () {
            _commentController.clear();
            _busController.clear();
            ref.invalidate(speedReportSubmitProvider);
            setState(() {
              _severity = _Severity.medium;
              _submitted = false;
              _referenceId = null;
            });
          },
          expand: false,
        ),
      ],
    );
  }

  StatusPalette _paletteFor(_Severity severity) => switch (severity) {
    _Severity.low => AppStatusColors.success,
    _Severity.medium => AppStatusColors.warning,
    _Severity.high => AppStatusColors.danger,
  };

  String _errorMessage(Object error) => error is Failure
      ? error.localizedMessage(context.l10n)
      : context.l10n.failureUnexpected;
}

class _AutoField extends StatelessWidget {
  const _AutoField({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surfaceSubtle,
        borderRadius: AppRadii.brLg,
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 14, color: AppColors.textTertiary),
              const SizedBox(width: AppSpacing.xxs),
              Expanded(
                child: Text(
                  label.toUpperCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.eyebrow,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            value,
            style: AppTypography.sans(size: 13.5, weight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _SeverityChip extends StatelessWidget {
  const _SeverityChip({
    required this.label,
    required this.palette,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final StatusPalette palette;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? palette.background : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Container(
          height: AppSizes.control,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: AppRadii.brMd,
            border: Border.all(
              color: selected ? palette.foreground : AppColors.borderStrong,
              width: selected ? 1.5 : 1,
            ),
          ),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 13.5,
              weight: FontWeight.w600,
              color: selected ? palette.foreground : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
