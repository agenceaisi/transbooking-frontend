import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../domain/agent_dashboard.dart';
import 'section_card.dart';

/// Bloc « Prochains départs » du guichet.
///
/// Une ligne par départ : heure, destination, véhicule, places restantes et
/// les deux actions du guichetier.
class NextDeparturesCard extends StatelessWidget {
  const NextDeparturesCard({
    required this.departures,
    required this.onOpenSchedule,
    required this.onViewPassengers,
    required this.onAddPassenger,
    this.lastUpdatedLabel,
    this.isCompact = true,
    super.key,
  });

  final List<AgentDeparture> departures;

  /// Ouvre le programme complet de la journée.
  final VoidCallback onOpenSchedule;

  final void Function(AgentDeparture departure) onViewPassengers;

  final void Function(AgentDeparture departure) onAddPassenger;

  /// « Dernière mise à jour à HHhMM » quand les données viennent du cache.
  final String? lastUpdatedLabel;

  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SectionCard(
      title: l10n.agentNextDeparturesTitle,
      subtitle: lastUpdatedLabel,
      trailing: TextButton(
        onPressed: onOpenSchedule,
        child: Text(l10n.agentFullSchedule),
      ),
      child: departures.isEmpty
          ? EmptyState(
              icon: Icons.event_available_outlined,
              title: l10n.agentNoDeparturesTitle,
              message: l10n.agentNoDeparturesMessage,
              actionLabel: l10n.agentFullSchedule,
              onAction: onOpenSchedule,
            )
          : Column(
              children: [
                for (final departure in departures)
                  _DepartureRow(
                    departure: departure,
                    isCompact: isCompact,
                    onViewPassengers: () => onViewPassengers(departure),
                    onAddPassenger: () => onAddPassenger(departure),
                  ),
              ],
            ),
    );
  }
}

class _DepartureRow extends StatelessWidget {
  const _DepartureRow({
    required this.departure,
    required this.isCompact,
    required this.onViewPassengers,
    required this.onAddPassenger,
  });

  final AgentDeparture departure;
  final bool isCompact;
  final VoidCallback onViewPassengers;
  final VoidCallback onAddPassenger;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final identity = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _DepartureTime(departure: departure),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                departure.destination,
                style: AppTypography.sans(
                  size: isCompact ? 14.5 : 15,
                  weight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: AppSpacing.xxs / 2),
              Text(
                _vehicleLine(context),
                style: AppTextStyles.referenceSmall.copyWith(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.xs),
        StatusBadge(
          label: departure.isFull
              ? l10n.agentSeatsFull
              : l10n.agentSeatsAvailable(departure.availableSeats),
          type: departure.seatStatusType,
        ),
      ],
    );

    final actions = _DepartureActions(
      departure: departure,
      isCompact: isCompact,
      onViewPassengers: onViewPassengers,
      onAddPassenger: onAddPassenger,
    );

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm + 2,
      ),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.borderSoft)),
      ),
      child: isCompact
          ? Column(
              children: [
                identity,
                const SizedBox(height: AppSpacing.sm),
                actions,
              ],
            )
          : Row(
              children: [
                Expanded(child: identity),
                const SizedBox(width: AppSpacing.md),
                actions,
              ],
            ),
    );
  }

  /// Immatriculation et nombre de passagers déjà enregistrés.
  ///
  /// L'immatriculation vient de `agent/trips/today/` : si cet appel a échoué,
  /// la ligne se réduit au nombre de passagers plutôt que d'afficher un vide.
  String _vehicleLine(BuildContext context) {
    final passengers = context.l10n.agentPassengersRegistered(
      departure.passengerCount,
    );
    final vehicle = departure.vehicleRegistration;
    return vehicle == null ? passengers : '$vehicle · $passengers';
  }
}

/// Heure de départ, surmontant l'indication de retard s'il y en a une.
class _DepartureTime extends StatelessWidget {
  const _DepartureTime({required this.departure});

  final AgentDeparture departure;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isCancelled = departure.status == TripStatus.cancelled;

    return SizedBox(
      width: 54,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppTimeFormat.hourMinute(context, departure.departureTime),
            style: AppTypography.sans(
              size: 19,
              weight: FontWeight.w700,
              height: 1,
              tabular: true,
              color: isCancelled
                  ? AppColors.textTertiary
                  : AppColors.textPrimary,
            ),
          ),
          if (departure.isDelayed || isCancelled) ...[
            const SizedBox(height: AppSpacing.xxs + 1),
            _DepartureFlag(
              label: isCancelled
                  ? l10n.agentDepartureCancelled
                  : l10n.agentDepartureDelayed,
              type: isCancelled ? StatusType.danger : StatusType.warning,
            ),
          ],
        ],
      ),
    );
  }
}

/// Étiquette compacte sous l'heure — retard ou annulation.
class _DepartureFlag extends StatelessWidget {
  const _DepartureFlag({required this.label, required this.type});

  final String label;
  final StatusType type;

  @override
  Widget build(BuildContext context) {
    final palette = AppStatusColors.of(type);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs - 2,
        vertical: AppSpacing.xxs / 2,
      ),
      decoration: BoxDecoration(
        color: palette.background,
        borderRadius: AppRadii.brSm,
      ),
      child: Text(
        label,
        style: AppTypography.sans(
          size: 10,
          weight: FontWeight.w600,
          color: palette.foreground,
        ),
      ),
    );
  }
}

/// Les deux actions du guichetier sur un départ.
class _DepartureActions extends StatelessWidget {
  const _DepartureActions({
    required this.departure,
    required this.isCompact,
    required this.onViewPassengers,
    required this.onAddPassenger,
  });

  final AgentDeparture departure;
  final bool isCompact;
  final VoidCallback onViewPassengers;
  final VoidCallback onAddPassenger;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final viewButton = OutlinedButton(
      onPressed: onViewPassengers,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textStrong,
        side: const BorderSide(color: AppColors.borderStrong),
        // Largeur minimale nulle : ces boutons vivent dans une rangée non
        // contrainte, où `Size.fromHeight` imposerait une largeur infinie.
        minimumSize: const Size(0, AppSizes.controlCompact),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md - 2),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brCard),
        textStyle: AppTextStyles.button.copyWith(fontSize: 13),
      ),
      child: Text(
        isCompact
            ? l10n.agentViewPassengerList
            : l10n.agentViewPassengerListShort,
      ),
    );

    final addButton = FilledButton.icon(
      onPressed: departure.acceptsNewPassengers ? onAddPassenger : null,
      icon: const Icon(Icons.add, size: AppSizes.iconSm),
      label: Text(l10n.agentAddPassenger),
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        disabledBackgroundColor: AppColors.borderStrong,
        disabledForegroundColor: AppColors.white,
        // Largeur minimale nulle : ces boutons vivent dans une rangée non
        // contrainte, où `Size.fromHeight` imposerait une largeur infinie.
        minimumSize: const Size(0, AppSizes.controlCompact),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md - 2),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brCard),
        textStyle: AppTextStyles.button.copyWith(fontSize: 13),
      ),
    );

    return Row(
      mainAxisSize: isCompact ? MainAxisSize.max : MainAxisSize.min,
      children: [
        if (isCompact) Expanded(child: viewButton) else viewButton,
        const SizedBox(width: AppSpacing.xs + 1),
        addButton,
      ],
    );
  }
}
