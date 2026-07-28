import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/agent_passenger_search_result.dart';
import '../agent_passenger_search_controller.dart';

/// Recherche rapide d'un passager dans tout le programme du jour, par nom ou
/// numéro de billet — guichetier comme contrôleur.
///
/// Relit le paquet du matin en local (`CachedBookings`/`CachedTrips`) :
/// aucun endpoint ne cherche un passager par nom sur l'ensemble du programme
/// (CLAUDE.md §0) — ceci fonctionne donc aussi hors ligne.
class AgentQuickSearchCard extends ConsumerStatefulWidget {
  const AgentQuickSearchCard({super.key});

  @override
  ConsumerState<AgentQuickSearchCard> createState() =>
      _AgentQuickSearchCardState();
}

class _AgentQuickSearchCardState extends ConsumerState<AgentQuickSearchCard> {
  static const int _maxResults = 6;

  final _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final passengers = ref.watch(agentPassengerSearchControllerProvider);

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: AppBorders.card,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.agentQuickSearchTitle, style: AppTextStyles.subtitle),
          const SizedBox(height: AppSpacing.sm),
          TextField(
            controller: _searchController,
            onChanged: (value) => setState(() => _query = value),
            textInputAction: TextInputAction.search,
            style: AppTextStyles.body,
            decoration: InputDecoration(
              hintText: l10n.agentQuickSearchHint,
              isDense: true,
              prefixIcon: const Icon(Icons.search, size: 20),
              suffixIcon: _query.isEmpty
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.close, size: 18),
                      onPressed: () => setState(() {
                        _searchController.clear();
                        _query = '';
                      }),
                    ),
              filled: true,
              fillColor: AppColors.background,
              border: const OutlineInputBorder(
                borderRadius: AppRadii.brMd,
                borderSide: BorderSide(color: AppColors.border),
              ),
            ),
          ),
          if (passengers.hasValue) ...[
            const SizedBox(height: AppSpacing.sm),
            _MatchingResults(
              all: passengers.value!,
              query: _query,
              maxResults: _maxResults,
            ),
          ] else if (passengers.hasError) ...[
            const SizedBox(height: AppSpacing.sm),
            Text(l10n.agentQuickSearchError, style: AppTextStyles.caption),
          ],
        ],
      ),
    );
  }
}

class _MatchingResults extends StatelessWidget {
  const _MatchingResults({
    required this.all,
    required this.query,
    required this.maxResults,
  });

  final List<AgentPassengerSearchResult> all;
  final String query;
  final int maxResults;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final trimmedQuery = query.trim().toLowerCase();
    if (trimmedQuery.isEmpty) return const SizedBox.shrink();

    final matches = all
        .where(
          (passenger) =>
              passenger.passengerName.toLowerCase().contains(trimmedQuery) ||
              passenger.ticketNumber.toLowerCase().contains(trimmedQuery),
        )
        .toList(growable: false);

    if (matches.isEmpty) {
      return Text(l10n.agentQuickSearchEmpty, style: AppTextStyles.caption);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final passenger in matches.take(maxResults)) ...[
          _PassengerResultRow(passenger: passenger),
          const SizedBox(height: AppSpacing.xs),
        ],
        if (matches.length > maxResults)
          Text(
            l10n.agentQuickSearchMore(matches.length - maxResults),
            style: AppTextStyles.caption,
          ),
      ],
    );
  }
}

class _PassengerResultRow extends StatelessWidget {
  const _PassengerResultRow({required this.passenger});

  final AgentPassengerSearchResult passenger;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return InkWell(
      borderRadius: AppRadii.brMd,
      onTap: () =>
          context.push(AppRoutes.agentBoardingListPath(passenger.tripId)),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: AppRadii.brMd,
          border: Border.all(color: AppColors.borderSoft),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    passenger.passengerName,
                    style: AppTextStyles.bodyStrong,
                  ),
                  const SizedBox(height: 2),
                  Text(passenger.ticketNumber, style: AppTextStyles.reference),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _tripLabel(context, l10n, passenger),
                  style: AppTextStyles.caption,
                ),
                if (passenger.seatNumber != null)
                  Text(
                    l10n.agentBoardingSeat(passenger.seatNumber!),
                    style: AppTextStyles.reference,
                  ),
              ],
            ),
            const SizedBox(width: AppSpacing.xs),
            const Icon(
              Icons.chevron_right,
              size: 18,
              color: AppColors.textTertiary,
            ),
          ],
        ),
      ),
    );
  }

  static String _tripLabel(
    BuildContext context,
    AppLocalizations l10n,
    AgentPassengerSearchResult passenger,
  ) {
    final time = AppTimeFormat.hourMinute(context, passenger.departureTime);
    return '$time · ${passenger.destinationCity}';
  }
}
