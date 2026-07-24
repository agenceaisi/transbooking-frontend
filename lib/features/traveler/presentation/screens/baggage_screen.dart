import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../domain/traveler_baggage.dart';
import '../../domain/traveler_booking.dart';
import '../traveler_providers.dart';
import '../widgets/traveler_nav.dart';
import '../widgets/traveler_shell.dart';

/// Écran « Bagages ».
///
/// Les bagages enregistrés viennent désormais de la réservation
/// (`BookingRead.baggage`, ajouté à l'API). On affiche ceux de la réservation à
/// venir la plus proche, puis les **règles de transport** (politique) et une
/// grille indicative — les tarifs bagages restent configurés côté compagnie,
/// non exposés au voyageur.
class BaggageScreen extends ConsumerWidget {
  const BaggageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final bookings = ref.watch(myBookingsProvider);

    return TravelerShell(
      current: TravelerDestination.baggage,
      child: RefreshIndicator(
        onRefresh: () async => ref.invalidate(myBookingsProvider),
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          children: [
            Text(l10n.baggageTitle, style: AppTextStyles.pageTitle),
            const SizedBox(height: AppSpacing.xxs),
            Text(l10n.baggageSubtitle, style: AppTextStyles.caption),
            const SizedBox(height: AppSpacing.lg),
            bookings.when(
              loading: () => const LoadingSkeleton(
                height: 150,
                borderRadius: AppRadii.brCard,
              ),
              error: (error, _) => ErrorState(
                failure: error is Failure ? error : null,
                onRetry: () => ref.invalidate(myBookingsProvider),
              ),
              data: (list) => _RegisteredBaggage(booking: _featured(list)),
            ),
            const SizedBox(height: AppSpacing.lg),
            _rulesSection(l10n),
            const SizedBox(height: AppSpacing.lg),
            _feesSection(l10n),
            const SizedBox(height: AppSpacing.md),
            InlineAlert(
              type: StatusType.warning,
              message: l10n.baggageFeesDisclaimer,
            ),
          ],
        ),
      ),
    );
  }

  /// La réservation à venir la plus proche portant des bagages ; à défaut, la
  /// plus récente qui en porte ; `null` si aucune.
  TravelerBooking? _featured(List<TravelerBooking> bookings) {
    final withBaggage = bookings
        .where((booking) => booking.baggage.isNotEmpty)
        .toList();
    if (withBaggage.isEmpty) return null;
    final upcoming = withBaggage.where((booking) => !booking.isPast).toList()
      ..sort((a, b) => a.departureTime.compareTo(b.departureTime));
    if (upcoming.isNotEmpty) return upcoming.first;
    withBaggage.sort((a, b) => b.departureTime.compareTo(a.departureTime));
    return withBaggage.first;
  }

  Widget _rulesSection(dynamic l10n) => _Section(
    title: l10n.baggageRulesTitle,
    child: Column(
      children: [
        _RuleTile(
          icon: Icons.scale_outlined,
          palette: AppStatusColors.success,
          title: l10n.baggageRuleAllowanceTitle,
          description: l10n.baggageRuleAllowanceDesc,
        ),
        _RuleTile(
          icon: Icons.straighten_outlined,
          palette: AppStatusColors.info,
          title: l10n.baggageRuleDimensionsTitle,
          description: l10n.baggageRuleDimensionsDesc,
        ),
        _RuleTile(
          icon: Icons.block_outlined,
          palette: AppStatusColors.danger,
          title: l10n.baggageRuleForbiddenTitle,
          description: l10n.baggageRuleForbiddenDesc,
        ),
        _RuleTile(
          icon: Icons.shield_outlined,
          palette: AppStatusColors.warning,
          title: l10n.baggageRuleValuablesTitle,
          description: l10n.baggageRuleValuablesDesc,
          isLast: true,
        ),
      ],
    ),
  );

  Widget _feesSection(dynamic l10n) => _Section(
    title: l10n.baggageFeesTitle,
    subtitle: l10n.baggageFeesSubtitle,
    child: Column(
      children: [
        _FeeRow(
          label: l10n.baggageFeeExtraKg,
          value: l10n.baggageFeeExtraKgValue,
        ),
        _FeeRow(
          label: l10n.baggageFeeOversize,
          value: l10n.baggageFeeOversizeValue,
        ),
        _FeeRow(
          label: l10n.baggageFeeFragile,
          value: l10n.baggageFeeFragileValue,
        ),
        _FeeRow(
          label: l10n.baggageFeeExtraPiece,
          value: l10n.baggageFeeExtraPieceValue,
          isLast: true,
        ),
      ],
    ),
  );
}

class _RegisteredBaggage extends StatelessWidget {
  const _RegisteredBaggage({required this.booking});

  final TravelerBooking? booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final current = booking;

    if (current == null) {
      return InlineAlert(
        title: l10n.baggageNoticeTitle,
        message: l10n.baggageNoticeMessage,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _HeroCard(booking: current),
        const SizedBox(height: AppSpacing.sm),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadii.brCard,
            border: Border.all(color: AppColors.border),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              for (var i = 0; i < current.baggage.length; i++)
                _BaggageRow(
                  item: current.baggage[i],
                  isLast: i == current.baggage.length - 1,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _HeroCard extends StatelessWidget {
  const _HeroCard({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final total = booking.baggageTotalWeightKg;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: const BoxDecoration(
        color: AppColors.primary700,
        borderRadius: AppRadii.brCard,
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0x28FFFFFF),
              borderRadius: AppRadii.brLg,
            ),
            child: const Icon(
              Icons.luggage_outlined,
              size: 22,
              color: AppColors.white,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.baggageCount(booking.baggage.length),
                  style: AppTypography.sans(
                    size: 22,
                    weight: FontWeight.w800,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  '${booking.originCity} → ${booking.destinationCity} · '
                  '${AppTimeFormat.mediumDate(context, booking.departureTime)}',
                  style: AppTypography.sans(
                    size: 12.5,
                    color: AppColors.onPrimaryMuted,
                  ),
                ),
              ],
            ),
          ),
          if (total != null && total.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${_kg(total)} kg',
                  style: AppTypography.mono(
                    size: 17,
                    weight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  l10n.baggageTotalWeight,
                  style: AppTypography.sans(
                    size: 11,
                    color: AppColors.onPrimaryMuted,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class _BaggageRow extends StatelessWidget {
  const _BaggageRow({required this.item, required this.isLast});

  final TravelerBaggageItem item;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: AppColors.borderSoft)),
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary50,
              borderRadius: AppRadii.brMd,
            ),
            child: Icon(
              item.location == BaggageLocation.cabin
                  ? Icons.backpack_outlined
                  : Icons.work_outline,
              size: 18,
              color: AppColors.primary900,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.label,
                  style: AppTypography.sans(size: 14, weight: FontWeight.w700),
                ),
                Text(
                  '${item.tag} · ${_kg(item.weightKg)} kg',
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ),
          StatusBadge(
            label: item.locationDisplay,
            type: item.location == BaggageLocation.cabin
                ? StatusType.info
                : StatusType.success,
            showDot: false,
          ),
        ],
      ),
    );
  }
}

/// Retire les décimales inutiles d'un poids (« 18.0 » → « 18 »).
String _kg(String raw) {
  final trimmed = raw.trim();
  if (!trimmed.contains('.')) return trimmed;
  return trimmed
      .replaceFirst(RegExp(r'0+$'), '')
      .replaceFirst(RegExp(r'\.$'), '');
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child, this.subtitle});

  final String title;
  final String? subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.md,
              AppSpacing.lg,
              AppSpacing.sm,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.subtitle),
                if (subtitle != null) ...[
                  const SizedBox(height: 2),
                  Text(subtitle!, style: AppTextStyles.caption),
                ],
              ],
            ),
          ),
          const Divider(height: 1),
          child,
        ],
      ),
    );
  }
}

class _RuleTile extends StatelessWidget {
  const _RuleTile({
    required this.icon,
    required this.palette,
    required this.title,
    required this.description,
    this.isLast = false,
  });

  final IconData icon;
  final StatusPalette palette;
  final String title;
  final String description;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: AppColors.borderSoft)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: palette.background,
              borderRadius: AppRadii.brMd,
            ),
            child: Icon(icon, size: 18, color: palette.foreground),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.bodyStrong),
                const SizedBox(height: 2),
                Text(description, style: AppTextStyles.caption),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeeRow extends StatelessWidget {
  const _FeeRow({
    required this.label,
    required this.value,
    this.isLast = false,
  });

  final String label;
  final String value;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm + 1,
      ),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: AppColors.borderSoft)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTypography.sans(size: 13.5, weight: FontWeight.w500),
            ),
          ),
          Text(value, style: AppTextStyles.reference),
        ],
      ),
    );
  }
}
