import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../domain/created_booking.dart';
import '../../domain/traveler_booking.dart';
import '../traveler_providers.dart';
import '../widgets/booking_cancel_dialog.dart';
import '../widgets/traveler_nav.dart';
import '../widgets/traveler_shell.dart';

/// Filtre par statut proposé en tête de liste.
enum _BookingFilter { all, paid, unpaid, cancelled }

/// Mes réservations (maquette « Mes réservations & Billet », écran 1).
class MyBookingsScreen extends ConsumerStatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  ConsumerState<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends ConsumerState<MyBookingsScreen> {
  _BookingFilter _filter = _BookingFilter.all;

  bool _matches(TravelerBooking booking) => switch (_filter) {
    _BookingFilter.all => true,
    _BookingFilter.paid => booking.status == BookingStatus.paid,
    _BookingFilter.unpaid => booking.status == BookingStatus.pending,
    _BookingFilter.cancelled =>
      booking.status == BookingStatus.cancelled ||
          booking.status == BookingStatus.refunded,
  };

  int _activeCount(List<TravelerBooking> bookings) => bookings
      .where(
        (b) =>
            b.status != BookingStatus.cancelled &&
            b.status != BookingStatus.refunded &&
            !b.isPast,
      )
      .length;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bookings = ref.watch(myBookingsProvider);

    return TravelerShell(
      current: TravelerDestination.bookings,
      bookingsBadge: bookings.value == null
          ? null
          : _activeCount(bookings.value!),
      child: RefreshIndicator(
        onRefresh: () async => ref.invalidate(myBookingsProvider),
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          children: [
            Text(l10n.bookingsTitle, style: AppTextStyles.pageTitle),
            const SizedBox(height: AppSpacing.xxs),
            Text(l10n.bookingsSubtitle, style: AppTextStyles.caption),
            const SizedBox(height: AppSpacing.md),
            bookings.when(
              loading: () => const _BookingsSkeleton(),
              error: (error, _) => Padding(
                padding: const EdgeInsets.only(top: AppSpacing.xxl),
                child: ErrorState(
                  failure: error is Failure ? error : null,
                  onRetry: () => ref.invalidate(myBookingsProvider),
                ),
              ),
              data: (list) => _list(list),
            ),
          ],
        ),
      ),
    );
  }

  Widget _list(List<TravelerBooking> bookings) {
    final l10n = context.l10n;
    final filtered = bookings.where(_matches).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: AppSpacing.xs,
          runSpacing: AppSpacing.xs,
          children: [
            for (final filter in _BookingFilter.values)
              _FilterChip(
                label: _filterLabel(l10n, filter),
                count: _countFor(bookings, filter),
                selected: _filter == filter,
                onTap: () => setState(() => _filter = filter),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        if (bookings.isEmpty)
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.xl),
            child: EmptyState(
              icon: Icons.confirmation_number_outlined,
              title: l10n.bookingsEmptyTitle,
              message: l10n.bookingsEmptyMessage,
              actionLabel: l10n.bookingsEmptyCta,
              onAction: () => context.goNamed(AppRoutes.searchResultsName),
            ),
          )
        else if (filtered.isEmpty)
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.xl),
            child: EmptyState(
              icon: Icons.filter_alt_off_outlined,
              title: l10n.bookingsNoMatchTitle,
              message: l10n.bookingsNoMatchMessage,
            ),
          )
        else
          for (final booking in filtered)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: _BookingCard(
                booking: booking,
                onView: () => context.pushNamed(
                  AppRoutes.travelerTicketName,
                  pathParameters: {'id': '${booking.id}'},
                ),
                onCancel: booking.isCancellable
                    ? () => _confirmCancel(booking)
                    : null,
              ),
            ),
      ],
    );
  }

  Future<void> _confirmCancel(TravelerBooking booking) async {
    await showBookingCancelDialog(context, ref, booking: booking);
  }

  String _filterLabel(dynamic l10n, _BookingFilter filter) => switch (filter) {
    _BookingFilter.all => l10n.bookingsFilterAll,
    _BookingFilter.paid => l10n.bookingsFilterPaid,
    _BookingFilter.unpaid => l10n.bookingsFilterUnpaid,
    _BookingFilter.cancelled => l10n.bookingsFilterCancelled,
  };

  int _countFor(List<TravelerBooking> bookings, _BookingFilter filter) {
    if (filter == _BookingFilter.all) return bookings.length;
    return bookings.where((booking) {
      final saved = _filter;
      _filter = filter;
      final result = _matches(booking);
      _filter = saved;
      return result;
    }).length;
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.count,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final int count;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm + 1,
            vertical: AppSpacing.xs + 1,
          ),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brMd,
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
            ),
          ),
          child: Text(
            '$label · $count',
            style: AppTypography.sans(
              size: 13,
              weight: FontWeight.w600,
              color: selected ? AppColors.onPrimary : AppColors.textStrong,
            ),
          ),
        ),
      ),
    );
  }
}

class _BookingCard extends StatelessWidget {
  const _BookingCard({
    required this.booking,
    required this.onView,
    required this.onCancel,
  });

  final TravelerBooking booking;
  final VoidCallback onView;
  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cancelled =
        booking.status == BookingStatus.cancelled ||
        booking.status == BookingStatus.refunded;

    return Opacity(
      opacity: cancelled ? 0.7 : 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadii.brCard,
          border: Border.all(color: AppColors.border),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: cancelled
                              ? AppColors.surfaceSubtle
                              : AppColors.primary50,
                          borderRadius: AppRadii.brMd,
                        ),
                        child: Icon(
                          Icons.directions_bus_outlined,
                          size: 20,
                          color: cancelled
                              ? AppColors.textTertiary
                              : AppColors.primary900,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${booking.originCity} → ${booking.destinationCity}',
                              style: AppTypography.sans(
                                size: 14.5,
                                weight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '${l10n.bookingsSeat} ${booking.seatNumber}',
                              style: AppTextStyles.caption,
                            ),
                          ],
                        ),
                      ),
                      StatusBadge(
                        label: booking.statusDisplay,
                        type: _statusType(booking.status),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const Divider(height: 1),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      Expanded(
                        child: _Meta(
                          label: l10n.bookingsDate,
                          value:
                              '${AppTimeFormat.mediumDate(context, booking.departureTime)} · '
                              '${AppTimeFormat.hourMinute(context, booking.departureTime)}',
                        ),
                      ),
                      Expanded(
                        child: _Meta(
                          label: l10n.bookingsTicketNo,
                          value: booking.ticketNumber,
                          mono: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Row(
              children: [
                _CardAction(
                  label: l10n.bookingsView,
                  icon: Icons.visibility_outlined,
                  onTap: onView,
                ),
                const _ActionDivider(),
                _CardAction(
                  label: l10n.bookingsDownload,
                  icon: Icons.download_outlined,
                  onTap: () => _downloadUnavailable(context),
                ),
                const _ActionDivider(),
                _CardAction(
                  label: l10n.bookingsCancel,
                  icon: Icons.close_rounded,
                  destructive: true,
                  onTap: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _downloadUnavailable(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(context.l10n.bookingsDownloadUnavailable)),
      );
  }

  StatusType _statusType(BookingStatus? status) => switch (status) {
    BookingStatus.paid => StatusType.success,
    BookingStatus.pending => StatusType.warning,
    BookingStatus.cancelled || BookingStatus.refunded => StatusType.danger,
    null => StatusType.neutral,
  };
}

class _Meta extends StatelessWidget {
  const _Meta({required this.label, required this.value, this.mono = false});

  final String label;
  final String value;
  final bool mono;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.eyebrow),
        const SizedBox(height: 2),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: mono
              ? AppTextStyles.referenceSmall.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                )
              : AppTypography.sans(size: 13, weight: FontWeight.w600),
        ),
      ],
    );
  }
}

class _CardAction extends StatelessWidget {
  const _CardAction({
    required this.label,
    required this.icon,
    required this.onTap,
    this.destructive = false,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onTap;
  final bool destructive;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    final color = !enabled
        ? AppColors.textTertiary
        : destructive
        ? AppStatusColors.danger.foreground
        : AppColors.primary;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm + 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16, color: color),
              const SizedBox(width: AppSpacing.xs),
              Text(
                label,
                style: AppTypography.sans(
                  size: 12.5,
                  weight: FontWeight.w600,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionDivider extends StatelessWidget {
  const _ActionDivider();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 24, child: VerticalDivider(width: 1));
  }
}

class _BookingsSkeleton extends StatelessWidget {
  const _BookingsSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoadingSkeleton(height: 150, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.sm),
        LoadingSkeleton(height: 150, borderRadius: AppRadii.brCard),
      ],
    );
  }
}
