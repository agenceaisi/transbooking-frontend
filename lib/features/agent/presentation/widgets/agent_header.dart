import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/utils/clock_provider.dart';

/// En-tête indigo du module agent : qui travaille, à quel titre, et quand.
///
/// La maquette y place aussi la compagnie et le poste de travail (« Gare de
/// Ouaga · Guichet 3 ») : **aucun des deux n'est exposé par l'API** (ni
/// `users/me/`, ni `agent/dashboard/`). Ils sont donc absents plutôt
/// qu'inventés — à rétablir dès que le backend les renverra.
class AgentHeader extends StatelessWidget {
  const AgentHeader({
    required this.name,
    required this.roleLabel,
    this.onSignOut,
    this.isCompact = true,
    super.key,
  });

  /// Nom affiché de l'agent.
  final String name;

  /// Libellé du rôle, déjà traduit.
  final String roleLabel;

  final VoidCallback? onSignOut;

  /// Disposition mobile (empilée) plutôt que tablette/desktop (sur une ligne).
  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    final avatar = _AgentAvatar(name: name, isCompact: isCompact);
    final clock = _AgentClock(isCompact: isCompact);

    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(
        horizontal: isCompact ? AppSpacing.md : AppSpacing.xxl,
        vertical: isCompact ? AppSpacing.md : AppSpacing.lg,
      ),
      child: SafeArea(
        bottom: false,
        child: isCompact
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      avatar,
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: _AgentIdentity(
                          name: name,
                          roleLabel: roleLabel,
                          isCompact: true,
                        ),
                      ),
                      if (onSignOut != null) _SignOutButton(onTap: onSignOut!),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const Divider(color: AppColors.onPrimaryMuted, height: 1),
                  const SizedBox(height: AppSpacing.sm),
                  clock,
                ],
              )
            : Row(
                children: [
                  avatar,
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: _AgentIdentity(
                      name: name,
                      roleLabel: roleLabel,
                      isCompact: false,
                    ),
                  ),
                  clock,
                  if (onSignOut != null) ...[
                    const SizedBox(width: AppSpacing.sm),
                    _SignOutButton(onTap: onSignOut!),
                  ],
                ],
              ),
      ),
    );
  }
}

/// Initiales de l'agent dans une pastille claire.
class _AgentAvatar extends StatelessWidget {
  const _AgentAvatar({required this.name, required this.isCompact});

  final String name;
  final bool isCompact;

  /// Deux initiales au maximum, comme sur la maquette.
  static String initialsOf(String name) {
    final words = name.trim().split(RegExp(r'\s+'))
      ..removeWhere((word) => word.isEmpty);
    if (words.isEmpty) return '?';
    return words
        .take(2)
        .map((word) => word.characters.first.toUpperCase())
        .join();
  }

  @override
  Widget build(BuildContext context) {
    final size = isCompact ? 46.0 : 56.0;

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.primary50,
        shape: BoxShape.circle,
      ),
      child: Text(
        initialsOf(name),
        style: AppTypography.sans(
          size: isCompact ? 17 : 20,
          weight: FontWeight.w700,
          color: AppColors.primary900,
        ),
      ),
    );
  }
}

/// Nom de l'agent et pastille de rôle.
class _AgentIdentity extends StatelessWidget {
  const _AgentIdentity({
    required this.name,
    required this.roleLabel,
    required this.isCompact,
  });

  final String name;
  final String roleLabel;
  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    final nameText = Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.sans(
        size: isCompact ? 17 : 22,
        weight: FontWeight.w800,
        height: 1.15,
        color: AppColors.white,
      ),
    );

    final rolePill = Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xxs + 1,
      ),
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.16),
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        roleLabel,
        style: AppTypography.sans(
          size: 11,
          weight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );

    if (isCompact) {
      return Row(
        children: [
          Flexible(child: nameText),
          const SizedBox(width: AppSpacing.xs),
          rolePill,
        ],
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: nameText),
        const SizedBox(width: AppSpacing.sm),
        rolePill,
      ],
    );
  }
}

/// Date du jour et heure courante, remise à l'heure toutes les minutes.
class _AgentClock extends ConsumerWidget {
  const _AgentClock({required this.isCompact});

  final bool isCompact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = ref.watch(clockProvider).value ?? DateTime.now();

    final date = Text(
      AppTimeFormat.fullDate(context, now),
      style: AppTypography.sans(
        size: 12.5,
        color: AppColors.onPrimaryMuted,
        height: 1.3,
      ),
    );
    final time = Text(
      AppTimeFormat.hourMinute(context, now),
      style: AppTypography.mono(
        size: isCompact ? 15 : 26,
        weight: FontWeight.w700,
        color: AppColors.white,
      ),
    );

    if (isCompact) {
      return Row(
        children: [
          const Icon(
            Icons.schedule_outlined,
            size: AppSizes.iconSm,
            color: AppColors.onPrimaryMuted,
          ),
          const SizedBox(width: AppSpacing.xs),
          Expanded(child: date),
          time,
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        time,
        const SizedBox(height: AppSpacing.xxs / 2),
        date,
      ],
    );
  }
}

/// Sortie de session — la maquette la place dans l'onglet « Profil », qui
/// n'existe pas encore : en attendant, l'agent doit pouvoir se déconnecter.
class _SignOutButton extends StatelessWidget {
  const _SignOutButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      tooltip: context.l10n.actionSignOut,
      icon: const Icon(Icons.logout, color: AppColors.onPrimaryMuted),
    );
  }
}
