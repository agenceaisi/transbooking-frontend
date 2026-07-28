import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../domain/claim_attachment_draft.dart';
import '../../domain/traveler_booking.dart';
import '../../domain/traveler_claim.dart';
import '../claim_submit_controller.dart';
import '../traveler_providers.dart';

/// Choix de type proposés (mappés sur `ClaimType`, guide §5) — les 5 tuiles de
/// la maquette « Nouvelle réclamation ».
const _claimTypeChoices = <ClaimTypeKind>[
  ClaimTypeKind.retard,
  ClaimTypeKind.perteBagage,
  ClaimTypeKind.comportement,
  ClaimTypeKind.remboursement,
  ClaimTypeKind.autre,
];

/// Nouvelle réclamation (maquette « Nouvelle réclamation », desktop ≥ 1024 px
/// et mobile 390 px).
///
/// L'API lie la réclamation à une **réservation** (dont elle déduit la
/// compagnie) et non à un numéro de billet libre : le champ « Numéro de
/// billet » de la maquette est donc un sélecteur des réservations du
/// voyageur (`booking`), et « Date du voyage » en est dérivé en lecture
/// seule plutôt qu'une date saisissable au hasard. `ClaimCreate` exige aussi
/// un `subject` que la maquette n'a pas prévu : un champ « Objet » compact a
/// été ajouté avant la description pour rester conforme au schéma sans
/// inventer de valeur par défaut. Une pièce jointe facultative (PDF/photo,
/// 10 Mo) accompagne le dépôt via le champ `attachment` en
/// `multipart/form-data`.
class NewClaimScreen extends ConsumerStatefulWidget {
  const NewClaimScreen({super.key});

  @override
  ConsumerState<NewClaimScreen> createState() => _NewClaimScreenState();
}

class _NewClaimScreenState extends ConsumerState<NewClaimScreen> {
  /// Taille maximale acceptée par l'API pour une pièce jointe (10 Mo).
  static const _maxAttachmentBytes = 10 * 1024 * 1024;
  static const _descriptionMaxLength = 600;

  final _subjectController = TextEditingController();
  final _descriptionController = TextEditingController();
  ClaimTypeKind _type = ClaimTypeKind.retard;
  int? _bookingId;
  bool _submitted = false;
  TravelerClaim? _createdClaim;
  ClaimAttachmentDraft? _attachment;
  String? _attachmentError;

  @override
  void dispose() {
    _subjectController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  bool get _isValid =>
      _bookingId != null &&
      _subjectController.text.trim().isNotEmpty &&
      _descriptionController.text.trim().length >= 10;

  Future<void> _submit() async {
    if (!_isValid || _submitted) return;
    final l10n = context.l10n;
    final claim = await ref
        .read(claimSubmitProvider.notifier)
        .submit(
          bookingId: _bookingId,
          type: _type,
          subject: _subjectController.text.trim(),
          description: _descriptionController.text.trim(),
          attachment: _attachment,
        );
    if (claim == null || !mounted) return;
    setState(() {
      _createdClaim = claim;
      _submitted = true;
    });
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            l10n.newClaimSuccessToast(l10n.newClaimReference(claim.id)),
          ),
        ),
      );
  }

  /// Ouvre le sélecteur de fichier et retient la pièce jointe si elle respecte
  /// le format et la taille. Les octets sont chargés en mémoire (`withData`)
  /// pour rester compatible Web.
  Future<void> _pickAttachment() async {
    final l10n = context.l10n;
    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['pdf', 'jpg', 'jpeg', 'png', 'webp', 'heic'],
      withData: true,
    );
    if (result == null || result.files.isEmpty) return; // annulé
    final picked = result.files.first;
    final bytes = picked.bytes;
    if (bytes == null) {
      if (mounted) {
        setState(() => _attachmentError = l10n.newClaimAttachmentUnreadable);
      }
      return;
    }
    if (bytes.length > _maxAttachmentBytes) {
      if (mounted) {
        setState(() => _attachmentError = l10n.newClaimAttachmentTooLarge);
      }
      return;
    }
    if (!mounted) return;
    setState(() {
      _attachment = ClaimAttachmentDraft(
        filename: picked.name,
        bytes: bytes,
        contentType: _contentTypeFor(picked.extension),
      );
      _attachmentError = null;
    });
  }

  /// Déduit le type MIME de l'extension (le serveur le mémorise sur la pièce).
  static String? _contentTypeFor(String? extension) =>
      switch (extension?.toLowerCase()) {
        'pdf' => 'application/pdf',
        'jpg' || 'jpeg' => 'image/jpeg',
        'png' => 'image/png',
        'webp' => 'image/webp',
        'heic' => 'image/heic',
        _ => null,
      };

  String _formatSize(int bytes) {
    final l10n = context.l10n;
    if (bytes < 1024 * 1024) {
      return l10n.fileSizeKilobytes('${(bytes / 1024).ceil()}');
    }
    final mb = (bytes / (1024 * 1024)).toStringAsFixed(1).replaceAll('.', ',');
    return l10n.fileSizeMegabytes(mb);
  }

  void _back(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.goNamed(AppRoutes.travelerClaimsName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bookingsAsync = ref.watch(myBookingsProvider);
    final bookings = bookingsAsync.value;
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    final showMobileBar = !isDesktop && bookings != null && bookings.isNotEmpty;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 20),
          onPressed: () => _back(context),
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        title: Text(l10n.newClaimTitle, style: AppTextStyles.dialogTitle),
      ),
      body: bookingsAsync.when(
        loading: () => const _FormSkeleton(),
        error: (_, _) => Padding(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: InlineAlert(
            type: StatusType.danger,
            message: l10n.newClaimBookingsError,
          ),
        ),
        data: (list) => list.isEmpty
            ? EmptyState(
                icon: Icons.confirmation_number_outlined,
                title: l10n.newClaimNoBookingsTitle,
                message: l10n.newClaimNoBookingsMessage,
              )
            : _layout(context, list, isDesktop),
      ),
      bottomNavigationBar: showMobileBar ? _mobileBottomBar(context) : null,
    );
  }

  Widget _mobileBottomBar(BuildContext context) {
    final l10n = context.l10n;
    final submitState = ref.watch(claimSubmitProvider);
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.borderSoft)),
      ),
      padding: const EdgeInsets.all(AppSpacing.md),
      child: SafeArea(
        top: false,
        child: PrimaryButton(
          label: _submitted ? l10n.newClaimSubmitted : l10n.newClaimSubmit,
          onPressed: (_isValid && !_submitted) ? _submit : null,
          isLoading: submitState.isLoading,
        ),
      ),
    );
  }

  Widget _layout(
    BuildContext context,
    List<TravelerBooking> bookings,
    bool isDesktop,
  ) {
    _bookingId ??= bookings.first.id;

    if (isDesktop) {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.xxl),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1040),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.surface,
                border: Border.all(color: AppColors.border),
                borderRadius: AppRadii.brLg,
              ),
              clipBehavior: Clip.antiAlias,
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(AppSpacing.xl),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _formFields(
                            context,
                            bookings,
                            typeColumns: 3,
                            compact: false,
                          ),
                        ),
                      ),
                    ),
                    Container(width: 1, color: AppColors.borderSoft),
                    SizedBox(
                      width: 320,
                      child: Container(
                        color: AppColors.surfaceSubtle,
                        padding: const EdgeInsets.all(AppSpacing.xl),
                        child: _sideColumn(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        AppSpacing.md,
        AppSpacing.md,
        AppSpacing.xxl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._formFields(context, bookings, typeColumns: 2, compact: true),
          const SizedBox(height: AppSpacing.lg),
          Container(
            padding: const EdgeInsets.only(top: AppSpacing.md),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: AppColors.borderSoft)),
            ),
            child: _tracker(context),
          ),
        ],
      ),
    );
  }

  /// Champs communs aux deux mises en page (seule la disposition change).
  List<Widget> _formFields(
    BuildContext context,
    List<TravelerBooking> bookings, {
    required int typeColumns,
    required bool compact,
  }) {
    final l10n = context.l10n;
    final submitState = ref.watch(claimSubmitProvider);
    final gap = compact ? AppSpacing.lg : AppSpacing.xl;

    return [
      Text(l10n.newClaimTypeLabel, style: AppTextStyles.label),
      const SizedBox(height: AppSpacing.sm - 1),
      _TypeGrid(
        selected: _type,
        onSelect: (type) => setState(() => _type = type),
        columns: typeColumns,
      ),
      SizedBox(height: gap),
      AppTextField(
        label: l10n.newClaimSubjectLabel,
        controller: _subjectController,
        hintText: l10n.newClaimSubjectHint,
        maxLength: 120,
        textCapitalization: TextCapitalization.sentences,
        onChanged: (_) => setState(() {}),
      ),
      SizedBox(height: gap),
      AppTextField(
        label: l10n.newClaimDescriptionLabel,
        controller: _descriptionController,
        hintText: l10n.newClaimDescriptionHint,
        maxLength: _descriptionMaxLength,
        minLines: compact ? 4 : 5,
        maxLines: 10,
        keyboardType: TextInputType.multiline,
        textCapitalization: TextCapitalization.sentences,
        helperText: l10n.newClaimDescriptionCounter(
          _descriptionController.text.length,
        ),
        onChanged: (_) => setState(() {}),
      ),
      SizedBox(height: gap),
      _ticketDateRow(context, bookings),
      SizedBox(height: gap),
      _attachmentSection(context, compact: compact),
      if (submitState.hasError) ...[
        const SizedBox(height: AppSpacing.md),
        InlineAlert(
          type: StatusType.danger,
          message: submitState.error is Failure
              ? (submitState.error! as Failure).localizedMessage(l10n)
              : l10n.failureUnexpected,
        ),
      ],
    ];
  }

  Widget _ticketDateRow(BuildContext context, List<TravelerBooking> bookings) {
    final selected = bookings.firstWhere(
      (b) => b.id == _bookingId,
      orElse: () => bookings.first,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _ReadOnlyField(
            label: context.l10n.newClaimDateLabel,
            value: AppTimeFormat.mediumDate(context, selected.departureTime),
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: _BookingTicketField(
            bookings: bookings,
            value: _bookingId,
            onChanged: (id) => setState(() => _bookingId = id),
          ),
        ),
      ],
    );
  }

  Widget _attachmentSection(BuildContext context, {required bool compact}) {
    final l10n = context.l10n;
    final attachment = _attachment;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(l10n.newClaimAttachmentLabel, style: AppTextStyles.label),
            if (!compact) ...[
              const SizedBox(width: AppSpacing.xxs),
              Expanded(
                child: Text(
                  l10n.newClaimAttachmentOptional,
                  style: AppTextStyles.caption,
                ),
              ),
            ],
          ],
        ),
        const SizedBox(height: AppSpacing.xs),
        if (attachment == null)
          _DashedBorder(
            borderRadius: AppRadii.brLg,
            color: AppColors.borderStrong,
            child: _AttachmentDropzone(
              onTap: _pickAttachment,
              compact: compact,
            ),
          )
        else
          _AttachmentTile(
            filename: attachment.filename,
            size:
                '${_formatSize(attachment.sizeBytes)} · '
                '${l10n.newClaimAttachmentAdded}',
            onRemove: () => setState(() => _attachment = null),
          ),
        if (_attachmentError != null) ...[
          const SizedBox(height: AppSpacing.sm),
          InlineAlert(type: StatusType.danger, message: _attachmentError!),
        ],
      ],
    );
  }

  Widget _sideColumn(BuildContext context) {
    final l10n = context.l10n;
    final submitState = ref.watch(claimSubmitProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PrimaryButton(
          label: _submitted ? l10n.newClaimSubmitted : l10n.newClaimSubmit,
          onPressed: (_isValid && !_submitted) ? _submit : null,
          isLoading: submitState.isLoading,
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          l10n.newClaimFooter,
          textAlign: TextAlign.center,
          style: AppTextStyles.caption,
        ),
        const SizedBox(height: AppSpacing.xl),
        _tracker(context),
      ],
    );
  }

  Widget _tracker(BuildContext context) {
    final l10n = context.l10n;
    final claim = _createdClaim;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.newClaimTrackerTitle,
          style: AppTypography.sans(size: 14, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.md),
        _ClaimTracker(submitted: _submitted),
        if (_submitted && claim != null) ...[
          const SizedBox(height: AppSpacing.md),
          InlineAlert(
            type: StatusType.success,
            title: l10n.newClaimReference(claim.id),
            message: l10n.newClaimSuccessMessage,
          ),
        ],
      ],
    );
  }
}

/// Grille des types de problème — 3 colonnes en desktop, 2 en mobile.
class _TypeGrid extends StatelessWidget {
  const _TypeGrid({
    required this.selected,
    required this.onSelect,
    required this.columns,
  });

  final ClaimTypeKind selected;
  final ValueChanged<ClaimTypeKind> onSelect;
  final int columns;

  static const double _gap = AppSpacing.xs + 2;

  IconData _iconFor(ClaimTypeKind type) => switch (type) {
    ClaimTypeKind.retard => Icons.schedule_outlined,
    ClaimTypeKind.perteBagage => Icons.luggage_outlined,
    ClaimTypeKind.comportement => Icons.support_agent_outlined,
    ClaimTypeKind.remboursement => Icons.currency_exchange_outlined,
    _ => Icons.more_horiz,
  };

  String _labelFor(BuildContext context, ClaimTypeKind type) {
    final l10n = context.l10n;
    return switch (type) {
      ClaimTypeKind.retard => l10n.claimTypeDelay,
      ClaimTypeKind.perteBagage => l10n.claimTypeLostBaggage,
      ClaimTypeKind.comportement => l10n.claimTypeService,
      ClaimTypeKind.remboursement => l10n.claimTypeRefund,
      _ => l10n.claimTypeOther,
    };
  }

  @override
  Widget build(BuildContext context) {
    // Grille en lignes de `columns` `Expanded` plutôt qu'un `LayoutBuilder` :
    // ce dernier ne supporte pas les requêtes de dimensions intrinsèques, ce
    // qui plante la carte desktop (elle mesure la colonne de gauche via
    // `IntrinsicHeight` pour égaler la hauteur du panneau latéral).
    final rows = <List<ClaimTypeKind>>[
      for (var i = 0; i < _claimTypeChoices.length; i += columns)
        _claimTypeChoices.skip(i).take(columns).toList(),
    ];

    return Column(
      children: [
        for (var r = 0; r < rows.length; r++) ...[
          if (r > 0) const SizedBox(height: _gap),
          Row(
            children: [
              for (var i = 0; i < columns; i++) ...[
                if (i > 0) const SizedBox(width: _gap),
                Expanded(
                  child: i < rows[r].length
                      ? _TypeCard(
                          label: _labelFor(context, rows[r][i]),
                          icon: _iconFor(rows[r][i]),
                          selected: rows[r][i] == selected,
                          onTap: () => onSelect(rows[r][i]),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ],
          ),
        ],
      ],
    );
  }
}

class _TypeCard extends StatelessWidget {
  const _TypeCard({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final iconBg = selected ? AppColors.primary : AppColors.surfaceSubtle;
    final iconFg = selected ? AppColors.onPrimary : AppColors.textSecondary;
    final labelColor = selected ? AppColors.primary900 : AppColors.textStrong;
    final borderColor = selected ? AppColors.primary : AppColors.border;
    final bg = selected ? AppColors.primary50 : AppColors.surface;

    return Material(
      color: bg,
      borderRadius: AppRadii.brLg,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brLg,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm + 2,
            vertical: AppSpacing.sm + 1,
          ),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brLg,
            border: Border.all(color: borderColor, width: 2),
          ),
          child: Row(
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: AppRadii.brMd,
                ),
                alignment: Alignment.center,
                child: Icon(icon, size: 18, color: iconFg),
              ),
              const SizedBox(width: AppSpacing.sm - 1),
              Expanded(
                child: Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(
                    size: 13.5,
                    weight: FontWeight.w600,
                    color: labelColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Champ « Numéro de billet » — en réalité un sélecteur de réservation
/// (`booking`), affiché en JetBrains Mono comme une donnée de référence.
class _BookingTicketField extends StatelessWidget {
  const _BookingTicketField({
    required this.bookings,
    required this.value,
    required this.onChanged,
  });

  final List<TravelerBooking> bookings;
  final int? value;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.newClaimTicketLabel, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xxs + 2),
        DropdownButtonFormField<int>(
          initialValue: value,
          isExpanded: true,
          selectedItemBuilder: (context) => [
            for (final booking in bookings)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  booking.ticketNumber,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.reference,
                ),
              ),
          ],
          items: [
            for (final booking in bookings)
              DropdownMenuItem<int>(
                value: booking.id,
                child: Text(
                  '${booking.originCity} → ${booking.destinationCity} · '
                  '${booking.ticketNumber}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.body,
                ),
              ),
          ],
          onChanged: onChanged,
        ),
      ],
    );
  }
}

/// Champ en lecture seule (date du voyage, dérivée de la réservation choisie).
class _ReadOnlyField extends StatelessWidget {
  const _ReadOnlyField({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xxs + 2),
        Container(
          height: AppSizes.control,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: AppColors.surfaceSubtle,
            borderRadius: AppRadii.brMd,
            border: Border.all(color: AppColors.border),
          ),
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.sans(
              size: 14,
              weight: FontWeight.w500,
              color: AppColors.textStrong,
            ),
          ),
        ),
      ],
    );
  }
}

/// Zone de dépôt en pointillés (§4 CLAUDE.md : « upload photo en zone
/// pointillée »).
class _AttachmentDropzone extends StatelessWidget {
  const _AttachmentDropzone({required this.onTap, required this.compact});

  final VoidCallback onTap;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brLg,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(compact ? AppSpacing.md : AppSpacing.lg + 6),
        decoration: const BoxDecoration(
          color: AppColors.neutral100,
          borderRadius: AppRadii.brLg,
        ),
        child: Column(
          children: [
            Container(
              width: compact ? 38 : 44,
              height: compact ? 38 : 44,
              decoration: const BoxDecoration(
                color: AppColors.primary50,
                borderRadius: AppRadii.brMd,
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.upload_rounded,
                color: AppColors.primary,
                size: compact ? 19 : 22,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              compact
                  ? l10n.newClaimAttachmentDropzoneMobile
                  : l10n.newClaimAttachmentDropzone,
              style: AppTypography.sans(
                size: compact ? 12.5 : 13.5,
                weight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
            if (!compact) ...[
              const SizedBox(height: 3),
              Text(l10n.newClaimAttachmentHint, style: AppTextStyles.caption),
            ],
          ],
        ),
      ),
    );
  }
}

/// Tuile récapitulant la pièce jointe choisie (icône, nom, taille, retrait).
class _AttachmentTile extends StatelessWidget {
  const _AttachmentTile({
    required this.filename,
    required this.size,
    required this.onRemove,
  });

  final String filename;
  final String size;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    const palette = AppStatusColors.success;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: palette.background,
        borderRadius: AppRadii.brLg,
        border: Border.all(color: palette.border),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: palette.dot,
              borderRadius: AppRadii.brMd,
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.insert_drive_file_rounded,
              size: 20,
              color: AppColors.white,
            ),
          ),
          const SizedBox(width: AppSpacing.sm + 1),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  filename,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(
                    size: 13.5,
                    weight: FontWeight.w600,
                  ),
                ),
                Text(size, style: AppTextStyles.caption),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close_rounded, size: 20),
            color: AppColors.textTertiary,
            tooltip: context.l10n.newClaimAttachmentRemove,
            onPressed: onRemove,
            splashRadius: 20,
          ),
        ],
      ),
    );
  }
}

/// Bordure en pointillés générique — dessinée en `CustomPaint` pour éviter une
/// dépendance externe.
class _DashedBorder extends StatelessWidget {
  const _DashedBorder({
    required this.borderRadius,
    required this.color,
    required this.child,
  });

  final BorderRadius borderRadius;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedBorderPainter(color: color, radius: borderRadius),
      child: child,
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  _DashedBorderPainter({required this.color, required this.radius});

  final Color color;
  final BorderRadius radius;

  static const double _dashWidth = 6;
  static const double _dashGap = 5;

  @override
  void paint(Canvas canvas, Size size) {
    final rrect = radius.toRRect(Offset.zero & size);
    final path = Path()..addRRect(rrect);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    for (final metric in path.computeMetrics()) {
      var distance = 0.0;
      while (distance < metric.length) {
        final next = distance + _dashWidth;
        canvas.drawPath(
          metric.extractPath(distance, next.clamp(0, metric.length)),
          paint,
        );
        distance = next + _dashGap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DashedBorderPainter oldDelegate) =>
      oldDelegate.color != color || oldDelegate.radius != radius;
}

/// Suivi de la réclamation : Envoyée → En cours → Résolue.
class _ClaimTracker extends StatelessWidget {
  const _ClaimTracker({required this.submitted});

  final bool submitted;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final steps = [
      (
        icon: Icons.send_rounded,
        label: l10n.newClaimTrackerSentLabel,
        desc: l10n.newClaimTrackerSentDesc,
      ),
      (
        icon: Icons.settings_outlined,
        label: l10n.newClaimTrackerProgressLabel,
        desc: l10n.newClaimTrackerProgressDesc,
      ),
      (
        icon: Icons.check_rounded,
        label: l10n.newClaimTrackerResolvedLabel,
        desc: l10n.newClaimTrackerResolvedDesc,
      ),
    ];

    return Column(
      children: [
        for (var i = 0; i < steps.length; i++)
          _TrackerRow(
            icon: steps[i].icon,
            label: steps[i].label,
            desc: steps[i].desc,
            state: _stateAt(i),
            isLast: i == steps.length - 1,
          ),
      ],
    );
  }

  _TrackerState _stateAt(int index) {
    if (!submitted) {
      return index == 0 ? _TrackerState.next : _TrackerState.upcoming;
    }
    if (index == 0) return _TrackerState.done;
    if (index == 1) return _TrackerState.current;
    return _TrackerState.upcoming;
  }
}

enum _TrackerState { done, current, next, upcoming }

class _TrackerRow extends StatelessWidget {
  const _TrackerRow({
    required this.icon,
    required this.label,
    required this.desc,
    required this.state,
    required this.isLast,
  });

  final IconData icon;
  final String label;
  final String desc;
  final _TrackerState state;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final done = state == _TrackerState.done;
    final current = state == _TrackerState.current;
    final next = state == _TrackerState.next;
    final active = done || current;

    final nodeBg = done
        ? AppColors.primary
        : current
        ? AppColors.accent50
        : AppColors.surfaceSubtle;
    final nodeBorder = done
        ? AppColors.primary
        : current
        ? AppColors.accent
        : next
        ? AppColors.borderStrong
        : AppColors.border;
    final nodeFg = done
        ? AppColors.onPrimary
        : current
        ? AppColors.accent
        : AppColors.textTertiary;
    final titleColor = active ? AppColors.textPrimary : AppColors.textTertiary;

    // Note : pas d'`IntrinsicHeight` ici — un `Expanded` sous `IntrinsicHeight`
    // fait planter le calcul de layout (chaque ligne a une description sur une
    // seule phrase courte ; la hauteur fixe du connecteur suffit).
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: nodeBg,
                border: Border.all(color: nodeBorder, width: 2),
              ),
              alignment: Alignment.center,
              child: Icon(icon, size: 15, color: nodeFg),
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 38,
                margin: const EdgeInsets.symmetric(vertical: 2),
                color: done ? AppColors.primary : AppColors.borderSoft,
              ),
          ],
        ),
        const SizedBox(width: AppSpacing.sm + 2),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: isLast ? 0 : AppSpacing.md + 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      label,
                      style: AppTypography.sans(
                        size: 13.5,
                        weight: FontWeight.w700,
                        color: titleColor,
                      ),
                    ),
                    if (current) ...[
                      const SizedBox(width: AppSpacing.xs),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 1,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.accent,
                          borderRadius: AppRadii.brPill,
                        ),
                        child: Text(
                          l10n.newClaimTrackerCurrentBadge,
                          style: AppTypography.mono(
                            size: 9,
                            weight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  desc,
                  style: AppTypography.sans(
                    size: 12,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _FormSkeleton extends StatelessWidget {
  const _FormSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: const [
        LoadingSkeleton(height: 44, borderRadius: AppRadii.brMd),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 44, borderRadius: AppRadii.brMd),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 140, borderRadius: AppRadii.brMd),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 48, borderRadius: AppRadii.brMd),
      ],
    );
  }
}
