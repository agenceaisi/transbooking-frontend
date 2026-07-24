import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/widgets/perforated_divider.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../../public/domain/monogram.dart';
import '../../domain/created_booking.dart';
import '../../domain/traveler_booking.dart';
import 'qr_code_view.dart';

/// Carte de billet électronique (maquette « Mon billet »).
///
/// Le QR est séparé des informations par la ligne perforée signature. Le nom de
/// compagnie n'est pas porté par `BookingRead` : on s'en tient au trajet et aux
/// données réellement disponibles (CLAUDE.md §0 — ne rien inventer).
class TicketCard extends StatelessWidget {
  const TicketCard({required this.booking, super.key});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brLg,
        border: Border.all(color: AppColors.border),
        boxShadow: AppShadows.card,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: _Details(booking: booking),
          ),
          const PerforatedDivider(
            padding: EdgeInsets.zero,
            color: AppColors.borderStrong,
          ),
          Container(
            width: double.infinity,
            color: AppColors.surfaceSubtle,
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: _QrSection(booking: booking),
          ),
        ],
      ),
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: AppRadii.brMd,
              ),
              child: Text(
                companyMonogram(
                  sigle: booking.companySigle,
                  name: booking.companyName,
                ),
                style: AppTypography.sans(
                  size: 13,
                  weight: FontWeight.w800,
                  color: AppColors.onPrimary,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    booking.companyName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.sans(
                      size: 16,
                      weight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    l10n.ticketLabel.toUpperCase(),
                    style: AppTextStyles.eyebrow,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(l10n.bookingsTicketNo, style: AppTextStyles.eyebrow),
                const SizedBox(height: 2),
                Text(booking.ticketNumber, style: AppTextStyles.reference),
              ],
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        Align(
          alignment: Alignment.centerLeft,
          child: _StatusBadge(booking: booking),
        ),
        const SizedBox(height: AppSpacing.lg),
        _Route(booking: booking),
        const SizedBox(height: AppSpacing.lg),
        _MetaGrid(booking: booking),
      ],
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    final type = switch (booking.status) {
      BookingStatus.paid => StatusType.success,
      BookingStatus.pending => StatusType.warning,
      BookingStatus.cancelled || BookingStatus.refunded => StatusType.danger,
      null => StatusType.neutral,
    };
    return StatusBadge(label: booking.statusDisplay, type: type);
  }
}

class _Route extends StatelessWidget {
  const _Route({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: _Endpoint(
            label: l10n.ticketDeparture,
            city: booking.originCity,
            time: AppTimeFormat.hourMinute(context, booking.departureTime),
            alignEnd: false,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          child: Column(
            children: [
              Icon(
                Icons.directions_bus_outlined,
                size: 24,
                color: AppColors.primary,
              ),
              SizedBox(height: AppSpacing.xxs),
              SizedBox(
                width: 44,
                child: CustomPaint(size: Size(44, 2), painter: _DashPainter()),
              ),
            ],
          ),
        ),
        Expanded(
          child: _Endpoint(
            label: l10n.ticketArrival,
            city: booking.destinationCity,
            time: booking.arrivalTime == null
                ? '—'
                : AppTimeFormat.hourMinute(context, booking.arrivalTime!),
            alignEnd: true,
          ),
        ),
      ],
    );
  }
}

class _Endpoint extends StatelessWidget {
  const _Endpoint({
    required this.label,
    required this.city,
    required this.time,
    required this.alignEnd,
  });

  final String label;
  final String city;
  final String time;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    final align = alignEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(label, style: AppTextStyles.eyebrow),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          city,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTypography.sans(
            size: 22,
            weight: FontWeight.w800,
            height: 1,
          ),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(time, style: AppTextStyles.referenceSmall),
      ],
    );
  }
}

class _MetaGrid extends StatelessWidget {
  const _MetaGrid({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final entries = <_Meta>[
      _Meta(l10n.ticketPassenger, booking.passengerName),
      _Meta(
        l10n.ticketDate,
        AppTimeFormat.mediumDate(context, booking.departureTime),
      ),
      _Meta(l10n.ticketSeat, booking.seatNumber, mono: true),
      _Meta(
        l10n.ticketAmount,
        '${Fcfa.format(booking.amount)} ${l10n.currencySuffix}',
        mono: true,
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = constraints.maxWidth > 360 ? 4 : 2;
        return Wrap(
          spacing: AppSpacing.md,
          runSpacing: AppSpacing.md,
          children: [
            for (final entry in entries)
              SizedBox(
                width:
                    (constraints.maxWidth - (columns - 1) * AppSpacing.md) /
                    columns,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(entry.label, style: AppTextStyles.eyebrow),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      entry.value,
                      style: entry.mono
                          ? AppTextStyles.referenceSmall.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )
                          : AppTypography.sans(
                              size: 14,
                              weight: FontWeight.w700,
                            ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}

class _Meta {
  const _Meta(this.label, this.value, {this.mono = false});

  final String label;
  final String value;
  final bool mono;
}

class _QrSection extends StatelessWidget {
  const _QrSection({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Text(
          l10n.ticketScanPrompt.toUpperCase(),
          style: AppTypography.mono(
            size: 10.5,
            weight: FontWeight.w600,
            letterSpacing: 1.2,
            color: AppColors.primary900,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: AppRadii.brMd,
            boxShadow: AppShadows.card,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.sm),
            child: QrCodeView(base64Png: booking.qrCode, size: 180),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(booking.ticketNumber, style: AppTextStyles.referenceLarge),
        const SizedBox(height: AppSpacing.xxs),
        Text(l10n.ticketUniqueCode, style: AppTextStyles.caption),
      ],
    );
  }
}

/// Filet en pointillés entre le bus et la destination.
class _DashPainter extends CustomPainter {
  const _DashPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary300
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    const dash = 6.0, gap = 5.0;
    var x = 0.0;
    final y = size.height / 2;
    while (x < size.width) {
      canvas.drawLine(
        Offset(x, y),
        Offset((x + dash).clamp(0, size.width), y),
        paint,
      );
      x += dash + gap;
    }
  }

  @override
  bool shouldRepaint(_DashPainter oldDelegate) => false;
}
