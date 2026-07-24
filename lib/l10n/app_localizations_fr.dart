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

  @override
  String get publicNavHome => 'Accueil';

  @override
  String get publicNavSearch => 'Rechercher un trajet';

  @override
  String get publicNavTrackParcel => 'Suivre un colis';

  @override
  String get publicNavCompanies => 'Compagnies';

  @override
  String get publicNavLogin => 'Connexion';

  @override
  String get publicNavRegister => 'Inscription';

  @override
  String get publicMenuOpen => 'Ouvrir le menu';

  @override
  String get publicMenuClose => 'Fermer le menu';

  @override
  String get publicFooterTagline =>
      'La plateforme de réservation de transport de voyageurs et d\'envoi de colis au Burkina Faso.';

  @override
  String get publicFooterColPlatform => 'Plateforme';

  @override
  String get publicFooterColHelp => 'Aide';

  @override
  String get publicFooterColContact => 'Contact';

  @override
  String get publicFooterLinkBecomePartner => 'Devenir partenaire';

  @override
  String get publicFooterLinkHelpCenter => 'Centre d\'aide';

  @override
  String get publicFooterLinkHowToBook => 'Comment réserver';

  @override
  String get publicFooterLinkFaq => 'Questions fréquentes';

  @override
  String get publicFooterContactPhone => '+226 25 00 00 00';

  @override
  String get publicFooterContactEmail => 'contact@transbooking.bf';

  @override
  String get publicFooterContactCity => 'Ouagadougou, Burkina Faso';

  @override
  String get publicFooterLegalTerms => 'Conditions';

  @override
  String get publicFooterLegalPrivacy => 'Confidentialité';

  @override
  String get publicFooterLegalNotice => 'Mentions légales';

  @override
  String publicFooterCopyright(int year) {
    return '© $year TransBooking BF · Ouagadougou, Burkina Faso';
  }

  @override
  String get homeHeroBadge => 'Réservation en ligne · billet QR par SMS';

  @override
  String get homeHeroTitle => 'Réservez votre voyage partout au Burkina Faso';

  @override
  String get homeHeroSubtitle =>
      'Comparez les compagnies, réservez vos places et envoyez vos colis en quelques minutes.';

  @override
  String get homeHeroCtaBook => 'Réservez votre place maintenant';

  @override
  String get homeHeroCtaBookHint => 'Places disponibles dès aujourd\'hui';

  @override
  String get searchTabTrip => 'Voyage';

  @override
  String get searchTabParcel => 'Colis';

  @override
  String get searchFieldFrom => 'Départ';

  @override
  String get searchFieldTo => 'Arrivée';

  @override
  String get searchFieldDate => 'Date';

  @override
  String get searchFieldPassengers => 'Passagers';

  @override
  String get searchCityPlaceholder => 'Choisir une ville';

  @override
  String get searchDatePlaceholder => 'Toutes les dates';

  @override
  String get searchSwap => 'Inverser départ et arrivée';

  @override
  String get searchSubmit => 'Rechercher un trajet';

  @override
  String get searchSameCityError =>
      'Le départ et l\'arrivée doivent être différents.';

  @override
  String searchPassengersValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count passagers',
      one: '1 passager',
    );
    return '$_temp0';
  }

  @override
  String get homeCompaniesEyebrow => 'Compagnies partenaires';

  @override
  String get homeCompaniesTitle => 'Voyagez avec les meilleures compagnies';

  @override
  String get homeCompaniesSeeAll => 'Voir toutes les compagnies';

  @override
  String get homeCompaniesEmpty =>
      'Les compagnies partenaires s\'afficheront ici prochainement.';

  @override
  String get homeHowEyebrow => 'Comment ça marche';

  @override
  String get homeHowTitle => 'Votre billet en 4 étapes';

  @override
  String get homeStep1Title => 'Rechercher';

  @override
  String get homeStep1Body =>
      'Indiquez votre trajet, la date et le nombre de places.';

  @override
  String get homeStep2Title => 'Réserver';

  @override
  String get homeStep2Body =>
      'Choisissez votre compagnie, l\'horaire et vos places.';

  @override
  String get homeStep3Title => 'Payer';

  @override
  String get homeStep3Body =>
      'Réglez par Orange Money, Moov Money, Coris ou Telecel.';

  @override
  String get homeStep4Title => 'Recevoir son billet QR';

  @override
  String get homeStep4Body => 'Billet QR reçu par SMS, prêt à l\'embarquement.';

  @override
  String get homeTestimonialsEyebrow => 'Témoignages';

  @override
  String get homeTestimonialsTitle => 'Ils voyagent déjà avec nous';

  @override
  String get homeTestimonialsEmpty =>
      'Les premiers témoignages de voyageurs s\'afficheront ici.';

  @override
  String get homeCtaTitle => 'Créez votre compte gratuitement';

  @override
  String get homeCtaBody =>
      'Suivez vos réservations et colis, retrouvez vos billets et profitez des offres des compagnies partenaires.';

  @override
  String get homeCtaCreate => 'Créer un compte';

  @override
  String get homeCtaCompany => 'Espace compagnie';

  @override
  String resultsTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trajets trouvés',
      one: '1 trajet trouvé',
      zero: 'Aucun trajet trouvé',
    );
    return '$_temp0';
  }

  @override
  String resultsRoute(String origin, String destination) {
    return '$origin → $destination';
  }

  @override
  String get resultsAllRoutes => 'Tous les trajets disponibles';

  @override
  String get resultsModify => 'Modifier';

  @override
  String get resultsFiltersButton => 'Filtres';

  @override
  String get resultsSortLabel => 'Trier par';

  @override
  String get resultsSortPrice => 'Prix';

  @override
  String get resultsSortDeparture => 'Heure';

  @override
  String get resultsSortDuration => 'Durée';

  @override
  String resultsApply(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Voir $count trajets',
      one: 'Voir 1 trajet',
      zero: 'Aucun trajet',
    );
    return '$_temp0';
  }

  @override
  String get resultsEmptyTitle => 'Aucun trajet trouvé';

  @override
  String get resultsEmptyMessage =>
      'Aucun trajet ne correspond à vos critères. Élargissez votre recherche : augmentez le prix maximum ou changez de créneau horaire.';

  @override
  String get resultsEmptyAction => 'Élargir les critères';

  @override
  String get filtersTitle => 'Filtres';

  @override
  String get filtersReset => 'Réinitialiser';

  @override
  String get filterRouteLabel => 'Trajet';

  @override
  String get filterDepartureLabel => 'Départ';

  @override
  String get filterArrivalLabel => 'Arrivée';

  @override
  String get filterDateLabel => 'Date';

  @override
  String get filterPeriodLabel => 'Heure de départ';

  @override
  String get filterPassengersLabel => 'Places';

  @override
  String get filterMaxPriceLabel => 'Prix maximum';

  @override
  String get filterMaxPriceAny => 'Sans limite';

  @override
  String filterMaxPriceValue(String amount) {
    return '≤ $amount FCFA';
  }

  @override
  String get periodAll => 'Tous';

  @override
  String get periodMorning => 'Matin';

  @override
  String get periodAfternoon => 'Après-midi';

  @override
  String get periodEvening => 'Soir';

  @override
  String get filterStopTypeLabel => 'Type de trajet';

  @override
  String get stopTypeAll => 'Tous';

  @override
  String get stopTypeDirect => 'Direct';

  @override
  String get stopTypeWithStops => 'Avec escale';

  @override
  String get filterCompanyLabel => 'Compagnie';

  @override
  String get filterMinRatingLabel => 'Note minimale';

  @override
  String get filterMinRatingAny => 'Toutes';

  @override
  String filterMinRatingValue(String rating) {
    return '$rating★ et +';
  }

  @override
  String tripSeatsAvailable(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count places disponibles',
      one: '1 place disponible',
    );
    return '$_temp0';
  }

  @override
  String get tripSeatsFull => 'Complet';

  @override
  String tripDuration(int hours, String minutes) {
    return '${hours}h$minutes';
  }

  @override
  String get tripPricePerSeat => 'FCFA / place';

  @override
  String tripVehicle(String registration) {
    return 'Véhicule $registration';
  }

  @override
  String get tripDirect => 'Direct';

  @override
  String tripStops(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count escales',
      one: '1 escale',
    );
    return '$_temp0';
  }

  @override
  String get tripBook => 'Réserver';

  @override
  String get tripStatusScheduled => 'Programmé';

  @override
  String get tripBookingComingSoon =>
      'La réservation en ligne arrive très bientôt.';

  @override
  String get companyBadgePartner => 'Compagnie partenaire';

  @override
  String get companyContact => 'Contacter';

  @override
  String get companyBookTrip => 'Réserver un trajet';

  @override
  String get companyAboutTitle => 'À propos';

  @override
  String get companyNoDescription =>
      'Cette compagnie n\'a pas encore ajouté de présentation.';

  @override
  String get companyRoutesTitle => 'Trajets desservis';

  @override
  String companyRouteLabel(String origin, String destination) {
    return '$origin → $destination';
  }

  @override
  String companyRoutePrice(String amount) {
    return 'dès $amount FCFA';
  }

  @override
  String get companyReviewsTitle => 'Avis clients';

  @override
  String companyReviewsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avis',
      one: '1 avis',
      zero: 'Aucun avis',
    );
    return '$_temp0';
  }

  @override
  String get companyReviewsSortRecent => 'Plus récents';

  @override
  String get companyReviewsSortTop => 'Mieux notés';

  @override
  String get companyReviewsEmptyTitle => 'Aucun avis pour l\'instant';

  @override
  String get companyReviewsEmptyMessage =>
      'Soyez le premier à noter cette compagnie après votre voyage.';

  @override
  String companyReviewResponse(String company) {
    return 'Réponse de $company';
  }

  @override
  String get companyContactTitle => 'Coordonnées de contact';

  @override
  String get companyContactPhone => 'Téléphone';

  @override
  String get companyContactEmail => 'E-mail';

  @override
  String get companyContactCity => 'Ville';

  @override
  String get companyContactNone => 'Coordonnées non communiquées.';

  @override
  String get companyRatingTitle => 'Note moyenne';

  @override
  String companyRatingBasedOn(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Basé sur $count avis',
      one: 'Basé sur 1 avis',
      zero: 'Aucun avis vérifié',
    );
    return '$_temp0';
  }

  @override
  String get companyRatingNone => 'Pas encore de note';

  @override
  String get trackingTitle => 'Suivi de colis';

  @override
  String get trackingSubtitle =>
      'Entrez votre numéro de suivi pour connaître l\'état de votre envoi.';

  @override
  String get trackingInputLabel => 'Numéro de suivi';

  @override
  String get trackingInputHint => 'Votre numéro de suivi';

  @override
  String get trackingSubmit => 'Suivre';

  @override
  String get trackingPromptTitle => 'Suivez votre colis';

  @override
  String get trackingPromptMessage =>
      'Saisissez votre numéro de suivi pour afficher son état en temps réel.';

  @override
  String get trackingCurrentStatus => 'Statut actuel';

  @override
  String get trackingEstimatedDelivery => 'Livraison estimée';

  @override
  String trackingRoute(String origin, String destination) {
    return '$origin → $destination';
  }

  @override
  String get trackingProgressTitle => 'Progression du colis';

  @override
  String get trackingStageCurrent => 'En cours';

  @override
  String get trackingRecipientTitle => 'Destinataire';

  @override
  String get trackingRecipientPhone => 'Téléphone';

  @override
  String get trackingNotFoundTitle => 'Numéro introuvable';

  @override
  String get trackingNotFoundMessage =>
      'Vérifiez le numéro de suivi et réessayez.';

  @override
  String get parcelStageRegistered => 'Enregistré';

  @override
  String get parcelStageInTransit => 'En transit';

  @override
  String get parcelStageArrived => 'Arrivé';

  @override
  String get parcelStageNotified => 'Destinataire prévenu';

  @override
  String get parcelStageCollected => 'Remis';

  @override
  String starRatingLabel(String rating) {
    return 'Note de $rating sur 5';
  }

  @override
  String get bookingTitle => 'Réservation';

  @override
  String get bookingStepDetail => 'Détail du trajet';

  @override
  String get bookingStepSeat => 'Choix du siège';

  @override
  String get bookingStepPassenger => 'Passager';

  @override
  String get bookingStepPayment => 'Paiement';

  @override
  String get bookingDetailTitle => 'Votre trajet';

  @override
  String get bookingDepartureLabel => 'Départ';

  @override
  String get bookingArrivalLabel => 'Arrivée';

  @override
  String get bookingSeatsAvailableLabel => 'Places disponibles';

  @override
  String get bookingPriceLabel => 'Prix par place';

  @override
  String get bookingVehicleLabel => 'Véhicule';

  @override
  String get bookingSeatTitle => 'Choisissez votre siège';

  @override
  String get bookingSeatSubtitle =>
      'Sélectionnez un siège libre, ou laissez-nous vous en attribuer un.';

  @override
  String get bookingSeatAuto => 'Attribution automatique';

  @override
  String get bookingSeatAutoHint =>
      'Un siège vous sera attribué à la confirmation.';

  @override
  String bookingSeatChosen(String seat) {
    return 'Siège choisi : $seat';
  }

  @override
  String get bookingSeatNoneTitle => 'Aucun siège disponible';

  @override
  String get bookingSeatNoneMessage =>
      'Ce voyage est complet. Revenez aux résultats pour choisir un autre départ.';

  @override
  String get bookingSeatLayoutNote =>
      'Le plan du véhicule n\'est pas communiqué : seuls les sièges libres sont proposés.';

  @override
  String get bookingPassengerTitle => 'Informations du passager';

  @override
  String get bookingPassengerSubtitle =>
      'Ces informations figureront sur le billet. Laissées vides, celles de votre compte sont utilisées.';

  @override
  String get bookingPassengerPhoneHint => 'Numéro du voyageur';

  @override
  String get bookingPaymentTitle => 'Mode de paiement';

  @override
  String get bookingPaymentSubtitle => 'Choisissez comment régler votre place.';

  @override
  String get paymentMethodOrangeMoney => 'Orange Money';

  @override
  String get paymentMethodMoovMoney => 'Moov Money';

  @override
  String get paymentMethodCorisMoney => 'Coris Money';

  @override
  String get paymentMethodTelecelMoney => 'Telecel Money';

  @override
  String get paymentMethodCash => 'Espèces au guichet';

  @override
  String get paymentMethodCashHint =>
      'Réglez à l\'agence. Votre place est réservée en attente de paiement.';

  @override
  String get paymentPhoneLabel => 'Numéro Mobile Money';

  @override
  String get paymentSecureNote => 'Paiement sécurisé';

  @override
  String get bookingSummaryTitle => 'Récapitulatif';

  @override
  String get bookingSummarySeatLabel => 'Siège';

  @override
  String get bookingSummarySeatAuto => 'Automatique';

  @override
  String get bookingSummaryTotalLabel => 'Total à payer';

  @override
  String get bookingSummaryPriceNote =>
      'Montant calculé par la compagnie, en lecture seule.';

  @override
  String get bookingActionChooseSeat => 'Choisir mon siège';

  @override
  String bookingActionPay(String amount) {
    return 'Payer $amount FCFA';
  }

  @override
  String get bookingActionPaySimple => 'Payer';

  @override
  String otpSentTo(String phone) {
    return 'Code envoyé au $phone';
  }

  @override
  String get otpWrongCode => 'Code incorrect. Vérifiez et réessayez.';

  @override
  String get otpVerifyAction => 'Valider le paiement';

  @override
  String get otpChangeMethod => 'Changer de moyen de paiement';

  @override
  String get paymentResultPaidBadge => 'Payé';

  @override
  String get paymentResultPendingBadge => 'En attente';

  @override
  String get paymentResultFailedBadge => 'Échoué';

  @override
  String get paymentResultPaidTitle => 'Paiement réussi';

  @override
  String get paymentResultPaidMessage =>
      'Votre billet est confirmé et envoyé par SMS. Bon voyage !';

  @override
  String get paymentResultPendingTitle => 'Paiement en attente';

  @override
  String get paymentResultPendingMessage =>
      'Confirmez la transaction sur votre téléphone, ou réglez au guichet. Le statut se mettra à jour dès réception.';

  @override
  String get paymentResultFailedTitle => 'Paiement non abouti';

  @override
  String get paymentResultFailedMessage =>
      'La transaction n\'a pas abouti et aucun montant n\'a été débité. Vérifiez votre solde et réessayez.';

  @override
  String get paymentResultAmount => 'Montant';

  @override
  String get paymentResultMethod => 'Mode';

  @override
  String get paymentResultTicket => 'N° de billet';

  @override
  String get paymentResultReference => 'Référence';

  @override
  String get paymentResultViewReceipt => 'Voir le reçu (PDF)';

  @override
  String get paymentResultReceiptUnavailable =>
      'L\'ouverture du reçu PDF arrive bientôt.';

  @override
  String get paymentResultRetry => 'Reprendre le paiement';

  @override
  String get paymentResultViewTicket => 'Voir mon billet';

  @override
  String get paymentResultBackHome => 'Retour à l\'accueil';

  @override
  String get travelerSidebarSubtitle => 'BF · VOYAGEUR';

  @override
  String get travelerNavHome => 'Accueil';

  @override
  String get travelerNavSearch => 'Rechercher';

  @override
  String get travelerNavBookings => 'Mes réservations';

  @override
  String get travelerNavBookingsShort => 'Billets';

  @override
  String get travelerNavParcels => 'Suivi de colis';

  @override
  String get travelerNavParcelsShort => 'Colis';

  @override
  String get travelerNavClaims => 'Réclamations';

  @override
  String get travelerNavBaggage => 'Bagages';

  @override
  String get travelerNavProfile => 'Mon profil';

  @override
  String dashGreeting(String firstName) {
    return 'Bonjour $firstName 👋';
  }

  @override
  String get dashGreetingFallback => 'Bonjour 👋';

  @override
  String get dashGreetingSubtitle =>
      'Voici un aperçu de vos voyages et de vos colis.';

  @override
  String get dashBookTrip => 'Réserver un voyage';

  @override
  String get dashQuickActions => 'Actions rapides';

  @override
  String get dashActiveBookings => 'Réservations actives';

  @override
  String get dashPending => 'En attente de paiement';

  @override
  String get dashUpcoming => 'Voyages à venir';

  @override
  String get dashActionSearch => 'Rechercher un trajet';

  @override
  String get dashActionBookings => 'Mes réservations';

  @override
  String get dashActionParcels => 'Suivre un colis';

  @override
  String get dashActionClaim => 'Déposer une réclamation';

  @override
  String get dashNextTrips => 'Prochains voyages';

  @override
  String get dashNextTripsEmptyTitle => 'Aucun voyage à venir';

  @override
  String get dashNextTripsEmptyMessage =>
      'Réservez votre prochain trajet pour le voir apparaître ici.';

  @override
  String get dashSeat => 'Siège';

  @override
  String get dashNotifications => 'Notifications récentes';

  @override
  String get dashNotificationsEmptyTitle => 'Aucune notification';

  @override
  String get dashNotificationsEmptyMessage =>
      'Vos alertes de voyage et de colis s\'afficheront ici.';

  @override
  String get bookingsTitle => 'Mes réservations';

  @override
  String get bookingsSubtitle => 'Retrouvez vos billets et suivez leur statut.';

  @override
  String get bookingsFilterAll => 'Toutes';

  @override
  String get bookingsFilterPaid => 'Payé';

  @override
  String get bookingsFilterUnpaid => 'Non payé';

  @override
  String get bookingsFilterCancelled => 'Annulé';

  @override
  String get bookingsSeat => 'Siège';

  @override
  String get bookingsDate => 'Date & heure';

  @override
  String get bookingsTicketNo => 'N° billet';

  @override
  String get bookingsView => 'Voir';

  @override
  String get bookingsDownload => 'PDF';

  @override
  String get bookingsCancel => 'Annuler';

  @override
  String get bookingsDownloadUnavailable =>
      'Le téléchargement du billet PDF arrive bientôt.';

  @override
  String get bookingsEmptyTitle => 'Aucune réservation';

  @override
  String get bookingsEmptyMessage =>
      'Réservez votre première place pour la retrouver ici.';

  @override
  String get bookingsEmptyCta => 'Rechercher un trajet';

  @override
  String get bookingsNoMatchTitle => 'Aucune réservation ne correspond';

  @override
  String get bookingsNoMatchMessage =>
      'Modifiez le filtre pour voir vos autres réservations.';

  @override
  String get bookingsCancelTitle => 'Annuler cette réservation ?';

  @override
  String get bookingsCancelIntro =>
      'Vous êtes sur le point d\'annuler le billet';

  @override
  String get bookingsCancelIrreversible => 'Cette action est irréversible.';

  @override
  String get bookingsCancelRefundNote =>
      'Le remboursement dépend des conditions de la compagnie et du délai avant le départ.';

  @override
  String get bookingsCancelReasonLabel => 'Motif de l\'annulation';

  @override
  String get bookingsCancelReasonHint => 'Ex : changement de programme';

  @override
  String get bookingsCancelDefaultReason =>
      'Annulation demandée par le voyageur';

  @override
  String get bookingsCancelKeep => 'Conserver';

  @override
  String get bookingsCancelConfirm => 'Oui, annuler';

  @override
  String get bookingsCancelSuccess =>
      'Réservation annulée. Le remboursement éventuel est en cours.';

  @override
  String get ticketScreenTitle => 'Mon billet';

  @override
  String get ticketLabel => 'Billet électronique';

  @override
  String get ticketDeparture => 'Départ';

  @override
  String get ticketArrival => 'Arrivée';

  @override
  String get ticketPassenger => 'Passager';

  @override
  String get ticketDate => 'Date';

  @override
  String get ticketSeat => 'Siège';

  @override
  String get ticketAmount => 'Prix';

  @override
  String get ticketScanPrompt => 'Scannez à l\'embarquement';

  @override
  String get ticketUniqueCode => 'Code unique · usage unique';

  @override
  String get ticketQrUnavailable => 'QR indisponible';

  @override
  String get ticketDownloadPdf => 'Télécharger en PDF';

  @override
  String get ticketPrint => 'Imprimer';

  @override
  String get ticketShare => 'Partager';

  @override
  String get ticketActionUnavailable => 'Cette action arrive bientôt.';

  @override
  String get baggageTitle => 'Bagages';

  @override
  String get baggageSubtitle =>
      'Vos bagages enregistrés et les règles de transport.';

  @override
  String get baggageNoticeTitle => 'Vos bagages enregistrés';

  @override
  String get baggageNoticeMessage =>
      'Le détail de vos bagages figure sur chaque réservation, au moment de l\'enregistrement au guichet.';

  @override
  String get baggageRulesTitle => 'Règles de transport des bagages';

  @override
  String get baggageRuleAllowanceTitle => 'Franchise incluse';

  @override
  String get baggageRuleAllowanceDesc =>
      '40 kg au total par billet, répartis en soute et en cabine sans frais.';

  @override
  String get baggageRuleDimensionsTitle => 'Dimensions maximales';

  @override
  String get baggageRuleDimensionsDesc =>
      'Cabine : 55 × 40 × 20 cm. Soute : 80 × 50 × 30 cm par pièce.';

  @override
  String get baggageRuleForbiddenTitle => 'Objets interdits';

  @override
  String get baggageRuleForbiddenDesc =>
      'Produits inflammables, armes, denrées périssables non emballées.';

  @override
  String get baggageRuleValuablesTitle => 'Objets de valeur';

  @override
  String get baggageRuleValuablesDesc =>
      'Argent, bijoux et appareils électroniques à conserver avec vous en cabine.';

  @override
  String get baggageFeesTitle => 'Frais supplémentaires indicatifs';

  @override
  String get baggageFeesSubtitle => 'Au-delà de la franchise incluse';

  @override
  String get baggageFeeExtraKg => 'Kilo supplémentaire (> 40 kg)';

  @override
  String get baggageFeeExtraKgValue => '250 FCFA / kg';

  @override
  String get baggageFeeOversize => 'Bagage hors gabarit';

  @override
  String get baggageFeeOversizeValue => '1 500 FCFA';

  @override
  String get baggageFeeFragile => 'Bagage fragile (manutention)';

  @override
  String get baggageFeeFragileValue => '1 000 FCFA';

  @override
  String get baggageFeeExtraPiece => 'Bagage supplémentaire (> 3)';

  @override
  String get baggageFeeExtraPieceValue => '2 000 FCFA';

  @override
  String get baggageFeesDisclaimer =>
      'Tarifs indicatifs. Le montant exact est confirmé par la compagnie à l\'enregistrement.';

  @override
  String get reviewTitle => 'Déposer un avis';

  @override
  String get reviewSubmit => 'Envoyer mon avis';

  @override
  String get reviewMissingTripTitle => 'Voyage introuvable';

  @override
  String get reviewMissingTripMessage =>
      'Ouvrez un voyage terminé depuis vos réservations pour laisser un avis.';

  @override
  String get reviewTripDone => 'Voyage terminé';

  @override
  String get reviewTripFallback => 'Votre dernier voyage';

  @override
  String get reviewQuestion => 'Comment s\'est passé votre voyage ?';

  @override
  String get reviewQuestionHint => 'Attribuez une note de 1 à 5 étoiles.';

  @override
  String get reviewRatingPrompt => 'Touchez une étoile';

  @override
  String get reviewRating1 => 'Très insatisfait';

  @override
  String get reviewRating2 => 'Insatisfait';

  @override
  String get reviewRating3 => 'Correct';

  @override
  String get reviewRating4 => 'Satisfait';

  @override
  String get reviewRating5 => 'Excellent !';

  @override
  String get reviewCommentLabel => 'Votre commentaire';

  @override
  String get reviewCommentHint =>
      'Partagez votre expérience : ponctualité, confort, accueil…';

  @override
  String get reviewFooter =>
      'Votre avis aide les autres voyageurs et améliore nos services.';

  @override
  String get reviewThanksTitle => 'Merci pour votre avis !';

  @override
  String reviewThanksMessage(int rating) {
    return 'Votre note de $rating/5 a bien été enregistrée. Elle sera visible après modération.';
  }

  @override
  String get reviewBackToBookings => 'Retour à mes réservations';

  @override
  String get claimsTitle => 'Réclamations';

  @override
  String get claimsSubtitle => 'Suivez vos réclamations et leur traitement.';

  @override
  String get claimsNewCta => 'Nouvelle réclamation';

  @override
  String get claimsEmptyTitle => 'Aucune réclamation';

  @override
  String get claimsEmptyMessage =>
      'Signalez un problème rencontré lors d\'un voyage.';

  @override
  String get claimsOverdue => 'En attente de réponse depuis plus de 48 h';

  @override
  String get claimsResponseLabel => 'Réponse de la compagnie';

  @override
  String get claimTypeDelay => 'Retard';

  @override
  String get claimTypeLostBaggage => 'Perte de bagage';

  @override
  String get claimTypeService => 'Service';

  @override
  String get claimTypeRefund => 'Remboursement';

  @override
  String get claimTypeOther => 'Autre';

  @override
  String get newClaimTitle => 'Nouvelle réclamation';

  @override
  String get newClaimSubmit => 'Envoyer la réclamation';

  @override
  String get newClaimTypeLabel => 'Type de problème';

  @override
  String get newClaimBookingLabel => 'Réservation concernée';

  @override
  String get newClaimSubjectLabel => 'Objet';

  @override
  String get newClaimSubjectHint =>
      'Résumez votre réclamation en quelques mots';

  @override
  String get newClaimDescriptionLabel => 'Description détaillée';

  @override
  String get newClaimDescriptionHint =>
      'Décrivez ce qui s\'est passé : circonstances, heure, conséquences…';

  @override
  String get newClaimDescriptionHelper => '10 caractères minimum.';

  @override
  String get newClaimFooter =>
      'Vous recevrez un suivi par SMS. Délai de traitement : 48–72 h.';

  @override
  String get newClaimBookingsError =>
      'Impossible de charger vos réservations. Réessayez.';

  @override
  String get newClaimNoBookingsTitle => 'Aucune réservation';

  @override
  String get newClaimNoBookingsMessage =>
      'Une réclamation se rattache à un voyage. Réservez d\'abord un trajet.';

  @override
  String get newClaimThanksTitle => 'Réclamation envoyée';

  @override
  String get newClaimThanksMessage =>
      'Un conseiller instruira votre dossier et vous répondra sous 48–72 h.';

  @override
  String get newClaimBackToClaims => 'Voir mes réclamations';

  @override
  String get newClaimAttachmentLabel => 'Pièce jointe (facultatif)';

  @override
  String get newClaimAttachmentHint =>
      'PDF ou photo à l\'appui de votre réclamation, 10 Mo maximum.';

  @override
  String get newClaimAttachmentAdd => 'Ajouter un fichier';

  @override
  String get newClaimAttachmentChange => 'Changer de fichier';

  @override
  String get newClaimAttachmentRemove => 'Retirer la pièce jointe';

  @override
  String get newClaimAttachmentTooLarge =>
      'Fichier trop volumineux. Choisissez un fichier de 10 Mo maximum.';

  @override
  String get newClaimAttachmentUnreadable =>
      'Impossible de lire ce fichier. Réessayez avec un autre.';

  @override
  String fileSizeKilobytes(String size) {
    return '$size Ko';
  }

  @override
  String fileSizeMegabytes(String size) {
    return '$size Mo';
  }

  @override
  String get speedReportTitle => 'Signaler un excès de vitesse';

  @override
  String get speedReportAnonymous => 'Signalement anonyme';

  @override
  String get speedReportSubmit => 'Envoyer le signalement';

  @override
  String get speedReportShieldTitle => '100 % anonyme';

  @override
  String get speedReportShieldMessage =>
      'Aucune donnée personnelle n\'est transmise au chauffeur.';

  @override
  String get speedReportTimestamp => 'Horodatage';

  @override
  String get speedReportLocation => 'Localisation';

  @override
  String get speedReportLocationUnavailable => 'Non activée';

  @override
  String get speedReportBusLabel => 'Bus / ligne concerné(e)';

  @override
  String get speedReportBusHint => 'Ex : Faso Express · Ouaga → Bobo';

  @override
  String get speedReportSeverityFieldLabel => 'Gravité estimée';

  @override
  String get speedReportSeverityLow => 'Faible';

  @override
  String get speedReportSeverityMedium => 'Moyenne';

  @override
  String get speedReportSeverityHigh => 'Grave';

  @override
  String get speedReportCommentLabel => 'Commentaire';

  @override
  String get speedReportCommentHint =>
      'Décrivez la situation : vitesse ressentie, dépassements dangereux…';

  @override
  String get speedReportCommentHelper => '10 caractères minimum.';

  @override
  String get speedReportThanksTitle => 'Merci pour votre vigilance';

  @override
  String get speedReportThanksMessage =>
      'Votre signalement a été transmis à la compagnie et aux services de sécurité routière. Il reste anonyme.';

  @override
  String get speedReportNewReport => 'Nouveau signalement';

  @override
  String get profileInfoSaved => 'Informations mises à jour.';

  @override
  String get profileFieldNoteName =>
      'Le nom complet n\'est pas modifiable ici.';

  @override
  String get profilePersonalInfo => 'Informations personnelles';

  @override
  String get profileFullName => 'Nom complet';

  @override
  String get profilePhoneEditable => 'Téléphone · modifiable';

  @override
  String get profileEmailEditable => 'E-mail · modifiable';

  @override
  String get profileSaveInfo => 'Enregistrer les modifications';

  @override
  String get profileNoChanges => 'Aucune modification';

  @override
  String get profilePasswordTitle => 'Changer le mot de passe';

  @override
  String get profilePasswordSubtitle =>
      'Utilisez au moins 8 caractères avec chiffres et lettres.';

  @override
  String get profilePasswordSubmit => 'Mettre à jour le mot de passe';

  @override
  String get profileTabInfo => 'Informations';

  @override
  String get profileTabHistory => 'Historique';

  @override
  String get profileHistoryEmptyTitle => 'Aucun voyage passé';

  @override
  String get profileHistoryEmptyMessage =>
      'Vos voyages effectués apparaîtront ici.';

  @override
  String get profileTripCompleted => 'Effectué';

  @override
  String get profileTripCancelled => 'Annulé';

  @override
  String get profileHistoryTrips => 'Voyages passés';

  @override
  String get profileHistoryPayments => 'Paiements';

  @override
  String get profilePaymentsEmptyTitle => 'Aucun paiement';

  @override
  String get profilePaymentsEmptyMessage =>
      'Vos paiements apparaîtront ici après votre première réservation.';

  @override
  String baggageCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bagages enregistrés',
      one: '1 bagage enregistré',
      zero: 'Aucun bagage',
    );
    return '$_temp0';
  }

  @override
  String get baggageTotalWeight => 'Poids total';

  @override
  String newClaimReference(int id) {
    return 'Réclamation n° $id';
  }

  @override
  String speedReportReference(int id) {
    return 'Référence n° $id';
  }
}
