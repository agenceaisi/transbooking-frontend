import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../domain/claim_attachment_draft.dart';
import '../../domain/traveler_booking.dart';
import '../../domain/traveler_claim.dart';
import '../claim_submit_controller.dart';
import '../traveler_providers.dart';
import '../widgets/reference_chip.dart';
import '../widgets/traveler_task_scaffold.dart';

/// Choix de type proposés (mappés sur `ClaimType`, guide §5).
const _claimTypeChoices = <ClaimTypeKind>[
  ClaimTypeKind.retard,
  ClaimTypeKind.perteBagage,
  ClaimTypeKind.comportement,
  ClaimTypeKind.remboursement,
  ClaimTypeKind.autre,
];

/// Nouvelle réclamation (maquette « Nouvelle réclamation »).
///
/// L'API lie la réclamation à une **réservation** (dont elle déduit la
/// compagnie) : on fait choisir la réservation concernée plutôt que de saisir
/// un numéro de billet libre. Une pièce jointe facultative (PDF/photo, 10 Mo)
/// accompagne le dépôt via le champ `attachment` en `multipart/form-data`.
class NewClaimScreen extends ConsumerStatefulWidget {
  const NewClaimScreen({super.key});

  @override
  ConsumerState<NewClaimScreen> createState() => _NewClaimScreenState();
}

class _NewClaimScreenState extends ConsumerState<NewClaimScreen> {
  /// Taille maximale acceptée par l'API pour une pièce jointe (10 Mo).
  static const _maxAttachmentBytes = 10 * 1024 * 1024;

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
    if (!_isValid) return;
    final claim = await ref
        .read(claimSubmitProvider.notifier)
        .submit(
          bookingId: _bookingId,
          type: _type,
          subject: _subjectController.text.trim(),
          description: _descriptionController.text.trim(),
          attachment: _attachment,
        );
    if (claim != null && mounted) {
      setState(() {
        _createdClaim = claim;
        _submitted = true;
      });
    }
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

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bookings = ref.watch(myBookingsProvider);

    return TravelerTaskScaffold(
      title: l10n.newClaimTitle,
      bottomBar: _submitted ? null : _submitBar(),
      child: bookings.when(
        loading: () => const _FormSkeleton(),
        error: (_, _) => _bookingsError(),
        data: (list) => _submitted
            ? _confirmation()
            : (list.isEmpty ? _noBookings() : _form(list)),
      ),
    );
  }

  Widget _submitBar() {
    final submit = ref.watch(claimSubmitProvider);
    return PrimaryButton(
      label: context.l10n.newClaimSubmit,
      onPressed: _isValid ? _submit : null,
      isLoading: submit.isLoading,
    );
  }

  Widget _bookingsError() => Padding(
    padding: const EdgeInsets.all(AppSpacing.xl),
    child: InlineAlert(
      type: StatusType.danger,
      message: context.l10n.newClaimBookingsError,
    ),
  );

  Widget _noBookings() => EmptyState(
    icon: Icons.confirmation_number_outlined,
    title: context.l10n.newClaimNoBookingsTitle,
    message: context.l10n.newClaimNoBookingsMessage,
  );

  Widget _form(List<TravelerBooking> bookings) {
    final l10n = context.l10n;
    final submit = ref.watch(claimSubmitProvider);
    _bookingId ??= bookings.first.id;

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        Text(l10n.newClaimTypeLabel, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xs),
        _TypeGrid(
          selected: _type,
          onSelect: (type) => setState(() => _type = type),
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(l10n.newClaimBookingLabel, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xs),
        _BookingDropdown(
          bookings: bookings,
          value: _bookingId,
          onChanged: (id) => setState(() => _bookingId = id),
        ),
        const SizedBox(height: AppSpacing.lg),
        AppTextField(
          label: l10n.newClaimSubjectLabel,
          controller: _subjectController,
          hintText: l10n.newClaimSubjectHint,
          maxLength: 120,
          textCapitalization: TextCapitalization.sentences,
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: AppSpacing.lg),
        AppTextField(
          label: l10n.newClaimDescriptionLabel,
          controller: _descriptionController,
          hintText: l10n.newClaimDescriptionHint,
          maxLength: 600,
          keyboardType: TextInputType.multiline,
          textCapitalization: TextCapitalization.sentences,
          helperText: l10n.newClaimDescriptionHelper,
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: AppSpacing.lg),
        _attachmentField(),
        if (submit.hasError) ...[
          const SizedBox(height: AppSpacing.md),
          InlineAlert(
            type: StatusType.danger,
            message: submit.error is Failure
                ? (submit.error! as Failure).localizedMessage(l10n)
                : l10n.failureUnexpected,
          ),
        ],
        const SizedBox(height: AppSpacing.md),
        Text(l10n.newClaimFooter, style: AppTextStyles.caption),
      ],
    );
  }

  Widget _attachmentField() {
    final l10n = context.l10n;
    final attachment = _attachment;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.newClaimAttachmentLabel, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xs),
        if (attachment == null)
          Text(l10n.newClaimAttachmentHint, style: AppTextStyles.caption)
        else
          _AttachmentTile(
            filename: attachment.filename,
            size: _formatSize(attachment.sizeBytes),
            onRemove: () => setState(() => _attachment = null),
          ),
        const SizedBox(height: AppSpacing.sm),
        SecondaryButton(
          label: attachment == null
              ? l10n.newClaimAttachmentAdd
              : l10n.newClaimAttachmentChange,
          icon: Icons.attach_file_rounded,
          onPressed: _pickAttachment,
          expand: false,
        ),
        if (_attachmentError != null) ...[
          const SizedBox(height: AppSpacing.sm),
          InlineAlert(type: StatusType.danger, message: _attachmentError!),
        ],
      ],
    );
  }

  Widget _confirmation() {
    final l10n = context.l10n;
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.xl),
      children: [
        const SizedBox(height: AppSpacing.lg),
        Center(
          child: Container(
            width: 88,
            height: 88,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppStatusColors.success.dot,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_rounded,
              size: 46,
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(
          l10n.newClaimThanksTitle,
          textAlign: TextAlign.center,
          style: AppTypography.serif(size: 22, weight: FontWeight.w600),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          l10n.newClaimThanksMessage,
          textAlign: TextAlign.center,
          style: AppTypography.sans(
            size: 14,
            height: 1.55,
            color: AppColors.textSecondary,
          ),
        ),
        if (_createdClaim != null) ...[
          const SizedBox(height: AppSpacing.md),
          Center(
            child: ReferenceChip(
              label: l10n.newClaimReference(_createdClaim!.id),
            ),
          ),
        ],
        const SizedBox(height: AppSpacing.xl),
        PrimaryButton(
          label: l10n.newClaimBackToClaims,
          onPressed: () => Navigator.of(context).maybePop(),
          expand: false,
        ),
      ],
    );
  }
}

class _TypeGrid extends StatelessWidget {
  const _TypeGrid({required this.selected, required this.onSelect});

  final ClaimTypeKind selected;
  final ValueChanged<ClaimTypeKind> onSelect;

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
    return Wrap(
      spacing: AppSpacing.xs,
      runSpacing: AppSpacing.xs,
      children: [
        for (final type in _claimTypeChoices)
          _TypeChip(
            label: _labelFor(context, type),
            icon: _iconFor(type),
            selected: type == selected,
            onTap: () => onSelect(type),
          ),
      ],
    );
  }
}

class _TypeChip extends StatelessWidget {
  const _TypeChip({
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
    return Material(
      color: selected ? AppColors.primary50 : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.sm,
          ),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brMd,
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
              width: selected ? 2 : 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 18,
                color: selected ? AppColors.primary : AppColors.textSecondary,
              ),
              const SizedBox(width: AppSpacing.xs),
              Text(
                label,
                style: AppTypography.sans(
                  size: 13.5,
                  weight: FontWeight.w600,
                  color: selected ? AppColors.primary900 : AppColors.textStrong,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookingDropdown extends StatelessWidget {
  const _BookingDropdown({
    required this.bookings,
    required this.value,
    required this.onChanged,
  });

  final List<TravelerBooking> bookings;
  final int? value;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      initialValue: value,
      isExpanded: true,
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
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brMd,
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.insert_drive_file_outlined,
            size: 22,
            color: AppColors.primary,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  filename,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(size: 14, weight: FontWeight.w600),
                ),
                Text(size, style: AppTextStyles.caption),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close_rounded, size: 20),
            color: AppColors.textSecondary,
            tooltip: context.l10n.newClaimAttachmentRemove,
            onPressed: onRemove,
          ),
        ],
      ),
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
        LoadingSkeleton(height: 48, borderRadius: AppRadii.brMd),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 120, borderRadius: AppRadii.brMd),
      ],
    );
  }
}
