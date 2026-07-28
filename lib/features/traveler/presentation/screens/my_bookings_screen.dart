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
import '../../../auth/presentation/session_controller.dart';
import '../../domain/created_booking.dart';
import '../../domain/traveler_booking.dart';
import '../traveler_providers.dart';
import '../widgets/booking_cancel_dialog.dart';
import '../widgets/traveler_nav.dart';
import '../widgets/traveler_shell.dart';

/// Filtre par statut proposé en tête de liste.
enum _BookingFilter { all, paid, unpaid, cancelled }

/// Mes réservations (maquette « Mes réservations & Billet », écran 1).
///
/// Disposition fidèle au handoff mobile : bandeau indigo (nom + titre) et barre
/// de filtres fixes en tête, liste de billets défilante en dessous.
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
    final bookings = ref.watch(myBookingsProvider);
    final userName = ref.watch(sessionControllerProvider).displayName;

    return TravelerShell(
      current: TravelerDestination.bookings,
      bookingsBadge: bookings.value == null
          ? null
          : _activeCount(bookings.value!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _Header(userName: userName),
          _FilterBar(
            selected: _filter,
            onSelect: (filter) => setState(() => _filter = filter),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => ref.invalidate(myBookingsProvider),
              child: bookings.when(
                loading: () => const _BookingsSkeleton(),
                error: (error, _) => _ScrollFill(
                  child: ErrorState(
                    failure: error is Failure ? error : null,
                    onRetry: () => ref.invalidate(myBookingsProvider),
                  ),
                ),
                data: _list,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _list(List<TravelerBooking> bookings) {
    final l10n = context.l10n;
    final filtered = bookings.where(_matches).toList();

    if (bookings.isEmpty) {
      return _ScrollFill(
        child: EmptyState(
          icon: Icons.confirmation_number_outlined,
          title: l10n.bookingsEmptyTitle,
          message: l10n.bookingsEmptyMessage,
          actionLabel: l10n.bookingsEmptyCta,
          onAction: () => context.goNamed(AppRoutes.searchResultsName),
        ),
      );
    }
    if (filtered.isEmpty) {
      return _ScrollFill(
        child: EmptyState(
          icon: Icons.filter_alt_off_outlined,
          title: l10n.bookingsNoMatchTitle,
          message: l10n.bookingsNoMatchMessage,
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.md),
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: filtered.length,
      separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.sm),
      itemBuilder: (context, index) {
        final booking = filtered[index];
        return _BookingCard(
          booking: booking,
          onView: () => context.pushNamed(
            AppRoutes.travelerTicketName,
            pathParameters: {'id': '${booking.id}'},
          ),
          onCancel: booking.isCancellable ? () => _confirmCancel(booking) : null,
          onReview: booking.isReviewable ? () => _openReview(booking) : null,
        );
      },
    );
  }

  Future<void> _confirmCancel(TravelerBooking booking) async {
    await showBookingCancelDialog(context, ref, booking: booking);
  }

  void _openReview(TravelerBooking booking) {
    context.pushNamed(
      AppRoutes.travelerReviewName,
      pathParameters: {'tripId': '${booking.tripId}'},
      extra: booking,
    );
  }
}

/// Bandeau indigo en tête d'écran : nom du voyageur (atténué) puis titre.
class _Header extends StatelessWidget {
  const _Header({required this.userName});

  final String? userName;

  @override
  Widget build(BuildContext context) {
    final name = userName?.trim();
    return Container(
      width: double.infinity,
      color: AppColors.primary700,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            AppSpacing.sm,
            AppSpacing.md,
            AppSpacing.md,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (name != null && name.isNotEmpty) ...[
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(
                    size: 12,
                    color: AppColors.onPrimaryMuted,
                  ),
                ),
                const SizedBox(height: 2),
              ],
              Text(
                context.l10n.bookingsTitle,
                style: AppTypography.sans(
                  size: 20,
                  weight: FontWeight.w800,
                  color: AppColors.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Barre de filtres par statut — pastilles défilables (indigo plein si actif).
class _FilterBar extends StatelessWidget {
  const _FilterBar({required this.selected, required this.onSelect});

  final _BookingFilter selected;
  final ValueChanged<_BookingFilter> onSelect;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final labels = {
      _BookingFilter.all: l10n.bookingsFilterAll,
      _BookingFilter.paid: l10n.bookingsFilterPaid,
      _BookingFilter.unpaid: l10n.bookingsFilterUnpaid,
      _BookingFilter.cancelled: l10n.bookingsFilterCancelled,
    };

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(bottom: BorderSide(color: AppColors.borderSoft)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        child: Row(
          children: [
            for (final filter in _BookingFilter.values)
              Padding(
                padding: const EdgeInsets.only(right: AppSpacing.xs),
                child: _FilterChip(
                  label: labels[filter]!,
                  selected: selected == filter,
                  onTap: () => onSelect(filter),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary : AppColors.surface,
      borderRadius: AppRadii.brPill,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brPill,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md - 2,
            vertical: AppSpacing.xs - 1,
          ),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brPill,
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
            ),
          ),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 12.5,
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
    required this.onReview,
  });

  final TravelerBooking booking;
  final VoidCallback onView;
  final VoidCallback? onCancel;

  /// Non nul seulement si le voyage est éligible (`booking.isReviewable`) :
  /// voyage terminé côté serveur + réservation payée. Remplace l'action
  /// « Annuler » — devenue sans objet une fois le voyage passé — plutôt que
  /// d'ajouter une 4ᵉ action à la carte.
  final VoidCallback? onReview;

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
          borderRadius: AppRadii.brLg,
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
                              : AppColors.primary100,
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
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTypography.sans(
                                size: 14.5,
                                weight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 1),
                            Text(
                              '${booking.companyName} · '
                              '${l10n.bookingsSeat} ${booking.seatNumber}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTypography.sans(
                                size: 11.5,
                                color: AppColors.textTertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      StatusBadge(
                        label: booking.statusDisplay,
                        type: _statusType(booking.status),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const Divider(height: 1, color: AppColors.borderSoft),
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
            const Divider(height: 1, color: AppColors.borderSoft),
            IntrinsicHeight(
              child: Row(
                children: [
                  _CardAction(
                    label: l10n.bookingsView,
                    tone: _ActionTone.primary,
                    onTap: onView,
                  ),
                  const VerticalDivider(
                    width: 1,
                    thickness: 1,
                    color: AppColors.borderSoft,
                  ),
                  _CardAction(
                    label: l10n.bookingsDownload,
                    tone: _ActionTone.neutral,
                    onTap: () => _downloadUnavailable(context),
                  ),
                  const VerticalDivider(
                    width: 1,
                    thickness: 1,
                    color: AppColors.borderSoft,
                  ),
                  if (onReview != null)
                    _CardAction(
                      label: l10n.bookingsReview,
                      tone: _ActionTone.primary,
                      onTap: onReview,
                    )
                  else
                    _CardAction(
                      label: l10n.bookingsCancel,
                      tone: _ActionTone.danger,
                      onTap: onCancel,
                    ),
                ],
              ),
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
        Text(
          label,
          style: AppTypography.sans(size: 11, color: AppColors.textTertiary),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: mono
              ? AppTextStyles.referenceSmall.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textStrong,
                )
              : AppTypography.sans(size: 13, weight: FontWeight.w600),
        ),
      ],
    );
  }
}

/// Ton d'une action de carte : principal (Voir), neutre (PDF), destructif
/// (Annuler).
enum _ActionTone { primary, neutral, danger }

class _CardAction extends StatelessWidget {
  const _CardAction({
    required this.label,
    required this.tone,
    required this.onTap,
  });

  final String label;
  final _ActionTone tone;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    final base = switch (tone) {
      _ActionTone.primary => AppColors.primary,
      _ActionTone.neutral => AppColors.textStrong,
      _ActionTone.danger => AppStatusColors.danger.foreground,
    };
    final color = enabled ? base : AppColors.textTertiary;

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm - 1),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: AppTypography.sans(
              size: 12.5,
              weight: FontWeight.w600,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

/// Rend un contenu (état vide / erreur) défilant et centré, pour que le
/// « tirer pour rafraîchir » reste actif même sans liste.
class _ScrollFill extends StatelessWidget {
  const _ScrollFill({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}

class _BookingsSkeleton extends StatelessWidget {
  const _BookingsSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      physics: const AlwaysScrollableScrollPhysics(),
      children: const [
        LoadingSkeleton(height: 150, borderRadius: AppRadii.brLg),
        SizedBox(height: AppSpacing.sm),
        LoadingSkeleton(height: 150, borderRadius: AppRadii.brLg),
        SizedBox(height: AppSpacing.sm),
        LoadingSkeleton(height: 150, borderRadius: AppRadii.brLg),
      ],
    );
  }
}
