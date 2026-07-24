import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../review_submit_controller.dart';
import '../widgets/star_rating_input.dart';
import '../widgets/traveler_task_scaffold.dart';

/// Déposer un avis après un voyage terminé (maquette « Déposer un avis »).
///
/// L'API valide la règle métier (voyage terminé + réservation payée) et refuse
/// sinon : on affiche alors son message plutôt que de le rejouer côté client.
class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({required this.tripId, this.routeLabel, super.key});

  final int? tripId;

  /// Libellé du trajet, si transmis (ex. « Ouaga → Bobo »).
  final String? routeLabel;

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  final _commentController = TextEditingController();
  int _rating = 0;
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
          comment: _commentController.text,
        );
    if (ok && mounted) setState(() => _submitted = true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TravelerTaskScaffold(
      title: l10n.reviewTitle,
      bottomBar: _submitted || widget.tripId == null ? null : _submitBar(),
      child: widget.tripId == null
          ? _missingTrip()
          : (_submitted ? _confirmation() : _form()),
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

  Widget _form() {
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
        _TripReminder(routeLabel: widget.routeLabel),
        const SizedBox(height: AppSpacing.xl),
        Center(
          child: Column(
            children: [
              Text(
                l10n.reviewQuestion,
                textAlign: TextAlign.center,
                style: AppTextStyles.subtitle,
              ),
              const SizedBox(height: AppSpacing.xxs),
              Text(l10n.reviewQuestionHint, style: AppTextStyles.caption),
              const SizedBox(height: AppSpacing.md),
              StarRatingInput(
                value: _rating,
                onChanged: (value) => setState(() => _rating = value),
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
        AppTextField(
          label: l10n.reviewCommentLabel,
          controller: _commentController,
          optional: true,
          hintText: l10n.reviewCommentHint,
          maxLength: 1000,
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
        const SizedBox(height: AppSpacing.md),
        Text(
          l10n.reviewFooter,
          textAlign: TextAlign.center,
          style: AppTextStyles.caption,
        ),
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
  const _TripReminder({this.routeLabel});

  final String? routeLabel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
                  routeLabel ?? l10n.reviewTripFallback,
                  style: AppTextStyles.subtitle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
