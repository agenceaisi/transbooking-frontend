import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../domain/parcel_tracking.dart';
import '../parcel_tracking_controller.dart';
import '../widgets/parcel_timeline.dart';
import '../widgets/public_nav.dart';
import '../widgets/public_page_scaffold.dart';

/// Suivi de colis public — saisie d'un numéro puis affichage de l'état.
///
/// Aucun exemple de numéro prérempli n'est proposé : contrairement à la
/// maquette, les numéros fictifs renverraient un 404 sur l'API réelle.
class ParcelTrackingScreen extends StatelessWidget {
  const ParcelTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PublicPageScaffold(
      current: PublicNavDestination.trackParcel,
      body: _TrackingBody(),
    );
  }
}

class _TrackingBody extends ConsumerStatefulWidget {
  const _TrackingBody();

  @override
  ConsumerState<_TrackingBody> createState() => _TrackingBodyState();
}

class _TrackingBodyState extends ConsumerState<_TrackingBody> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _track() {
    final query = _controller.text.trim();
    if (query.isEmpty) return;
    FocusScope.of(context).unfocus();
    ref.read(parcelTrackingControllerProvider.notifier).track(query);
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    final result = ref.watch(parcelTrackingControllerProvider);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? AppSpacing.xxl : AppSpacing.md,
        vertical: isDesktop ? AppSpacing.xl : AppSpacing.md,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(),
              const SizedBox(height: AppSpacing.md),
              _SearchBar(controller: _controller, onSubmit: _track),
              const SizedBox(height: AppSpacing.xl),
              _ResultArea(result: result, isDesktop: isDesktop),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.trackingTitle,
          style: AppTypography.serif(size: 26, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          l10n.trackingSubtitle,
          style: AppTypography.sans(
            size: 14,
            height: 1.5,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({required this.controller, required this.onSubmit});

  final TextEditingController controller;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            textInputAction: TextInputAction.search,
            onSubmitted: (_) => onSubmit(),
            style: AppTextStyles.reference,
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.inventory_2_outlined),
              hintText: l10n.trackingInputHint,
              hintStyle: AppTextStyles.reference.copyWith(
                color: AppColors.textTertiary,
              ),
            ),
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        SizedBox(
          height: AppSizes.control,
          child: FilledButton(
            onPressed: onSubmit,
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.onPrimary,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
              textStyle: AppTextStyles.button,
            ),
            child: Text(l10n.trackingSubmit),
          ),
        ),
      ],
    );
  }
}

/// Affiche l'invite, le chargement, l'erreur ou le résultat.
class _ResultArea extends StatelessWidget {
  const _ResultArea({required this.result, required this.isDesktop});

  final AsyncValue<ParcelTracking?> result;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return switch (result) {
      AsyncValue(isLoading: true) => const Padding(
        padding: EdgeInsets.all(AppSpacing.xxl),
        child: Center(child: CircularProgressIndicator()),
      ),
      AsyncValue(:final error?) => _errorView(context, error),
      AsyncValue(:final ParcelTracking value) => _ParcelResult(
        parcel: value,
        isDesktop: isDesktop,
      ),
      // data(null) : aucune recherche lancée.
      _ => const _Prompt(),
    };
  }

  Widget _errorView(BuildContext context, Object error) {
    // Un numéro inconnu (404) est un cas ordinaire, pas une panne : carte
    // dédiée plutôt qu'état d'erreur générique.
    if (error is NotFoundFailure) return const _NotFound();
    return ErrorState(failure: error is Failure ? error : null);
  }
}

class _Prompt extends StatelessWidget {
  const _Prompt();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.xxl),
      child: EmptyState(
        icon: Icons.local_shipping_outlined,
        title: l10n.trackingPromptTitle,
        message: l10n.trackingPromptMessage,
      ),
    );
  }
}

class _NotFound extends StatelessWidget {
  const _NotFound();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.xxl),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppStatusColors.danger.background,
              borderRadius: AppRadii.brLg,
            ),
            child: Icon(
              Icons.search_off,
              color: AppStatusColors.danger.foreground,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            l10n.trackingNotFoundTitle,
            style: AppTypography.sans(size: 16, weight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.xxs),
          Text(
            l10n.trackingNotFoundMessage,
            textAlign: TextAlign.center,
            style: AppTypography.sans(
              size: 13.5,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _ParcelResult extends StatelessWidget {
  const _ParcelResult({required this.parcel, required this.isDesktop});

  final ParcelTracking parcel;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final timeline = _TimelineCard(parcel: parcel);
    final recipient = _RecipientCard(parcel: parcel);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _StatusBanner(parcel: parcel),
        const SizedBox(height: AppSpacing.lg),
        if (isDesktop)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 3, child: timeline),
              const SizedBox(width: AppSpacing.lg),
              Expanded(flex: 2, child: recipient),
            ],
          )
        else ...[
          timeline,
          const SizedBox(height: AppSpacing.md),
          recipient,
        ],
      ],
    );
  }
}

class _StatusBanner extends StatelessWidget {
  const _StatusBanner({required this.parcel});

  final ParcelTracking parcel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary50,
        border: Border.all(color: AppColors.primary100),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: AppRadii.brMd,
            ),
            child: const Icon(
              Icons.local_shipping_outlined,
              color: AppColors.onPrimary,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.trackingCurrentStatus.toUpperCase(),
                  style: AppTypography.mono(
                    size: 10.5,
                    weight: FontWeight.w600,
                    letterSpacing: 0.6,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  parcel.statusDisplay,
                  style: AppTypography.sans(size: 18, weight: FontWeight.w800),
                ),
                const SizedBox(height: 2),
                Text(
                  l10n.trackingRoute(parcel.originCity, parcel.destinationCity),
                  style: AppTypography.sans(
                    size: 13,
                    color: AppColors.textSecondary,
                  ),
                ),
                if (parcel.currentLocation != null &&
                    parcel.currentLocation!.isNotEmpty) ...[
                  const SizedBox(height: AppSpacing.xxs),
                  Row(
                    children: [
                      const Icon(
                        Icons.place_outlined,
                        size: 14,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: AppSpacing.xxs),
                      Flexible(
                        child: Text(
                          parcel.currentLocation!,
                          style: AppTypography.sans(
                            size: 13,
                            weight: FontWeight.w600,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          if (parcel.estimatedDelivery != null) ...[
            const SizedBox(width: AppSpacing.md),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  l10n.trackingEstimatedDelivery,
                  style: AppTypography.sans(
                    size: 12,
                    color: AppColors.textTertiary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  AppTimeFormat.mediumDate(context, parcel.estimatedDelivery!),
                  style: AppTypography.sans(
                    size: 15,
                    weight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _TimelineCard extends StatelessWidget {
  const _TimelineCard({required this.parcel});

  final ParcelTracking parcel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.trackingProgressTitle,
            style: AppTypography.sans(size: 15, weight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.md),
          ParcelTimeline(steps: parcel.timeline),
        ],
      ),
    );
  }
}

class _RecipientCard extends StatelessWidget {
  const _RecipientCard({required this.parcel});

  final ParcelTracking parcel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surfaceSubtle,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.trackingRecipientTitle.toUpperCase(),
            style: AppTypography.mono(
              size: 10.5,
              weight: FontWeight.w600,
              letterSpacing: 0.6,
              color: AppColors.textTertiary,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  _initials(parcel.recipientName),
                  style: AppTypography.sans(
                    size: 15,
                    weight: FontWeight.w700,
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
                      parcel.recipientName,
                      style: AppTypography.sans(
                        size: 15,
                        weight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      parcel.recipientPhone,
                      style: AppTextStyles.referenceSmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: AppSpacing.sm),
            child: Divider(height: 1, color: AppColors.borderSoft),
          ),
          _InfoRow(
            label: l10n.trackingRecipientPhone,
            value: parcel.recipientPhone,
          ),
        ],
      ),
    );
  }

  static String _initials(String name) {
    final words = name.trim().split(RegExp(r'\s+'))
      ..removeWhere((w) => w.isEmpty);
    if (words.isEmpty) return '?';
    return words.take(2).map((w) => w[0]).join().toUpperCase();
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTypography.sans(size: 13, color: AppColors.textSecondary),
        ),
        Text(value, style: AppTextStyles.referenceSmall),
      ],
    );
  }
}
