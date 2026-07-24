import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../domain/traveler_booking.dart';
import '../traveler_providers.dart';
import '../widgets/ticket_card.dart';
import '../widgets/traveler_task_scaffold.dart';

/// Billet électronique (maquette « Mon billet ») : QR plein écran, trajet
/// visualisé, actions Télécharger / Imprimer / Partager.
class TicketScreen extends ConsumerWidget {
  const TicketScreen({required this.bookingId, super.key});

  final int? bookingId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final id = bookingId;

    return TravelerTaskScaffold(
      title: l10n.ticketScreenTitle,
      maxContentWidth: 620,
      child: id == null
          ? Center(child: ErrorState(message: l10n.failureNotFound))
          : ref
                .watch(bookingDetailProvider(id))
                .when(
                  loading: () => const _TicketSkeleton(),
                  error: (error, _) => Center(
                    child: ErrorState(
                      failure: error is Failure ? error : null,
                      onRetry: () => ref.invalidate(bookingDetailProvider(id)),
                    ),
                  ),
                  data: (booking) => _TicketBody(booking: booking),
                ),
    );
  }
}

class _TicketBody extends StatelessWidget {
  const _TicketBody({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        TicketCard(booking: booking),
        const SizedBox(height: AppSpacing.lg),
        _Actions(),
      ],
    );
  }
}

class _Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    void unavailable() => ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.ticketActionUnavailable)));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilledButton.icon(
          onPressed: unavailable,
          icon: const Icon(Icons.download_outlined, size: AppSizes.iconSm),
          label: Text(l10n.ticketDownloadPdf),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            minimumSize: const Size.fromHeight(AppSizes.control),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
            textStyle: AppTextStyles.button,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: unavailable,
                icon: const Icon(Icons.print_outlined, size: AppSizes.iconSm),
                label: Text(l10n.ticketPrint),
                style: _outlinedStyle,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: unavailable,
                icon: const Icon(Icons.share_outlined, size: AppSizes.iconSm),
                label: Text(l10n.ticketShare),
                style: _outlinedStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }

  ButtonStyle get _outlinedStyle => OutlinedButton.styleFrom(
    foregroundColor: AppColors.textStrong,
    minimumSize: const Size.fromHeight(AppSizes.control),
    side: const BorderSide(color: AppColors.borderStrong),
    shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
    textStyle: AppTextStyles.button,
  );
}

class _TicketSkeleton extends StatelessWidget {
  const _TicketSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: const [
        LoadingSkeleton(height: 420, borderRadius: AppRadii.brLg),
        SizedBox(height: AppSpacing.lg),
        LoadingSkeleton(height: 48, borderRadius: AppRadii.brMd),
      ],
    );
  }
}
