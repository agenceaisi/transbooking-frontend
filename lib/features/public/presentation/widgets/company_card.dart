import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../domain/company_summary.dart';
import 'company_logo_avatar.dart';
import 'star_rating.dart';

/// Carte d'une compagnie partenaire (grille de l'accueil).
///
/// La maquette montre un « trajet type » sous le nom : cette information n'est
/// pas exposée par `GET /public/companies/` (guide §6.2). On affiche donc la
/// ville de la compagnie, seul champ de localisation réellement fourni.
class CompanyCard extends StatelessWidget {
  const CompanyCard({
    required this.company,
    required this.tint,
    required this.onTap,
    super.key,
  });

  final CompanySummary company;

  /// Teinte du monogramme — variée d'une carte à l'autre.
  final Color tint;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: AppRadii.brCard,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brCard,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: AppRadii.brCard,
          ),
          padding: const EdgeInsets.all(AppSpacing.md + 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CompanyLogoAvatar(
                    monogram: company.monogram,
                    background: tint,
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          company.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTypography.sans(
                            size: 14.5,
                            weight: FontWeight.w700,
                          ),
                        ),
                        if (company.rating != null) ...[
                          const SizedBox(height: AppSpacing.xxs / 2),
                          Row(
                            children: [
                              StarRating(rating: company.rating, size: 13),
                              const SizedBox(width: AppSpacing.xxs),
                              Flexible(
                                child: Text(
                                  _formatRating(company.rating!),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTypography.sans(
                                    size: 11.5,
                                    weight: FontWeight.w600,
                                    color: AppColors.accent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              if (company.city != null && company.city!.trim().isNotEmpty) ...[
                const SizedBox(height: AppSpacing.sm),
                const Divider(height: 1, color: AppColors.borderSoft),
                const SizedBox(height: AppSpacing.xs + 2),
                Row(
                  children: [
                    const Icon(
                      Icons.place_outlined,
                      size: 14,
                      color: AppColors.textTertiary,
                    ),
                    const SizedBox(width: AppSpacing.xxs),
                    Expanded(
                      child: Text(
                        company.city!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.sans(
                          size: 12,
                          color: AppColors.textTertiary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  static String _formatRating(double value) =>
      value.toStringAsFixed(1).replaceFirst('.', ',');
}
