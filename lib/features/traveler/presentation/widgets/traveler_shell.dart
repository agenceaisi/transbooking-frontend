import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/brand_mark.dart';
import '../../../auth/presentation/session_controller.dart';
import 'traveler_nav.dart';

/// Ossature de l'espace voyageur : menu latéral indigo sur desktop, barre basse
/// sur mobile (maquette « Tableau de bord voyageur »). Chaque écran fournit son
/// propre contenu défilant via [child], y compris son en-tête.
class TravelerShell extends ConsumerWidget {
  const TravelerShell({
    required this.current,
    required this.child,
    this.bookingsBadge,
    super.key,
  });

  /// Section active — met en évidence l'élément de menu correspondant.
  final TravelerDestination current;

  /// Contenu de l'écran (défilant, avec son propre en-tête).
  final Widget child;

  /// Compteur facultatif sur « Mes réservations » (jamais inventé : passé par
  /// les écrans qui connaissent déjà la valeur).
  final int? bookingsBadge;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionControllerProvider);
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    final specs = TravelerNavSpec.all(context);

    void go(TravelerNavSpec spec) {
      if (spec.destination == current) return;
      context.goNamed(spec.routeName);
    }

    if (isDesktop) {
      return Scaffold(
        backgroundColor: AppColors.surfaceSubtle,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Sidebar(
              specs: specs,
              current: current,
              bookingsBadge: bookingsBadge,
              userName: session.displayName ?? context.l10n.travelerNavProfile,
              onSelect: go,
            ),
            Expanded(child: child),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.surfaceSubtle,
      body: child,
      bottomNavigationBar: _BottomNav(
        specs: specs.where((spec) => spec.inBottomNav).toList(growable: false),
        current: current,
        onSelect: go,
      ),
    );
  }
}

/// Deux initiales pour l'avatar, à partir d'un nom affiché.
String travelerInitials(String? name) {
  final words = (name ?? '').trim().split(RegExp(r'\s+'))
    ..removeWhere((word) => word.isEmpty);
  if (words.isEmpty) return '·';
  if (words.length == 1) {
    final word = words.first;
    return (word.length >= 2 ? word.substring(0, 2) : word).toUpperCase();
  }
  return words.take(2).map((word) => word[0]).join().toUpperCase();
}

class _Sidebar extends StatelessWidget {
  const _Sidebar({
    required this.specs,
    required this.current,
    required this.bookingsBadge,
    required this.userName,
    required this.onSelect,
  });

  final List<TravelerNavSpec> specs;
  final TravelerDestination current;
  final int? bookingsBadge;
  final String userName;
  final ValueChanged<TravelerNavSpec> onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      color: AppColors.primary700,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm + 2,
        vertical: AppSpacing.lg + 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
            child: Row(
              children: [
                const BrandMark(
                  size: 34,
                  background: AppColors.primary50,
                  foreground: AppColors.primary700,
                ),
                const SizedBox(width: AppSpacing.xs + 2),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TransBooking',
                        style: AppTypography.sans(
                          size: 16,
                          weight: FontWeight.w800,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        context.l10n.travelerSidebarSubtitle,
                        style: AppTypography.mono(
                          size: 9.5,
                          weight: FontWeight.w600,
                          letterSpacing: 1,
                          color: AppColors.primary300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          const Divider(color: Color(0x24FFFFFF), height: 1),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                for (final spec in specs)
                  _SidebarItem(
                    spec: spec,
                    isActive: spec.destination == current,
                    badge: spec.destination == TravelerDestination.bookings
                        ? bookingsBadge
                        : null,
                    onTap: () => onSelect(spec),
                  ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          _UserCard(userName: userName),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  const _SidebarItem({
    required this.spec,
    required this.isActive,
    required this.badge,
    required this.onTap,
  });

  final TravelerNavSpec spec;
  final bool isActive;
  final int? badge;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xxs - 1),
      child: Material(
        color: isActive ? const Color(0x2EFFFFFF) : Colors.transparent,
        borderRadius: AppRadii.brCard,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadii.brCard,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.sm,
              vertical: AppSpacing.sm - 1,
            ),
            child: Row(
              children: [
                Icon(
                  spec.icon,
                  size: 20,
                  color: isActive ? AppColors.white : AppColors.onPrimaryMuted,
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Text(
                    spec.label,
                    style: AppTypography.sans(
                      size: 14,
                      weight: isActive ? FontWeight.w700 : FontWeight.w500,
                      color: isActive
                          ? AppColors.white
                          : AppColors.onPrimaryMuted,
                    ),
                  ),
                ),
                if (badge != null && badge! > 0) _NavBadge(count: badge!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavBadge extends StatelessWidget {
  const _NavBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs - 1,
        vertical: 1,
      ),
      decoration: const BoxDecoration(
        color: AppColors.accent,
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        '$count',
        style: AppTypography.mono(
          size: 10,
          weight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );
  }
}

class _UserCard extends StatelessWidget {
  const _UserCard({required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm + 2),
      decoration: const BoxDecoration(
        color: Color(0x1AFFFFFF),
        borderRadius: AppRadii.brLg,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 19,
            backgroundColor: AppColors.primary50,
            child: Text(
              travelerInitials(userName),
              style: AppTypography.sans(
                size: 14,
                weight: FontWeight.w700,
                color: AppColors.primary900,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.sm - 1),
          Expanded(
            child: Text(
              userName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.sans(
                size: 13,
                weight: FontWeight.w700,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({
    required this.specs,
    required this.current,
    required this.onSelect,
  });

  final List<TravelerNavSpec> specs;
  final TravelerDestination current;
  final ValueChanged<TravelerNavSpec> onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            for (final spec in specs)
              Expanded(
                child: _BottomTab(
                  spec: spec,
                  isActive: spec.destination == current,
                  onTap: () => onSelect(spec),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _BottomTab extends StatelessWidget {
  const _BottomTab({
    required this.spec,
    required this.isActive,
    required this.onTap,
  });

  final TravelerNavSpec spec;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = isActive ? AppColors.primary : AppColors.textTertiary;
    return Semantics(
      button: true,
      selected: isActive,
      label: spec.shortLabel,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xxs,
            AppSpacing.xs + 1,
            AppSpacing.xxs,
            AppSpacing.sm - 1,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(spec.icon, size: 21, color: color),
              const SizedBox(height: AppSpacing.xxs - 1),
              Text(
                spec.shortLabel,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.sans(
                  size: 9.5,
                  weight: isActive ? FontWeight.w700 : FontWeight.w500,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
