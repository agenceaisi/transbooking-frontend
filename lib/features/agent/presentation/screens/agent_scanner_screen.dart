import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/sync/connection_providers.dart';
import '../../../../core/sync/connection_status.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/scan_history_entry.dart';
import '../../domain/scan_outcome.dart';
import '../scanner_controller.dart';

/// Scanner de billets à l'embarquement (maquette « Scanner QR code »).
///
/// La ligne de balayage animée et le halo décoratifs de la maquette sont
/// omis (CLAUDE.md §4 : « animations fonctionnelles uniquement ») — le viseur
/// reste un simple cadre statique.
class AgentScannerScreen extends ConsumerStatefulWidget {
  const AgentScannerScreen({super.key});

  @override
  ConsumerState<AgentScannerScreen> createState() => _AgentScannerScreenState();
}

class _AgentScannerScreenState extends ConsumerState<AgentScannerScreen> {
  late final MobileScannerController _camera;

  @override
  void initState() {
    super.initState();
    _camera = MobileScannerController(formats: const [BarcodeFormat.qrCode]);
  }

  @override
  void dispose() {
    _camera.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    final rawValue = capture.barcodes.isEmpty
        ? null
        : capture.barcodes.first.rawValue;
    if (rawValue == null) return;
    ref.read(scannerControllerProvider.notifier).onCodeDetected(rawValue);
  }

  void _toast(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    ref.listen(scannerControllerProvider, (previous, next) {
      final error = next.error;
      if (error == null) return;
      _toast(error.localizedMessage(l10n));
      ref.read(scannerControllerProvider.notifier).dismissError();
    });
    final state = ref.watch(scannerControllerProvider);
    final connection = ref.watch(connectionSnapshotProvider);
    final isOffline =
        connection.status == ConnectionStatus.offline ||
        connection.status == ConnectionStatus.offlinePending;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          MobileScanner(
            controller: _camera,
            onDetect: _onDetect,
            errorBuilder: (context, error) =>
                _CameraError(message: error.errorDetails?.message),
          ),
          IgnorePointer(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.9,
                  colors: [Colors.transparent, Colors.black.withValues(alpha: 0.55)],
                ),
              ),
            ),
          ),
          if (state.result == null) const Center(child: _Viewfinder()),
          if (state.result == null)
            Align(
              alignment: const Alignment(0, 0.32),
              child: _HintPill(text: l10n.agentScanAlignHint),
            ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.md,
                AppSpacing.sm,
                AppSpacing.md,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      _TopBarButton(
                        icon: Icons.arrow_back,
                        onTap: () => context.pop(),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: Text(
                          l10n.agentScanTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTypography.sans(
                            size: 15,
                            weight: FontWeight.w800,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => _openHistory(context, state.history),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withValues(alpha: 0.14),
                          foregroundColor: AppColors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: AppRadii.brMd,
                          ),
                        ),
                        child: Text(l10n.agentScanHistory),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm,
                      vertical: AppSpacing.xs,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.1),
                      borderRadius: AppRadii.brMd,
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.18),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isOffline
                                ? AppStatusColors.warning.dot
                                : AppStatusColors.success.dot,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        Flexible(
                          child: Text(
                            isOffline
                                ? l10n.agentScanOfflineNote
                                : l10n.agentScanOnlineNote,
                            style: AppTypography.sans(
                              size: 11.5,
                              weight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (state.result == null)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Text(
                    l10n.agentScanKeepCameraOn,
                    textAlign: TextAlign.center,
                    style: AppTypography.sans(
                      size: 11,
                      color: Colors.white.withValues(alpha: 0.6),
                    ),
                  ),
                ),
              ),
            ),
          if (state.result != null)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.sm,
                    0,
                    AppSpacing.sm,
                    AppSpacing.md,
                  ),
                  child: _ResultSheet(outcome: state.result!, confirming: state.confirming),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _openHistory(BuildContext context, List<ScanHistoryEntry> history) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) => _HistorySheet(history: history),
    );
  }
}

class _Viewfinder extends StatelessWidget {
  const _Viewfinder();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 220,
      child: CustomPaint(painter: _ViewfinderPainter()),
    );
  }
}

class _ViewfinderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.accent300
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    const corner = 30.0;

    void drawCorner(Offset origin, Offset dx, Offset dy) {
      canvas.drawLine(origin, origin + dx, paint);
      canvas.drawLine(origin, origin + dy, paint);
    }

    drawCorner(const Offset(0, 0), const Offset(corner, 0), const Offset(0, corner));
    drawCorner(
      Offset(size.width, 0),
      const Offset(-corner, 0),
      const Offset(0, corner),
    );
    drawCorner(
      Offset(0, size.height),
      const Offset(corner, 0),
      const Offset(0, -corner),
    );
    drawCorner(
      Offset(size.width, size.height),
      const Offset(-corner, 0),
      const Offset(0, -corner),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _HintPill extends StatelessWidget {
  const _HintPill({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm + 2,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.4),
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        text,
        style: AppTypography.sans(size: 12, color: AppColors.white),
      ),
    );
  }
}

class _TopBarButton extends StatelessWidget {
  const _TopBarButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brMd,
      child: Container(
        width: 34,
        height: 34,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
          borderRadius: AppRadii.brMd,
        ),
        child: Icon(icon, color: AppColors.white, size: 18),
      ),
    );
  }
}

class _CameraError extends StatelessWidget {
  const _CameraError({this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ColoredBox(
      color: Colors.black,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.videocam_off_outlined,
                color: AppColors.white,
                size: 40,
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                message ?? l10n.agentScanCameraError,
                style: const TextStyle(color: AppColors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResultSheet extends ConsumerWidget {
  const _ResultSheet({required this.outcome, required this.confirming});

  final ScanOutcome outcome;
  final bool confirming;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final palette = _paletteFor(outcome.kind);
    final controller = ref.read(scannerControllerProvider.notifier);

    return Material(
      color: AppColors.surface,
      borderRadius: AppRadii.brCard,
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            color: palette.background,
            child: Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: palette.dot,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _iconFor(outcome.kind),
                    color: AppColors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _titleFor(l10n, outcome.kind),
                        style: AppTypography.sans(
                          size: 14.5,
                          weight: FontWeight.w800,
                          color: palette.foreground,
                        ),
                      ),
                      Text(
                        outcome.ticketNumber,
                        style: AppTextStyles.referenceSmall.copyWith(
                          color: palette.foreground,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  _messageFor(l10n, outcome),
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                if (outcome.isValid) ...[
                  const SizedBox(height: AppSpacing.sm),
                  if (outcome.passengerName != null)
                    _InfoRow(
                      label: l10n.agentScanFieldPassenger,
                      value: outcome.passengerName!,
                    ),
                  if (outcome.tripLabel != null)
                    _InfoRow(
                      label: l10n.agentScanFieldTrip,
                      value: outcome.tripLabel!,
                    ),
                  if (outcome.seatNumber != null)
                    _InfoRow(
                      label: l10n.agentScanFieldSeat,
                      value: outcome.seatNumber!,
                    ),
                ],
                const SizedBox(height: AppSpacing.md),
                if (outcome.canBoard)
                  FilledButton.icon(
                    onPressed: confirming
                        ? null
                        : () => controller.confirmBoarding(),
                    icon: confirming
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: AppColors.white,
                            ),
                          )
                        : const Icon(Icons.check),
                    label: Text(l10n.agentScanMarkBoarded),
                    style: FilledButton.styleFrom(
                      backgroundColor: AppStatusColors.success.dot,
                      foregroundColor: AppColors.white,
                      minimumSize: const Size.fromHeight(AppSizes.control),
                      shape: const RoundedRectangleBorder(
                        borderRadius: AppRadii.brMd,
                      ),
                    ),
                  ),
                if (outcome.canBoard) const SizedBox(height: AppSpacing.xs),
                OutlinedButton(
                  onPressed: confirming ? null : controller.dismissResult,
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(AppSizes.control),
                    shape: const RoundedRectangleBorder(
                      borderRadius: AppRadii.brMd,
                    ),
                  ),
                  child: Text(l10n.agentScanContinue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static StatusPalette _paletteFor(ScanOutcomeKind kind) => switch (kind) {
    ScanOutcomeKind.valid => AppStatusColors.success,
    ScanOutcomeKind.alreadyBoarded => AppStatusColors.warning,
    _ => AppStatusColors.danger,
  };

  static IconData _iconFor(ScanOutcomeKind kind) => switch (kind) {
    ScanOutcomeKind.valid => Icons.check,
    ScanOutcomeKind.alreadyBoarded => Icons.replay,
    ScanOutcomeKind.notFound => Icons.help_outline,
    _ => Icons.close,
  };

  static String _titleFor(AppLocalizations l10n, ScanOutcomeKind kind) =>
      switch (kind) {
        ScanOutcomeKind.valid => l10n.agentScanResultValidTitle,
        ScanOutcomeKind.unpaid => l10n.agentScanResultUnpaidTitle,
        ScanOutcomeKind.cancelled => l10n.agentScanResultCancelledTitle,
        ScanOutcomeKind.refunded => l10n.agentScanResultRefundedTitle,
        ScanOutcomeKind.alreadyBoarded => l10n.agentScanResultUsedTitle,
        ScanOutcomeKind.invalid => l10n.agentScanResultInvalidTitle,
        ScanOutcomeKind.notFound => l10n.agentScanResultNotFoundTitle,
      };

  static String _messageFor(AppLocalizations l10n, ScanOutcome outcome) =>
      switch (outcome.kind) {
        ScanOutcomeKind.valid => l10n.agentScanResultValidMessage,
        ScanOutcomeKind.unpaid => l10n.agentScanResultUnpaidMessage,
        ScanOutcomeKind.cancelled => l10n.agentScanResultCancelledMessage,
        ScanOutcomeKind.refunded => l10n.agentScanResultRefundedMessage,
        ScanOutcomeKind.alreadyBoarded => l10n.agentScanResultUsedMessage,
        ScanOutcomeKind.invalid => l10n.agentScanResultInvalidMessage,
        ScanOutcomeKind.notFound => l10n.agentScanResultNotFoundMessage,
      };
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxs + 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.caption),
          Text(value, style: AppTextStyles.bodyStrong),
        ],
      ),
    );
  }
}

class _HistorySheet extends StatelessWidget {
  const _HistorySheet({required this.history});

  final List<ScanHistoryEntry> history;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.78,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.lg,
            0,
            AppSpacing.lg,
            AppSpacing.md,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.agentScanHistoryTitle, style: AppTextStyles.dialogTitle),
              const SizedBox(height: AppSpacing.xxs),
              Text(
                l10n.agentScanHistoryCount(history.length),
                style: AppTextStyles.caption,
              ),
              const SizedBox(height: AppSpacing.sm),
              if (history.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.xl),
                  child: Text(
                    l10n.agentScanHistoryEmpty,
                    style: AppTextStyles.caption,
                  ),
                )
              else
                Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: history.length,
                    separatorBuilder: (_, _) =>
                        const Divider(height: AppSpacing.md),
                    itemBuilder: (context, index) {
                      final entry = history[index];
                      final palette = _ResultSheet._paletteFor(entry.kind);
                      return Row(
                        children: [
                          Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                              color: palette.dot,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Expanded(
                            child: Text(
                              entry.ticketNumber,
                              style: AppTextStyles.reference,
                            ),
                          ),
                          Text(
                            AppTimeFormat.hourMinute(context, entry.scannedAt),
                            style: AppTextStyles.referenceSmall,
                          ),
                        ],
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
