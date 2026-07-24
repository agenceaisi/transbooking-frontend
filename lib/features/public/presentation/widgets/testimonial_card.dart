import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../domain/home_testimonial.dart';
import 'star_rating.dart';

/// Carte de témoignage (page d'accueil) : note, citation, auteur.
class TestimonialCard extends StatelessWidget {
  const TestimonialCard({required this.testimonial, super.key});

  final HomeTestimonial testimonial;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceSubtle,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brCard,
      ),
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StarRating(rating: testimonial.rating.toDouble(), size: 16),
          const SizedBox(height: AppSpacing.sm),
          if (testimonial.comment != null &&
              testimonial.comment!.trim().isNotEmpty)
            Text(
              '« ${testimonial.comment!} »',
              style: AppTypography.sans(size: 15, height: 1.6),
            ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.primary100,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  testimonial.initials,
                  style: AppTypography.sans(
                    size: 14,
                    weight: FontWeight.w700,
                    color: AppColors.primary900,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      testimonial.author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.sans(
                        size: 14,
                        weight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      testimonial.companyName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.sans(
                        size: 12.5,
                        color: AppColors.textTertiary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
