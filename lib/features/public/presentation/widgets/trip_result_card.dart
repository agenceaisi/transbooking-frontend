import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../domain/trip_result.dart';
import 'company_logo_avatar.dart';
import 'star_rating.dart';

/// Carte d'un trajet dans les résultats de recherche.
///
/// Affiche la compagnie exploitante (monogramme + nom + note), l'horaire, la
/// durée et le type de trajet (direct / avec escale), les places et le prix —
/// tous exposés par `TripRead` depuis le complément d'API (cf. [TripResult]).
class TripResultCard extends StatelessWidget {
  const TripResultCard({
    required this.trip,
    required this.onBook,
    this.isCompact = true,
    super.key,
  });

  final TripResult trip;

  /// `null` désactive la réservation (trajet complet).
  final VoidCallback? onBook;

  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brCard,
      ),
      padding: const EdgeInsets.all(AppSpacing.md + 2),
      child: isCompact ? _buildCompact(context) : _buildWide(context),
    );
  }

  Widget _buildWide(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 132, child: _CompanyBlock(trip: trip)),
        const SizedBox(width: AppSpacing.lg),
        Expanded(child: _Timeline(trip: trip, showRouteLabel: false)),
        const SizedBox(width: AppSpacing.lg),
        SizedBox(
          width: 84,
          child: _SeatsBadge(trip: trip, context: context),
        ),
        const SizedBox(width: AppSpacing.lg),
        SizedBox(
          width: 148,
          child: _PriceAndCta(trip: trip, onBook: onBook),
        ),
      ],
    );
  }

  Widget _buildCompact(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _CompanyBlock(trip: trip, dense: true)),
            const SizedBox(width: AppSpacing.sm),
            _Price(trip: trip),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        _Timeline(trip: trip, showRouteLabel: false),
        const SizedBox(height: AppSpacing.sm),
        const Divider(height: 1, color: AppColors.borderSoft),
        const SizedBox(height: AppSpacing.sm),
        Row(
          children: [
            _SeatsBadge(trip: trip, context: context),
            const Spacer(),
            _BookButton(trip: trip, onBook: onBook, compact: true),
          ],
        ),
      ],
    );
  }
}

/// Bloc identité de la compagnie : monogramme + nom + note en étoiles.
class _CompanyBlock extends StatelessWidget {
  const _CompanyBlock({required this.trip, this.dense = false});

  final TripResult trip;

  /// Variante compacte (mobile) : monogramme plus petit.
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final rating = trip.companyRating;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CompanyLogoAvatar(
              monogram: trip.companyMono,
              size: dense ? 34 : 40,
            ),
            const SizedBox(width: AppSpacing.xs + 2),
            Expanded(
              child: Text(
                trip.companyName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.sans(size: 13.5, weight: FontWeight.w700),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            StarRating(rating: rating, size: 12),
            if (rating != null) ...[
              const SizedBox(width: AppSpacing.xxs),
              Text(
                _ratingLabel(rating),
                style: AppTypography.sans(
                  size: 11.5,
                  weight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }

  /// Note à la française — « 4,8 ».
  static String _ratingLabel(double value) =>
      value.toStringAsFixed(1).replaceFirst('.', ',');
}

/// Pastille « Direct » (vert) ou « n escale(s) » (neutre) sous le fil du trajet.
class _StopBadge extends StatelessWidget {
  const _StopBadge({required this.trip});

  final TripResult trip;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final palette = trip.isDirect
        ? AppStatusColors.success
        : AppStatusColors.neutral;
    final label = trip.isDirect
        ? l10n.tripDirect
        : l10n.tripStops(trip.stopsCount);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs, vertical: 2),
      decoration: BoxDecoration(
        color: palette.background,
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        label,
        style: AppTypography.sans(
          size: 10.5,
          weight: FontWeight.w600,
          color: palette.foreground,
        ),
      ),
    );
  }
}

/// Départ → durée → arrivée.
class _Timeline extends StatelessWidget {
  const _Timeline({required this.trip, this.showRouteLabel = true});

  final TripResult trip;
  final bool showRouteLabel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final departure = AppTimeFormat.hourMinute(context, trip.departureTime);
    final arrival = trip.arrivalTime == null
        ? null
        : AppTimeFormat.hourMinute(context, trip.arrivalTime!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showRouteLabel) ...[
          Text(
            trip.routeLabel,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.sans(size: 13.5, weight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.xs),
        ],
        Row(
          children: [
            _TimePoint(time: departure, city: trip.originCity),
            Expanded(
              child: _Connector(duration: _durationLabel(context), trip: trip),
            ),
            _TimePoint(
              time: arrival ?? '—',
              city: trip.destinationCity,
              alignEnd: true,
            ),
          ],
        ),
        if (trip.vehicleRegistration != null) ...[
          const SizedBox(height: AppSpacing.xs + 2),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.directions_bus_outlined,
                size: 15,
                color: AppColors.textSecondary,
              ),
              const SizedBox(width: AppSpacing.xxs),
              Text(
                l10n.tripVehicle(trip.vehicleRegistration!),
                style: AppTypography.sans(
                  size: 12,
                  weight: FontWeight.w500,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  String? _durationLabel(BuildContext context) {
    final minutes = trip.durationMinutes;
    if (minutes == null) return null;
    final hours = minutes ~/ 60;
    final rest = (minutes % 60).toString().padLeft(2, '0');
    return context.l10n.tripDuration(hours, rest);
  }
}

class _TimePoint extends StatelessWidget {
  const _TimePoint({
    required this.time,
    required this.city,
    this.alignEnd = false,
  });

  final String time;
  final String city;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignEnd
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: AppTypography.sans(
            size: 18,
            weight: FontWeight.w700,
            tabular: true,
          ),
        ),
        Text(
          city,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTypography.sans(size: 11.5, color: AppColors.textTertiary),
        ),
      ],
    );
  }
}

class _Connector extends StatelessWidget {
  const _Connector({required this.duration, required this.trip});

  final String? duration;
  final TripResult trip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
      child: Column(
        children: [
          if (duration != null)
            Text(
              duration!,
              style: AppTypography.sans(
                size: 11,
                weight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
            ),
          const SizedBox(height: AppSpacing.xxs),
          const Row(
            children: [
              _Dot(color: AppColors.primary),
              Expanded(child: Divider(color: AppColors.border, height: 1)),
              _Dot(color: AppColors.accent),
            ],
          ),
          const SizedBox(height: AppSpacing.xxs + 1),
          _StopBadge(trip: trip),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}

class _SeatsBadge extends StatelessWidget {
  const _SeatsBadge({required this.trip, required this.context});

  final TripResult trip;
  final BuildContext context;

  @override
  Widget build(BuildContext _) {
    final l10n = context.l10n;
    final label = trip.isFull
        ? l10n.tripSeatsFull
        : l10n.tripSeatsAvailable(trip.availableSeats ?? 0);
    return StatusBadge(label: label, type: trip.seatStatusType);
  }
}

class _Price extends StatelessWidget {
  const _Price({required this.trip});

  final TripResult trip;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          Fcfa.format(trip.price),
          style: AppTypography.sans(
            size: 20,
            weight: FontWeight.w800,
            tabular: true,
          ),
        ),
        Text(
          context.l10n.tripPricePerSeat,
          style: AppTypography.sans(size: 11, color: AppColors.textTertiary),
        ),
      ],
    );
  }
}

class _PriceAndCta extends StatelessWidget {
  const _PriceAndCta({required this.trip, required this.onBook});

  final TripResult trip;
  final VoidCallback? onBook;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: _Price(trip: trip),
        ),
        const SizedBox(height: AppSpacing.sm),
        _BookButton(trip: trip, onBook: onBook, compact: false),
      ],
    );
  }
}

class _BookButton extends StatelessWidget {
  const _BookButton({
    required this.trip,
    required this.onBook,
    required this.compact,
  });

  final TripResult trip;
  final VoidCallback? onBook;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final enabled = onBook != null && trip.isBookable;
    final label = trip.isFull ? l10n.tripSeatsFull : l10n.tripBook;

    return FilledButton(
      onPressed: enabled ? onBook : null,
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        disabledBackgroundColor: AppColors.surfaceSubtle,
        disabledForegroundColor: AppColors.textTertiary,
        minimumSize: Size(compact ? 0 : double.infinity, 40),
        padding: EdgeInsets.symmetric(
          horizontal: compact ? AppSpacing.lg : AppSpacing.md,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
      child: Text(label),
    );
  }
}
