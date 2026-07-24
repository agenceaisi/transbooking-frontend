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
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../domain/traveler_claim.dart';
import '../traveler_providers.dart';
import '../widgets/traveler_nav.dart';
import '../widgets/traveler_shell.dart';

/// Mes réclamations (liste + suivi d'état, guide §6.10).
class ClaimsScreen extends ConsumerWidget {
  const ClaimsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final claims = ref.watch(myClaimsProvider);

    return TravelerShell(
      current: TravelerDestination.claims,
      child: RefreshIndicator(
        onRefresh: () async => ref.invalidate(myClaimsProvider),
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l10n.claimsTitle, style: AppTextStyles.pageTitle),
                      const SizedBox(height: AppSpacing.xxs),
                      Text(l10n.claimsSubtitle, style: AppTextStyles.caption),
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                PrimaryButton(
                  label: l10n.claimsNewCta,
                  icon: Icons.add,
                  expand: false,
                  onPressed: () =>
                      context.pushNamed(AppRoutes.travelerNewClaimName),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.lg),
            claims.when(
              loading: () => const _ClaimsSkeleton(),
              error: (error, _) => Padding(
                padding: const EdgeInsets.only(top: AppSpacing.xxl),
                child: ErrorState(
                  failure: error is Failure ? error : null,
                  onRetry: () => ref.invalidate(myClaimsProvider),
                ),
              ),
              data: (list) => list.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: AppSpacing.xxl),
                      child: EmptyState(
                        icon: Icons.feedback_outlined,
                        title: l10n.claimsEmptyTitle,
                        message: l10n.claimsEmptyMessage,
                        actionLabel: l10n.claimsNewCta,
                        onAction: () =>
                            context.pushNamed(AppRoutes.travelerNewClaimName),
                      ),
                    )
                  : Column(
                      children: [
                        for (final claim in list)
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppSpacing.sm,
                            ),
                            child: _ClaimCard(claim: claim),
                          ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ClaimCard extends StatelessWidget {
  const _ClaimCard({required this.claim});

  final TravelerClaim claim;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(claim.claimTypeDisplay, style: AppTextStyles.eyebrow),
                    const SizedBox(height: 2),
                    Text(
                      claim.subject,
                      style: AppTextStyles.subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              StatusBadge(
                label: claim.statusDisplay,
                type: _statusType(claim.status),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            claim.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              const Icon(
                Icons.business_outlined,
                size: 14,
                color: AppColors.textTertiary,
              ),
              const SizedBox(width: AppSpacing.xxs),
              Expanded(
                child: Text(
                  claim.companyName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.caption,
                ),
              ),
              Text(
                AppTimeFormat.mediumDate(context, claim.createdAt),
                style: AppTextStyles.referenceSmall.copyWith(
                  color: AppColors.textTertiary,
                ),
              ),
            ],
          ),
          if (claim.isOverdue && !_isClosed(claim.status)) ...[
            const SizedBox(height: AppSpacing.xs),
            Row(
              children: [
                Icon(
                  Icons.timelapse_outlined,
                  size: 14,
                  color: AppStatusColors.warning.foreground,
                ),
                const SizedBox(width: AppSpacing.xxs),
                Text(
                  l10n.claimsOverdue,
                  style: AppTextStyles.caption.copyWith(
                    color: AppStatusColors.warning.foreground,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
          if (claim.response != null && claim.response!.trim().isNotEmpty) ...[
            const SizedBox(height: AppSpacing.sm),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                color: AppStatusColors.success.background,
                borderRadius: AppRadii.brMd,
                border: Border.all(color: AppStatusColors.success.border),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.claimsResponseLabel,
                    style: AppTextStyles.eyebrow.copyWith(
                      color: AppStatusColors.success.foreground,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    claim.response!,
                    style: AppTextStyles.caption.copyWith(
                      color: AppStatusColors.success.foreground,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  bool _isClosed(ClaimStatusKind? status) =>
      status == ClaimStatusKind.resolved || status == ClaimStatusKind.closed;

  StatusType _statusType(ClaimStatusKind? status) => switch (status) {
    ClaimStatusKind.resolved => StatusType.success,
    ClaimStatusKind.inProgress || ClaimStatusKind.escalated => StatusType.info,
    ClaimStatusKind.submitted => StatusType.warning,
    ClaimStatusKind.closed => StatusType.neutral,
    null => StatusType.neutral,
  };
}

class _ClaimsSkeleton extends StatelessWidget {
  const _ClaimsSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoadingSkeleton(height: 120, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.sm),
        LoadingSkeleton(height: 120, borderRadius: AppRadii.brCard),
      ],
    );
  }
}
