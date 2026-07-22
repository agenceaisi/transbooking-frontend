// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'TransBooking BF';

  @override
  String get currencySuffix => 'FCFA';

  @override
  String get actionRetry => 'Réessayer';

  @override
  String get actionCancel => 'Annuler';

  @override
  String get actionClose => 'Fermer';

  @override
  String get actionContinue => 'Continuer';

  @override
  String get actionSignIn => 'Se connecter';

  @override
  String get actionSignOut => 'Se déconnecter';

  @override
  String get actionBack => 'Retour';

  @override
  String get brandTagline => 'Voyages & colis · Burkina Faso';

  @override
  String get featureComingSoon => 'Bientôt disponible';

  @override
  String get fieldOptional => '(optionnel)';

  @override
  String get fieldRequired => 'Ce champ est obligatoire.';

  @override
  String get fieldEmailInvalid => 'Adresse e-mail invalide.';

  @override
  String get fieldPhoneIncomplete => 'Le numéro compte 8 chiffres.';

  @override
  String get passwordShow => 'Afficher le mot de passe';

  @override
  String get passwordHide => 'Masquer le mot de passe';

  @override
  String get passwordTooShort =>
      'Choisissez un mot de passe d\'au moins 8 caractères.';

  @override
  String get loginTitle => 'Content de vous revoir';

  @override
  String get loginSubtitle =>
      'Connectez-vous pour gérer vos réservations et colis.';

  @override
  String get loginPasswordLabel => 'Mot de passe';

  @override
  String get loginForgotPassword => 'Mot de passe oublié ?';

  @override
  String get loginForgotPasswordUnavailable =>
      'La réinitialisation n\'est pas encore ouverte. Contactez votre compagnie ou la plateforme.';

  @override
  String get loginInvalidCredentials =>
      'Numéro ou mot de passe incorrect. Vérifiez et réessayez.';

  @override
  String loginRetryIn(int seconds) {
    return 'Réessayez dans $seconds s';
  }

  @override
  String get loginNoAccount => 'Pas encore de compte ?';

  @override
  String get loginCreateAccount => 'Créer un compte';

  @override
  String get registerTitle => 'Créer un compte';

  @override
  String get registerSubtitle =>
      'Rejoignez la plateforme de transport du Burkina Faso.';

  @override
  String get registerTabTraveler => 'Voyageur';

  @override
  String get registerTabTravelerHint => 'Réserver & suivre';

  @override
  String get registerTabCompany => 'Compagnie';

  @override
  String get registerTabCompanyHint => 'Demande à valider';

  @override
  String get registerHasAccount => 'Vous avez déjà un compte ?';

  @override
  String get fieldFirstName => 'Prénom';

  @override
  String get fieldFirstNameHint => 'Awa';

  @override
  String get fieldLastName => 'Nom';

  @override
  String get fieldLastNameHint => 'Ouédraogo';

  @override
  String get fieldEmail => 'E-mail';

  @override
  String get fieldEmailHint => 'awa@exemple.com';

  @override
  String get fieldPasswordHint => '8 caractères minimum';

  @override
  String get registerTerms =>
      'J\'accepte les conditions d\'utilisation et la politique de confidentialité.';

  @override
  String get registerTermsRequired => 'Acceptez les conditions pour continuer.';

  @override
  String get registerSubmitTraveler => 'Créer mon compte voyageur';

  @override
  String get registerSuccess =>
      'Votre compte est créé. Connectez-vous pour commencer.';

  @override
  String get companyRequestNotice =>
      'Votre demande sera examinée par l\'équipe TransBooking BF sous 48 h. Vous recevrez un e-mail dès la validation de votre compte compagnie.';

  @override
  String get companyRequestNoticeTitle => 'Demande soumise à validation';

  @override
  String get fieldCompanyName => 'Nom de la compagnie';

  @override
  String get fieldCompanyNameHint => 'Ex. Faso Express';

  @override
  String get fieldManagerName => 'Responsable';

  @override
  String get fieldManagerNameHint => 'Nom & prénom';

  @override
  String get fieldProEmail => 'E-mail professionnel';

  @override
  String get fieldProEmailHint => 'contact@compagnie.bf';

  @override
  String get fieldCompanyCity => 'Ville / Adresse du siège';

  @override
  String get fieldCompanyCityHint => 'Ex. Gare routière, Ouagadougou';

  @override
  String get companyDocumentsLabel => 'Documents administratifs';

  @override
  String get companyDocumentsHint => 'RCCM, IFU, agrément';

  @override
  String get companyRequestSubmit => 'Envoyer la demande';

  @override
  String get companyRequestFootnote =>
      'Compte soumis à validation de la plateforme.';

  @override
  String get companyRequestSuccess =>
      'Demande envoyée. Nous revenons vers vous sous 48 h.';

  @override
  String get passwordChangeTitle => 'Changer votre mot de passe';

  @override
  String get passwordChangeSubtitle =>
      'Votre session reste ouverte après le changement.';

  @override
  String get fieldCurrentPassword => 'Mot de passe actuel';

  @override
  String get fieldNewPassword => 'Nouveau mot de passe';

  @override
  String get fieldConfirmPassword => 'Confirmer le nouveau mot de passe';

  @override
  String get passwordMismatch => 'Les deux saisies ne correspondent pas.';

  @override
  String get passwordChangeSubmit => 'Enregistrer le nouveau mot de passe';

  @override
  String get passwordChangeSuccess => 'Mot de passe modifié.';

  @override
  String get accountSuspendedTitle => 'Compte suspendu';

  @override
  String get accountSuspendedMessage =>
      'L\'accès de votre compagnie est suspendu, ou son abonnement a expiré. Contactez l\'administrateur de la plateforme pour le rétablir.';

  @override
  String get shellTraveler => 'Espace voyageur';

  @override
  String get shellAgent => 'Module agent';

  @override
  String get shellCompanyAdmin => 'Back-office compagnie';

  @override
  String get shellSuperAdmin => 'Administration plateforme';

  @override
  String get shellPlaceholderMessage =>
      'Cet espace accueillera bientôt ses écrans.';

  @override
  String get connectionSynced => 'Connecté — données à jour';

  @override
  String get connectionSyncing => 'Synchronisation en cours…';

  @override
  String connectionOfflinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hors ligne — $count éléments à envoyer',
      one: 'Hors ligne — 1 élément à envoyer',
    );
    return '$_temp0';
  }

  @override
  String get connectionOffline => 'Hors ligne — rien en attente';

  @override
  String get connectionSyncError =>
      'Synchronisation impossible. Touchez pour relancer.';

  @override
  String get connectionBannerTooltip => 'Voir les données en attente';

  @override
  String lastUpdatedAt(String time) {
    return 'Dernière mise à jour à $time';
  }

  @override
  String get otpTitle => 'Saisissez le code reçu par SMS';

  @override
  String get otpFieldLabel => 'Code de confirmation';

  @override
  String otpDigitLabel(int position, int total) {
    return 'Chiffre $position sur $total';
  }

  @override
  String otpExpiresIn(String duration) {
    return 'Code valable encore $duration';
  }

  @override
  String get otpExpired => 'Le code a expiré. Demandez-en un nouveau.';

  @override
  String otpAttemptsRemaining(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il vous reste $count tentatives',
      one: 'Il vous reste 1 tentative',
    );
    return '$_temp0';
  }

  @override
  String get otpResend => 'Renvoyer le code';

  @override
  String otpResendIn(int seconds) {
    return 'Renvoyer le code dans $seconds s';
  }

  @override
  String get phoneFieldLabel => 'Numéro de téléphone';

  @override
  String get phoneFieldHint => '70 00 00 00';

  @override
  String get phoneCountryPrefix => '+226';

  @override
  String get emptyStateTitle => 'Rien à afficher pour l\'instant';

  @override
  String get errorStateTitle => 'L\'affichage a échoué';

  @override
  String get failureNoConnection =>
      'Pas de connexion. Vos données seront envoyées au retour du réseau.';

  @override
  String get failureTimeout =>
      'Le serveur met trop de temps à répondre. Réessayez.';

  @override
  String get failureServer =>
      'Le service est momentanément indisponible. Réessayez dans un instant.';

  @override
  String get failureUnauthorized => 'Votre session a expiré. Reconnectez-vous.';

  @override
  String get failureForbidden => 'Vous n\'avez pas accès à cette information.';

  @override
  String get failureAccountSuspended =>
      'Ce compte est suspendu. Contactez l\'administrateur de la plateforme.';

  @override
  String get failureNotFound => 'Cette information est introuvable.';

  @override
  String get failureConflict =>
      'Cette place vient d\'être prise. Choisissez-en une autre.';

  @override
  String get failureRateLimited =>
      'Trop de tentatives. Patientez un instant avant de réessayer.';

  @override
  String get failureUnexpected => 'Une erreur est survenue. Réessayez.';

  @override
  String get connectionSyncedTitle => 'Connecté';

  @override
  String get connectionSyncedBody =>
      'Toutes les données sont à jour et synchronisées.';

  @override
  String get connectionSyncingTitle => 'Synchronisation en cours…';

  @override
  String get connectionSyncingBody =>
      'Envoi des enregistrements locaux vers le serveur.';

  @override
  String get connectionOfflinePendingTitle => 'Hors ligne — données en attente';

  @override
  String get connectionOfflinePendingBody =>
      'Synchronisation automatique au retour du réseau.';

  @override
  String get connectionOfflineTitle => 'Hors ligne';

  @override
  String get connectionOfflineBody =>
      'Aucune donnée en attente. Vous pouvez continuer.';

  @override
  String get connectionSyncErrorTitle => 'Échec de synchronisation';

  @override
  String get connectionSyncErrorBody =>
      'Vos données locales sont conservées. Touchez pour voir le détail.';

  @override
  String get timeAgoJustNow => 'à l\'instant';

  @override
  String timeAgoMinutes(int count) {
    return 'il y a $count min';
  }

  @override
  String timeAgoHours(int count) {
    return 'il y a $count h';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count jours',
      one: 'hier',
    );
    return '$_temp0';
  }

  @override
  String get agentRoleGuichet => 'Agent guichet';

  @override
  String get agentRoleControleur => 'Contrôleur';

  @override
  String get agentGreetingFallback => 'Votre poste';

  @override
  String get agentQuickActionsTitle => 'Actions rapides';

  @override
  String get agentActionRegisterPassenger => 'Enregistrer un passager';

  @override
  String get agentActionRegisterParcel => 'Enregistrer un colis';

  @override
  String get agentActionDaySchedule => 'Programme du jour';

  @override
  String get agentActionScanQr => 'Scanner un QR code';

  @override
  String get agentActionPassengerList => 'Liste des passagers · embarquement';

  @override
  String get agentNextDeparturesTitle => 'Prochains départs';

  @override
  String get agentFullSchedule => 'Programme complet';

  @override
  String agentSeatsAvailable(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count places',
      one: '1 place',
    );
    return '$_temp0';
  }

  @override
  String get agentSeatsFull => 'Complet';

  @override
  String get agentDepartureDelayed => 'Retardé';

  @override
  String get agentDepartureCancelled => 'Annulé';

  @override
  String agentPassengersRegistered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count passagers',
      one: '1 passager',
      zero: 'aucun passager',
    );
    return '$_temp0';
  }

  @override
  String get agentViewPassengerList => 'Voir la liste des passagers';

  @override
  String get agentViewPassengerListShort => 'Liste passagers';

  @override
  String get agentAddPassenger => 'Ajouter';

  @override
  String get agentNoDeparturesTitle => 'Plus aucun départ aujourd\'hui';

  @override
  String get agentNoDeparturesMessage =>
      'Ouvrez le programme complet pour préparer les départs de demain.';

  @override
  String get agentAlertsTitle => 'Alertes récentes';

  @override
  String get agentAlertsEmptyTitle => 'Rien à signaler';

  @override
  String get agentAlertsEmptyMessage =>
      'Les colis arrivés et les départs imminents apparaîtront ici.';

  @override
  String get agentNextBoardingTitle => 'Prochain embarquement';

  @override
  String agentDepartureAt(String time) {
    return 'départ $time';
  }

  @override
  String get agentScanNextTicket => 'Scanner le prochain billet';

  @override
  String get agentBoardingProgressNotice =>
      'L\'avancement de l\'embarquement s\'affiche dans la liste des passagers.';

  @override
  String get agentNoBoardingTitle => 'Aucun embarquement en attente';

  @override
  String get agentNoBoardingMessage =>
      'Le prochain départ de votre véhicule s\'affichera ici.';

  @override
  String get agentConnectionSectionTitle => 'État de connexion';

  @override
  String get agentPendingSheetTitle => 'Données en attente';

  @override
  String agentPendingCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count enregistrements en attente d\'envoi',
      one: '1 enregistrement en attente d\'envoi',
    );
    return '$_temp0';
  }

  @override
  String get agentPendingEmptyTitle => 'Tout est synchronisé';

  @override
  String get agentPendingEmptyMessage =>
      'Aucune donnée en attente d\'envoi. Vous pouvez continuer à travailler.';

  @override
  String get agentPendingBooking => 'Passager';

  @override
  String get agentPendingParcel => 'Colis';

  @override
  String get agentPendingValidation => 'Embarquement';

  @override
  String get agentPendingStatusPending => 'En attente';

  @override
  String get agentPendingStatusSyncing => 'Envoi…';

  @override
  String get agentPendingStatusFailed => 'Échec';

  @override
  String get agentSyncEngineNotice =>
      'L\'envoi automatique arrive avec le module hors-ligne. Vos saisies restent conservées sur l\'appareil.';

  @override
  String get agentNavHome => 'Accueil';

  @override
  String get agentNavPassengers => 'Passagers';

  @override
  String get agentNavParcels => 'Colis';

  @override
  String get agentNavScan => 'Scanner';

  @override
  String get agentNavProfile => 'Profil';
}
