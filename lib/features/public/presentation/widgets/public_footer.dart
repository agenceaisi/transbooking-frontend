import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/brand_mark.dart';
import '../../../../l10n/app_localizations.dart';
import 'public_nav.dart';

/// Pied de page du site public — bloc indigo foncé, quatre colonnes en desktop,
/// empilé en mobile.
///
/// Les moyens de paiement affichés sont les méthodes réellement supportées par
/// l'API (guide §6.8) : la carte bancaire est masquée (hors périmètre,
/// CLAUDE.md §7).
class PublicFooter extends StatelessWidget {
  const PublicFooter({required this.onNavigate, super.key});

  /// Ouvre une destination de navigation.
  final void Function(PublicNavDestination) onNavigate;

  /// Fond du pied de page — indigo très foncé, distinct du fond des sections.
  static const Color _background = Color(0xFF14213A);
  static const Color _mutedText = Color(0xFF8391A8);
  static const Color _dimText = Color(0xFF5A6478);
  static const Color _chipText = Color(0xFFC7CEDD);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final width = MediaQuery.sizeOf(context).width;
    final isDesktop = AppBreakpoints.isDesktop(width);
    final year = DateTime.now().year;

    const brandColumn = _BrandColumn(
      mutedText: _mutedText,
      chipText: _chipText,
    );
    final columns = _linkColumns(context, l10n);

    return Container(
      width: double.infinity,
      color: _background,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? AppSpacing.xxl : AppSpacing.md,
        vertical: isDesktop ? AppSpacing.xxxl : AppSpacing.xl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isDesktop)
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(flex: 16, child: brandColumn),
                  const SizedBox(width: AppSpacing.xxl),
                  for (final column in columns) ...[
                    Expanded(flex: 10, child: column),
                    const SizedBox(width: AppSpacing.md),
                  ],
                ],
              ),
            )
          else ...[
            brandColumn,
            const SizedBox(height: AppSpacing.xl),
            Wrap(
              spacing: AppSpacing.md,
              runSpacing: AppSpacing.xs,
              children: [
                for (final destination in PublicNavDestination.values)
                  _FooterLink(
                    label: destination.label(context),
                    onTap: () => onNavigate(destination),
                  ),
              ],
            ),
          ],
          const SizedBox(height: AppSpacing.xl),
          const Divider(color: Color(0x1AFFFFFF), height: 1),
          const SizedBox(height: AppSpacing.md),
          _BottomBar(
            copyright: l10n.publicFooterCopyright(year),
            dimText: _dimText,
            mutedText: _mutedText,
            isDesktop: isDesktop,
          ),
        ],
      ),
    );
  }

  List<Widget> _linkColumns(BuildContext context, AppLocalizations l10n) {
    return [
      _LinkColumn(
        title: l10n.publicFooterColPlatform,
        links: [
          _FooterLink(
            label: PublicNavDestination.search.label(context),
            onTap: () => onNavigate(PublicNavDestination.search),
          ),
          _FooterLink(
            label: PublicNavDestination.trackParcel.label(context),
            onTap: () => onNavigate(PublicNavDestination.trackParcel),
          ),
          _FooterLink(
            label: PublicNavDestination.companies.label(context),
            onTap: () => onNavigate(PublicNavDestination.companies),
          ),
          _FooterLink(label: l10n.publicFooterLinkBecomePartner),
        ],
      ),
      _LinkColumn(
        title: l10n.publicFooterColHelp,
        links: [
          _FooterLink(label: l10n.publicFooterLinkHelpCenter),
          _FooterLink(label: l10n.publicFooterLinkHowToBook),
          _FooterLink(label: l10n.publicFooterLinkFaq),
        ],
      ),
      _LinkColumn(
        title: l10n.publicFooterColContact,
        links: [
          _FooterLink(label: l10n.publicFooterContactPhone),
          _FooterLink(label: l10n.publicFooterContactEmail),
          _FooterLink(label: l10n.publicFooterContactCity),
        ],
      ),
    ];
  }
}

class _BrandColumn extends StatelessWidget {
  const _BrandColumn({required this.mutedText, required this.chipText});

  final Color mutedText;
  final Color chipText;

  /// Moyens de paiement supportés (Mobile Money) — la carte est exclue.
  static const List<String> _paymentMethods = [
    'Orange Money',
    'Moov Money',
    'Coris Money',
    'Telecel Money',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BrandLockup(markSize: 32, fontSize: 17),
        const SizedBox(height: AppSpacing.sm),
        Text(
          context.l10n.publicFooterTagline,
          style: AppTypography.sans(size: 13, height: 1.55, color: mutedText),
        ),
        const SizedBox(height: AppSpacing.md),
        Wrap(
          spacing: AppSpacing.xs,
          runSpacing: AppSpacing.xs,
          children: [
            for (final method in _paymentMethods)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.xs + 2,
                  vertical: AppSpacing.xxs,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: 0.08),
                  borderRadius: AppRadii.brSm,
                ),
                child: Text(
                  method,
                  style: AppTypography.sans(
                    size: 11.5,
                    weight: FontWeight.w600,
                    color: chipText,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _LinkColumn extends StatelessWidget {
  const _LinkColumn({required this.title, required this.links});

  final String title;
  final List<Widget> links;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.sans(
            size: 13,
            weight: FontWeight.w700,
            color: AppColors.white,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        for (final link in links) ...[
          link,
          const SizedBox(height: AppSpacing.xs + 2),
        ],
      ],
    );
  }
}

class _FooterLink extends StatelessWidget {
  const _FooterLink({required this.label, this.onTap});

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style: AppTypography.sans(size: 13, color: PublicFooter._mutedText),
    );

    if (onTap == null) return text;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brSm,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: text,
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.copyright,
    required this.dimText,
    required this.mutedText,
    required this.isDesktop,
  });

  final String copyright;
  final Color dimText;
  final Color mutedText;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final copyrightText = Text(
      copyright,
      style: AppTypography.sans(size: 12.5, color: dimText),
    );
    final legalLinks = Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.xs,
      children: [
        _FooterLink(label: l10n.publicFooterLegalTerms, onTap: () {}),
        _FooterLink(label: l10n.publicFooterLegalPrivacy, onTap: () {}),
        _FooterLink(label: l10n.publicFooterLegalNotice, onTap: () {}),
      ],
    );

    if (isDesktop) {
      return Row(
        children: [
          Expanded(child: copyrightText),
          legalLinks,
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        legalLinks,
        const SizedBox(height: AppSpacing.sm),
        copyrightText,
      ],
    );
  }
}
