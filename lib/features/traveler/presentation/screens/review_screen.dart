import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/traveler_booking.dart';
import '../review_submit_controller.dart';
import '../widgets/star_rating_input.dart';
import '../widgets/traveler_task_scaffold.dart';

/// Points forts proposés — l'API (`ReviewCreate`) n'a pas de champ dédié pour
/// ces jetons : les points cochés sont repris en tête du commentaire libre
/// (`reviewAspectsSummaryPrefix`) plutôt que silencieusement perdus.
enum _ReviewAspect {
  punctuality,
  comfort,
  cleanliness,
  welcome,
  safety,
  valueForMoney;

  String label(AppLocalizations l10n) => switch (this) {
    _ReviewAspect.punctuality => l10n.reviewAspectPunctuality,
    _ReviewAspect.comfort => l10n.reviewAspectComfort,
    _ReviewAspect.cleanliness => l10n.reviewAspectCleanliness,
    _ReviewAspect.welcome => l10n.reviewAspectWelcome,
    _ReviewAspect.safety => l10n.reviewAspectSafety,
    _ReviewAspect.valueForMoney => l10n.reviewAspectValueForMoney,
  };
}

/// Déposer un avis après un voyage terminé (maquette « Déposer un avis »).
///
/// L'API valide la règle métier (voyage terminé + réservation payée) et refuse
/// sinon : on affiche alors son message plutôt que de le rejouer côté client.
/// « Terminé » vient de `trip.status` ([TripStatusKind.completed]), jamais
/// d'une comparaison locale d'heures — un contrôleur peut clôturer un voyage
/// avant l'heure d'arrivée prévue (CLAUDE.md workflow voyageur).
class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({required this.tripId, this.booking, super.key});

  final int? tripId;

  /// Réservation d'origine, si transmise par la liste « Mes réservations » —
  /// alimente le rappel de voyage (route, date, compagnie, billet). Absente
  /// sur un lien profond / rechargement web (l'`extra` de go_router ne
  /// survit pas), d'où le repli [AppLocalizations.reviewTripFallback].
  final TravelerBooking? booking;

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  final _commentController = TextEditingController();
  int _rating = 0;
  final _selectedAspects = <_ReviewAspect>{};
  bool _submitted = false;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final tripId = widget.tripId;
    if (tripId == null || _rating == 0) return;
    final ok = await ref
        .read(reviewSubmitProvider.notifier)
        .submit(
          tripId: tripId,
          rating: _rating,
          comment: _buildComment(context),
        );
    if (ok && mounted) setState(() => _submitted = true);
  }

  /// Fusionne les points forts cochés (facultatifs) en tête du commentaire
  /// libre — c'est le seul champ de `ReviewCreate` capable de les porter.
  String _buildComment(BuildContext context) {
    final free = _commentController.text.trim();
    if (_selectedAspects.isEmpty) return free;
    final l10n = context.l10n;
    final labels = _selectedAspects.map((a) => a.label(l10n)).join(', ');
    final prefix = l10n.reviewAspectsSummaryPrefix(labels);
    return free.isEmpty ? prefix : '$prefix\n\n$free';
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isDesktop = AppBreakpoints.isDesktop(MediaQuery.sizeOf(context).width);
    return TravelerTaskScaffold(
      title: l10n.reviewTitle,
      bottomBar: _submitted || widget.tripId == null ? null : _submitBar(),
      child: widget.tripId == null
          ? _missingTrip()
          : (_submitted ? _confirmation() : _form(compact: !isDesktop)),
    );
  }

  Widget _submitBar() {
    final submit = ref.watch(reviewSubmitProvider);
    return PrimaryButton(
      label: context.l10n.reviewSubmit,
      onPressed: _rating > 0 ? _submit : null,
      isLoading: submit.isLoading,
    );
  }

  Widget _missingTrip() {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: InlineAlert(
        type: StatusType.warning,
        title: l10n.reviewMissingTripTitle,
        message: l10n.reviewMissingTripMessage,
      ),
    );
  }

  Widget _form({required bool compact}) {
    final l10n = context.l10n;
    final submit = ref.watch(reviewSubmitProvider);
    final ratingLabels = <int, String>{
      1: l10n.reviewRating1,
      2: l10n.reviewRating2,
      3: l10n.reviewRating3,
      4: l10n.reviewRating4,
      5: l10n.reviewRating5,
    };

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        _TripReminder(booking: widget.booking),
        const SizedBox(height: AppSpacing.xl),
        Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: compact
              ? BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: AppRadii.brLg,
                  border: Border.all(color: AppColors.border),
                )
              : null,
          child: Column(
            children: [
              Text(
                compact ? l10n.reviewQuestionCompact : l10n.reviewQuestion,
                textAlign: TextAlign.center,
                style: AppTextStyles.subtitle,
              ),
              if (!compact) ...[
                const SizedBox(height: AppSpacing.xxs),
                Text(l10n.reviewQuestionHint, style: AppTextStyles.caption),
              ],
              const SizedBox(height: AppSpacing.md),
              StarRatingInput(
                value: _rating,
                onChanged: (value) => setState(() => _rating = value),
                size: compact ? 38 : 44,
              ),
              const SizedBox(height: AppSpacing.sm),
              SizedBox(
                height: 22,
                child: Text(
                  _rating == 0
                      ? l10n.reviewRatingPrompt
                      : ratingLabels[_rating]!,
                  style: AppTypography.sans(
                    size: 15,
                    weight: FontWeight.w700,
                    color: _rating == 0
                        ? AppColors.textTertiary
                        : _ratingColor(_rating),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        _AspectSection(
          selected: _selectedAspects,
          compact: compact,
          onToggle: (aspect) => setState(() {
            if (!_selectedAspects.remove(aspect)) {
              _selectedAspects.add(aspect);
            }
          }),
        ),
        const SizedBox(height: AppSpacing.lg),
        AppTextField(
          label: l10n.reviewCommentLabel,
          controller: _commentController,
          optional: !compact,
          hintText: l10n.reviewCommentHint,
          maxLength: 1000,
          minLines: 4,
          maxLines: 8,
          keyboardType: TextInputType.multiline,
          textCapitalization: TextCapitalization.sentences,
        ),
        if (submit.hasError) ...[
          const SizedBox(height: AppSpacing.md),
          InlineAlert(
            type: StatusType.danger,
            message: submit.error is Failure
                ? (submit.error! as Failure).localizedMessage(l10n)
                : l10n.failureUnexpected,
          ),
        ],
        if (!compact) ...[
          const SizedBox(height: AppSpacing.md),
          Text(
            l10n.reviewFooter,
            textAlign: TextAlign.center,
            style: AppTextStyles.caption,
          ),
        ],
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
          l10n.reviewThanksTitle,
          textAlign: TextAlign.center,
          style: AppTypography.serif(size: 22, weight: FontWeight.w600),
        ),
        const SizedBox(height: AppSpacing.sm),
        Center(
          child: StarRatingInput(value: _rating, onChanged: (_) {}, size: 26),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          l10n.reviewThanksMessage(_rating),
          textAlign: TextAlign.center,
          style: AppTypography.sans(
            size: 14,
            height: 1.55,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        Center(
          child: SecondaryButton(
            label: l10n.reviewBackToBookings,
            onPressed: () => Navigator.of(context).maybePop(),
            expand: false,
          ),
        ),
      ],
    );
  }

  Color _ratingColor(int rating) => switch (rating) {
    <= 2 => AppStatusColors.danger.foreground,
    3 => AppStatusColors.warning.foreground,
    _ => AppStatusColors.success.foreground,
  };
}

class _TripReminder extends StatelessWidget {
  const _TripReminder({this.booking});

  final TravelerBooking? booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final trip = booking;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surfaceSubtle,
        borderRadius: AppRadii.brLg,
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: AppRadii.brMd,
            ),
            child: const Icon(
              Icons.directions_bus_outlined,
              size: 22,
              color: AppColors.onPrimary,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.reviewTripDone, style: AppTextStyles.eyebrow),
                const SizedBox(height: 2),
                Text(
                  trip == null
                      ? l10n.reviewTripFallback
                      : '${trip.originCity} → ${trip.destinationCity}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.subtitle,
                ),
                if (trip != null) ...[
                  const SizedBox(height: 2),
                  Text(
                    l10n.reviewTripMeta(
                      AppTimeFormat.mediumDate(context, trip.departureTime),
                      AppTimeFormat.hourMinute(context, trip.departureTime),
                      trip.companyName,
                      trip.ticketNumber,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.caption,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Section « Qu'avez-vous apprécié ? » — jetons à bascule (`Wrap`, pas de
/// contrainte de hauteur intrinsèque ici donc pas besoin du découpage en
/// lignes utilisé sur la grille de types de réclamation).
class _AspectSection extends StatelessWidget {
  const _AspectSection({
    required this.selected,
    required this.compact,
    required this.onToggle,
  });

  final Set<_ReviewAspect> selected;
  final bool compact;
  final ValueChanged<_ReviewAspect> onToggle;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: compact
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Wrap(
          alignment: compact ? WrapAlignment.start : WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 6,
          children: [
            Text(
              compact ? l10n.reviewAspectsTitleCompact : l10n.reviewAspectsTitle,
              style: AppTypography.sans(size: 13, weight: FontWeight.w600),
            ),
            Text(l10n.reviewAspectsOptional, style: AppTextStyles.caption),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        Wrap(
          spacing: AppSpacing.xs,
          runSpacing: AppSpacing.xs,
          alignment: compact ? WrapAlignment.start : WrapAlignment.center,
          children: [
            for (final aspect in _ReviewAspect.values)
              _AspectChip(
                label: aspect.label(l10n),
                selected: selected.contains(aspect),
                onTap: () => onToggle(aspect),
              ),
          ],
        ),
      ],
    );
  }
}

class _AspectChip extends StatelessWidget {
  const _AspectChip({
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
      color: selected ? AppColors.primary50 : AppColors.surface,
      borderRadius: AppRadii.brPill,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brPill,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm + 3,
            vertical: AppSpacing.xs,
          ),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brPill,
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.borderStrong,
              width: 1.5,
            ),
          ),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 13,
              weight: FontWeight.w600,
              color: selected ? AppColors.primary900 : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
