import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../domain/agent_dashboard.dart';
import 'section_card.dart';

/// Bloc « Prochain embarquement » du contrôleur.
///
/// La maquette y montre une barre de progression « 28 / 50 embarqués » :
/// **aucun endpoint de lecture ne fournit ce compte** (`boarding/validate` est
/// un POST qui verrouille l'embarquement, et la réponse de `passenger-list`
/// n'est pas décrite par le schéma). Plutôt qu'un chiffre inventé, la carte
/// renvoie vers la liste des passagers, qui le portera en phase 5C.
class NextBoardingCard extends StatelessWidget {
  const NextBoardingCard({
    required this.departure,
    required this.onScan,
    required this.onViewPassengers,
    this.lastUpdatedLabel,
    super.key,
  });

  /// Départ à embarquer, ou `null` s'il n'y en a plus aujourd'hui.
  final AgentDeparture? departure;

  final VoidCallback onScan;

  final VoidCallback onViewPassengers;

  final String? lastUpdatedLabel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final trip = departure;

    return SectionCard(
      title: l10n.agentNextBoardingTitle,
      subtitle: lastUpdatedLabel,
      padded: true,
      child: trip == null
          ? EmptyState(
              icon: Icons.directions_bus_outlined,
              title: l10n.agentNoBoardingTitle,
              message: l10n.agentNoBoardingMessage,
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TripIdentity(departure: trip),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  l10n.agentBoardingProgressNotice,
                  style: AppTextStyles.caption,
                ),
                const SizedBox(height: AppSpacing.md),
                PrimaryButton(
                  label: l10n.agentScanNextTicket,
                  icon: Icons.qr_code_scanner,
                  onPressed: onScan,
                ),
                const SizedBox(height: AppSpacing.xs),
                TextButton(
                  onPressed: onViewPassengers,
                  child: Text(l10n.agentActionPassengerList),
                ),
              ],
            ),
    );
  }
}

/// Trajet, véhicule et heure de départ du voyage en cours d'embarquement.
class _TripIdentity extends StatelessWidget {
  const _TripIdentity({required this.departure});

  final AgentDeparture departure;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final vehicle = departure.vehicleRegistration;
    final time = AppTimeFormat.hourMinute(context, departure.departureTime);

    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppColors.primary50,
            borderRadius: AppRadii.brLg,
          ),
          child: const Icon(
            Icons.directions_bus_outlined,
            color: AppColors.primary900,
            size: AppSizes.iconMd,
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${departure.origin} → ${departure.destination}',
                style: AppTypography.sans(size: 16, weight: FontWeight.w700),
              ),
              const SizedBox(height: AppSpacing.xxs / 2),
              Text(
                vehicle == null
                    ? time
                    : '$vehicle · ${l10n.agentDepartureAt(time)}',
                style: AppTextStyles.referenceSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
