import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('fr')];

  /// Nom de l'application, affiché dans le gestionnaire de tâches et l'onglet navigateur
  ///
  /// In fr, this message translates to:
  /// **'TransBooking BF'**
  String get appTitle;

  /// Devise affichée après un montant
  ///
  /// In fr, this message translates to:
  /// **'FCFA'**
  String get currencySuffix;

  /// Bouton de relance après une erreur
  ///
  /// In fr, this message translates to:
  /// **'Réessayer'**
  String get actionRetry;

  /// No description provided for @actionCancel.
  ///
  /// In fr, this message translates to:
  /// **'Annuler'**
  String get actionCancel;

  /// No description provided for @actionClose.
  ///
  /// In fr, this message translates to:
  /// **'Fermer'**
  String get actionClose;

  /// No description provided for @actionContinue.
  ///
  /// In fr, this message translates to:
  /// **'Continuer'**
  String get actionContinue;

  /// No description provided for @actionSignIn.
  ///
  /// In fr, this message translates to:
  /// **'Se connecter'**
  String get actionSignIn;

  /// No description provided for @actionSignOut.
  ///
  /// In fr, this message translates to:
  /// **'Se déconnecter'**
  String get actionSignOut;

  /// No description provided for @actionBack.
  ///
  /// In fr, this message translates to:
  /// **'Retour'**
  String get actionBack;

  /// Signature affichée sous le logo sur les écrans d'accueil et d'authentification
  ///
  /// In fr, this message translates to:
  /// **'Voyages & colis · Burkina Faso'**
  String get brandTagline;

  /// Mention portée par une commande visible mais sans service côté API (CLAUDE.md §7)
  ///
  /// In fr, this message translates to:
  /// **'Bientôt disponible'**
  String get featureComingSoon;

  /// No description provided for @fieldOptional.
  ///
  /// In fr, this message translates to:
  /// **'(optionnel)'**
  String get fieldOptional;

  /// No description provided for @fieldRequired.
  ///
  /// In fr, this message translates to:
  /// **'Ce champ est obligatoire.'**
  String get fieldRequired;

  /// No description provided for @fieldEmailInvalid.
  ///
  /// In fr, this message translates to:
  /// **'Adresse e-mail invalide.'**
  String get fieldEmailInvalid;

  /// No description provided for @fieldPhoneIncomplete.
  ///
  /// In fr, this message translates to:
  /// **'Le numéro compte 8 chiffres.'**
  String get fieldPhoneIncomplete;

  /// No description provided for @passwordShow.
  ///
  /// In fr, this message translates to:
  /// **'Afficher le mot de passe'**
  String get passwordShow;

  /// No description provided for @passwordHide.
  ///
  /// In fr, this message translates to:
  /// **'Masquer le mot de passe'**
  String get passwordHide;

  /// No description provided for @passwordTooShort.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez un mot de passe d\'au moins 8 caractères.'**
  String get passwordTooShort;

  /// Titre de l'écran de connexion, conforme à la maquette « Écrans publics »
  ///
  /// In fr, this message translates to:
  /// **'Content de vous revoir'**
  String get loginTitle;

  /// No description provided for @loginSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Connectez-vous pour gérer vos réservations et colis.'**
  String get loginSubtitle;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe'**
  String get loginPasswordLabel;

  /// No description provided for @loginForgotPassword.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe oublié ?'**
  String get loginForgotPassword;

  /// Aucun endpoint public de réinitialisation n'existe : le lien reste inactif
  ///
  /// In fr, this message translates to:
  /// **'La réinitialisation n\'est pas encore ouverte. Contactez votre compagnie ou la plateforme.'**
  String get loginForgotPasswordUnavailable;

  /// Réponse 401 de POST /auth/login/ — sur cet écran, ce n'est pas une session expirée
  ///
  /// In fr, this message translates to:
  /// **'Numéro ou mot de passe incorrect. Vérifiez et réessayez.'**
  String get loginInvalidCredentials;

  /// Back-off après un 429 (10 requêtes/min/IP sur les routes d'authentification)
  ///
  /// In fr, this message translates to:
  /// **'Réessayez dans {seconds} s'**
  String loginRetryIn(int seconds);

  /// No description provided for @loginNoAccount.
  ///
  /// In fr, this message translates to:
  /// **'Pas encore de compte ?'**
  String get loginNoAccount;

  /// No description provided for @loginCreateAccount.
  ///
  /// In fr, this message translates to:
  /// **'Créer un compte'**
  String get loginCreateAccount;

  /// No description provided for @registerTitle.
  ///
  /// In fr, this message translates to:
  /// **'Créer un compte'**
  String get registerTitle;

  /// No description provided for @registerSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Rejoignez la plateforme de transport du Burkina Faso.'**
  String get registerSubtitle;

  /// No description provided for @registerTabTraveler.
  ///
  /// In fr, this message translates to:
  /// **'Voyageur'**
  String get registerTabTraveler;

  /// No description provided for @registerTabTravelerHint.
  ///
  /// In fr, this message translates to:
  /// **'Réserver & suivre'**
  String get registerTabTravelerHint;

  /// No description provided for @registerTabCompany.
  ///
  /// In fr, this message translates to:
  /// **'Compagnie'**
  String get registerTabCompany;

  /// No description provided for @registerTabCompanyHint.
  ///
  /// In fr, this message translates to:
  /// **'Demande à valider'**
  String get registerTabCompanyHint;

  /// No description provided for @registerHasAccount.
  ///
  /// In fr, this message translates to:
  /// **'Vous avez déjà un compte ?'**
  String get registerHasAccount;

  /// No description provided for @fieldFirstName.
  ///
  /// In fr, this message translates to:
  /// **'Prénom'**
  String get fieldFirstName;

  /// No description provided for @fieldFirstNameHint.
  ///
  /// In fr, this message translates to:
  /// **'Awa'**
  String get fieldFirstNameHint;

  /// No description provided for @fieldLastName.
  ///
  /// In fr, this message translates to:
  /// **'Nom'**
  String get fieldLastName;

  /// No description provided for @fieldLastNameHint.
  ///
  /// In fr, this message translates to:
  /// **'Ouédraogo'**
  String get fieldLastNameHint;

  /// No description provided for @fieldEmail.
  ///
  /// In fr, this message translates to:
  /// **'E-mail'**
  String get fieldEmail;

  /// No description provided for @fieldEmailHint.
  ///
  /// In fr, this message translates to:
  /// **'awa@exemple.com'**
  String get fieldEmailHint;

  /// No description provided for @fieldPasswordHint.
  ///
  /// In fr, this message translates to:
  /// **'8 caractères minimum'**
  String get fieldPasswordHint;

  /// No description provided for @registerTerms.
  ///
  /// In fr, this message translates to:
  /// **'J\'accepte les conditions d\'utilisation et la politique de confidentialité.'**
  String get registerTerms;

  /// No description provided for @registerTermsRequired.
  ///
  /// In fr, this message translates to:
  /// **'Acceptez les conditions pour continuer.'**
  String get registerTermsRequired;

  /// No description provided for @registerSubmitTraveler.
  ///
  /// In fr, this message translates to:
  /// **'Créer mon compte voyageur'**
  String get registerSubmitTraveler;

  /// No description provided for @registerSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Votre compte est créé. Connectez-vous pour commencer.'**
  String get registerSuccess;

  /// No description provided for @companyRequestNotice.
  ///
  /// In fr, this message translates to:
  /// **'Votre demande sera examinée par l\'équipe TransBooking BF sous 48 h. Vous recevrez un e-mail dès la validation de votre compte compagnie.'**
  String get companyRequestNotice;

  /// No description provided for @companyRequestNoticeTitle.
  ///
  /// In fr, this message translates to:
  /// **'Demande soumise à validation'**
  String get companyRequestNoticeTitle;

  /// No description provided for @fieldCompanyName.
  ///
  /// In fr, this message translates to:
  /// **'Nom de la compagnie'**
  String get fieldCompanyName;

  /// No description provided for @fieldCompanyNameHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex. Faso Express'**
  String get fieldCompanyNameHint;

  /// No description provided for @fieldManagerName.
  ///
  /// In fr, this message translates to:
  /// **'Responsable'**
  String get fieldManagerName;

  /// No description provided for @fieldManagerNameHint.
  ///
  /// In fr, this message translates to:
  /// **'Nom & prénom'**
  String get fieldManagerNameHint;

  /// No description provided for @fieldProEmail.
  ///
  /// In fr, this message translates to:
  /// **'E-mail professionnel'**
  String get fieldProEmail;

  /// No description provided for @fieldProEmailHint.
  ///
  /// In fr, this message translates to:
  /// **'contact@compagnie.bf'**
  String get fieldProEmailHint;

  /// No description provided for @fieldCompanyCity.
  ///
  /// In fr, this message translates to:
  /// **'Ville / Adresse du siège'**
  String get fieldCompanyCity;

  /// No description provided for @fieldCompanyCityHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex. Gare routière, Ouagadougou'**
  String get fieldCompanyCityHint;

  /// No description provided for @companyDocumentsLabel.
  ///
  /// In fr, this message translates to:
  /// **'Documents administratifs'**
  String get companyDocumentsLabel;

  /// No description provided for @companyDocumentsHint.
  ///
  /// In fr, this message translates to:
  /// **'RCCM, IFU, agrément'**
  String get companyDocumentsHint;

  /// No description provided for @companyRequestSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer la demande'**
  String get companyRequestSubmit;

  /// No description provided for @companyRequestFootnote.
  ///
  /// In fr, this message translates to:
  /// **'Compte soumis à validation de la plateforme.'**
  String get companyRequestFootnote;

  /// No description provided for @companyRequestSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Demande envoyée. Nous revenons vers vous sous 48 h.'**
  String get companyRequestSuccess;

  /// No description provided for @passwordChangeTitle.
  ///
  /// In fr, this message translates to:
  /// **'Changer votre mot de passe'**
  String get passwordChangeTitle;

  /// No description provided for @passwordChangeSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Votre session reste ouverte après le changement.'**
  String get passwordChangeSubtitle;

  /// No description provided for @fieldCurrentPassword.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe actuel'**
  String get fieldCurrentPassword;

  /// No description provided for @fieldNewPassword.
  ///
  /// In fr, this message translates to:
  /// **'Nouveau mot de passe'**
  String get fieldNewPassword;

  /// No description provided for @fieldConfirmPassword.
  ///
  /// In fr, this message translates to:
  /// **'Confirmer le nouveau mot de passe'**
  String get fieldConfirmPassword;

  /// No description provided for @passwordMismatch.
  ///
  /// In fr, this message translates to:
  /// **'Les deux saisies ne correspondent pas.'**
  String get passwordMismatch;

  /// No description provided for @passwordChangeSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Enregistrer le nouveau mot de passe'**
  String get passwordChangeSubmit;

  /// No description provided for @passwordChangeSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe modifié.'**
  String get passwordChangeSuccess;

  /// No description provided for @accountSuspendedTitle.
  ///
  /// In fr, this message translates to:
  /// **'Compte suspendu'**
  String get accountSuspendedTitle;

  /// No description provided for @accountSuspendedMessage.
  ///
  /// In fr, this message translates to:
  /// **'L\'accès de votre compagnie est suspendu, ou son abonnement a expiré. Contactez l\'administrateur de la plateforme pour le rétablir.'**
  String get accountSuspendedMessage;

  /// No description provided for @shellTraveler.
  ///
  /// In fr, this message translates to:
  /// **'Espace voyageur'**
  String get shellTraveler;

  /// No description provided for @shellAgent.
  ///
  /// In fr, this message translates to:
  /// **'Module agent'**
  String get shellAgent;

  /// No description provided for @shellCompanyAdmin.
  ///
  /// In fr, this message translates to:
  /// **'Back-office compagnie'**
  String get shellCompanyAdmin;

  /// No description provided for @shellSuperAdmin.
  ///
  /// In fr, this message translates to:
  /// **'Administration plateforme'**
  String get shellSuperAdmin;

  /// Message des coquilles de routes tant que les écrans du rôle ne sont pas construits
  ///
  /// In fr, this message translates to:
  /// **'Cet espace accueillera bientôt ses écrans.'**
  String get shellPlaceholderMessage;

  /// Bandeau de connexion, état vert : en ligne et rien en attente
  ///
  /// In fr, this message translates to:
  /// **'Connecté — données à jour'**
  String get connectionSynced;

  /// Bandeau de connexion, état bleu clignotant
  ///
  /// In fr, this message translates to:
  /// **'Synchronisation en cours…'**
  String get connectionSyncing;

  /// Bandeau de connexion, état orange : hors-ligne avec des écritures en attente dans l'outbox
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Hors ligne — 1 élément à envoyer} other{Hors ligne — {count} éléments à envoyer}}'**
  String connectionOfflinePending(int count);

  /// Bandeau de connexion, état gris : hors-ligne, outbox vide
  ///
  /// In fr, this message translates to:
  /// **'Hors ligne — rien en attente'**
  String get connectionOffline;

  /// Bandeau de connexion, état rouge : la dernière synchronisation a échoué
  ///
  /// In fr, this message translates to:
  /// **'Synchronisation impossible. Touchez pour relancer.'**
  String get connectionSyncError;

  /// Infobulle du bandeau de connexion, qui ouvre le détail de l'outbox
  ///
  /// In fr, this message translates to:
  /// **'Voir les données en attente'**
  String get connectionBannerTooltip;

  /// Fraîcheur d'une donnée issue du cache local
  ///
  /// In fr, this message translates to:
  /// **'Dernière mise à jour à {time}'**
  String lastUpdatedAt(String time);

  /// Titre de l'écran de confirmation du paiement Mobile Money
  ///
  /// In fr, this message translates to:
  /// **'Saisissez le code reçu par SMS'**
  String get otpTitle;

  /// No description provided for @otpFieldLabel.
  ///
  /// In fr, this message translates to:
  /// **'Code de confirmation'**
  String get otpFieldLabel;

  /// Étiquette d'accessibilité d'une case du code de confirmation
  ///
  /// In fr, this message translates to:
  /// **'Chiffre {position} sur {total}'**
  String otpDigitLabel(int position, int total);

  /// Compte à rebours avant expiration du code
  ///
  /// In fr, this message translates to:
  /// **'Code valable encore {duration}'**
  String otpExpiresIn(String duration);

  /// No description provided for @otpExpired.
  ///
  /// In fr, this message translates to:
  /// **'Le code a expiré. Demandez-en un nouveau.'**
  String get otpExpired;

  /// Nombre d'essais restants renvoyé par l'API
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Il vous reste 1 tentative} other{Il vous reste {count} tentatives}}'**
  String otpAttemptsRemaining(int count);

  /// No description provided for @otpResend.
  ///
  /// In fr, this message translates to:
  /// **'Renvoyer le code'**
  String get otpResend;

  /// Le renvoi est limité à une fois toutes les 30 secondes
  ///
  /// In fr, this message translates to:
  /// **'Renvoyer le code dans {seconds} s'**
  String otpResendIn(int seconds);

  /// No description provided for @phoneFieldLabel.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de téléphone'**
  String get phoneFieldLabel;

  /// No description provided for @phoneFieldHint.
  ///
  /// In fr, this message translates to:
  /// **'70 00 00 00'**
  String get phoneFieldHint;

  /// Indicatif du Burkina Faso, préfixe fixe du champ téléphone
  ///
  /// In fr, this message translates to:
  /// **'+226'**
  String get phoneCountryPrefix;

  /// Titre par défaut d'un état vide — les écrans fournissent un texte plus engageant
  ///
  /// In fr, this message translates to:
  /// **'Rien à afficher pour l\'instant'**
  String get emptyStateTitle;

  /// Titre par défaut d'un état d'erreur
  ///
  /// In fr, this message translates to:
  /// **'L\'affichage a échoué'**
  String get errorStateTitle;

  /// Échec réseau : aucune connectivité
  ///
  /// In fr, this message translates to:
  /// **'Pas de connexion. Vos données seront envoyées au retour du réseau.'**
  String get failureNoConnection;

  /// No description provided for @failureTimeout.
  ///
  /// In fr, this message translates to:
  /// **'Le serveur met trop de temps à répondre. Réessayez.'**
  String get failureTimeout;

  /// No description provided for @failureServer.
  ///
  /// In fr, this message translates to:
  /// **'Le service est momentanément indisponible. Réessayez dans un instant.'**
  String get failureServer;

  /// No description provided for @failureUnauthorized.
  ///
  /// In fr, this message translates to:
  /// **'Votre session a expiré. Reconnectez-vous.'**
  String get failureUnauthorized;

  /// No description provided for @failureForbidden.
  ///
  /// In fr, this message translates to:
  /// **'Vous n\'avez pas accès à cette information.'**
  String get failureForbidden;

  /// No description provided for @failureAccountSuspended.
  ///
  /// In fr, this message translates to:
  /// **'Ce compte est suspendu. Contactez l\'administrateur de la plateforme.'**
  String get failureAccountSuspended;

  /// No description provided for @failureNotFound.
  ///
  /// In fr, this message translates to:
  /// **'Cette information est introuvable.'**
  String get failureNotFound;

  /// Code 409 — conflit de siège, cf. CLAUDE.md §5
  ///
  /// In fr, this message translates to:
  /// **'Cette place vient d\'être prise. Choisissez-en une autre.'**
  String get failureConflict;

  /// No description provided for @failureRateLimited.
  ///
  /// In fr, this message translates to:
  /// **'Trop de tentatives. Patientez un instant avant de réessayer.'**
  String get failureRateLimited;

  /// No description provided for @failureUnexpected.
  ///
  /// In fr, this message translates to:
  /// **'Une erreur est survenue. Réessayez.'**
  String get failureUnexpected;

  /// Bandeau de connexion, variante carte — titre de l'état vert
  ///
  /// In fr, this message translates to:
  /// **'Connecté'**
  String get connectionSyncedTitle;

  /// No description provided for @connectionSyncedBody.
  ///
  /// In fr, this message translates to:
  /// **'Toutes les données sont à jour et synchronisées.'**
  String get connectionSyncedBody;

  /// No description provided for @connectionSyncingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Synchronisation en cours…'**
  String get connectionSyncingTitle;

  /// No description provided for @connectionSyncingBody.
  ///
  /// In fr, this message translates to:
  /// **'Envoi des enregistrements locaux vers le serveur.'**
  String get connectionSyncingBody;

  /// No description provided for @connectionOfflinePendingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Hors ligne — données en attente'**
  String get connectionOfflinePendingTitle;

  /// No description provided for @connectionOfflinePendingBody.
  ///
  /// In fr, this message translates to:
  /// **'Synchronisation automatique au retour du réseau.'**
  String get connectionOfflinePendingBody;

  /// No description provided for @connectionOfflineTitle.
  ///
  /// In fr, this message translates to:
  /// **'Hors ligne'**
  String get connectionOfflineTitle;

  /// No description provided for @connectionOfflineBody.
  ///
  /// In fr, this message translates to:
  /// **'Aucune donnée en attente. Vous pouvez continuer.'**
  String get connectionOfflineBody;

  /// No description provided for @connectionSyncErrorTitle.
  ///
  /// In fr, this message translates to:
  /// **'Échec de synchronisation'**
  String get connectionSyncErrorTitle;

  /// No description provided for @connectionSyncErrorBody.
  ///
  /// In fr, this message translates to:
  /// **'Vos données locales sont conservées. Touchez pour voir le détail.'**
  String get connectionSyncErrorBody;

  /// Horodatage relatif d'une alerte ou d'une saisie de moins d'une minute
  ///
  /// In fr, this message translates to:
  /// **'à l\'instant'**
  String get timeAgoJustNow;

  /// No description provided for @timeAgoMinutes.
  ///
  /// In fr, this message translates to:
  /// **'il y a {count} min'**
  String timeAgoMinutes(int count);

  /// No description provided for @timeAgoHours.
  ///
  /// In fr, this message translates to:
  /// **'il y a {count} h'**
  String timeAgoHours(int count);

  /// No description provided for @timeAgoDays.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{hier} other{il y a {count} jours}}'**
  String timeAgoDays(int count);

  /// Libellé affiché du rôle agent_guichet
  ///
  /// In fr, this message translates to:
  /// **'Agent guichet'**
  String get agentRoleGuichet;

  /// No description provided for @agentRoleControleur.
  ///
  /// In fr, this message translates to:
  /// **'Contrôleur'**
  String get agentRoleControleur;

  /// Remplace le nom de l'agent tant que le profil complet n'est pas chargé
  ///
  /// In fr, this message translates to:
  /// **'Votre poste'**
  String get agentGreetingFallback;

  /// No description provided for @agentQuickActionsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Actions rapides'**
  String get agentQuickActionsTitle;

  /// No description provided for @agentActionRegisterPassenger.
  ///
  /// In fr, this message translates to:
  /// **'Enregistrer un passager'**
  String get agentActionRegisterPassenger;

  /// No description provided for @agentActionRegisterParcel.
  ///
  /// In fr, this message translates to:
  /// **'Enregistrer un colis'**
  String get agentActionRegisterParcel;

  /// No description provided for @agentActionDaySchedule.
  ///
  /// In fr, this message translates to:
  /// **'Programme du jour'**
  String get agentActionDaySchedule;

  /// No description provided for @agentActionScanQr.
  ///
  /// In fr, this message translates to:
  /// **'Scanner un QR code'**
  String get agentActionScanQr;

  /// No description provided for @agentActionPassengerList.
  ///
  /// In fr, this message translates to:
  /// **'Liste des passagers · embarquement'**
  String get agentActionPassengerList;

  /// No description provided for @agentNextDeparturesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Prochains départs'**
  String get agentNextDeparturesTitle;

  /// No description provided for @agentFullSchedule.
  ///
  /// In fr, this message translates to:
  /// **'Programme complet'**
  String get agentFullSchedule;

  /// Pastille de places restantes sur un départ
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{1 place} other{{count} places}}'**
  String agentSeatsAvailable(int count);

  /// No description provided for @agentSeatsFull.
  ///
  /// In fr, this message translates to:
  /// **'Complet'**
  String get agentSeatsFull;

  /// L'API signale le retard sans donner la nouvelle heure : on annonce le fait, pas un horaire inventé
  ///
  /// In fr, this message translates to:
  /// **'Retardé'**
  String get agentDepartureDelayed;

  /// No description provided for @agentDepartureCancelled.
  ///
  /// In fr, this message translates to:
  /// **'Annulé'**
  String get agentDepartureCancelled;

  /// No description provided for @agentPassengersRegistered.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{aucun passager} =1{1 passager} other{{count} passagers}}'**
  String agentPassengersRegistered(int count);

  /// No description provided for @agentViewPassengerList.
  ///
  /// In fr, this message translates to:
  /// **'Voir la liste des passagers'**
  String get agentViewPassengerList;

  /// No description provided for @agentViewPassengerListShort.
  ///
  /// In fr, this message translates to:
  /// **'Liste passagers'**
  String get agentViewPassengerListShort;

  /// No description provided for @agentAddPassenger.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter'**
  String get agentAddPassenger;

  /// No description provided for @agentNoDeparturesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Plus aucun départ aujourd\'hui'**
  String get agentNoDeparturesTitle;

  /// No description provided for @agentNoDeparturesMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ouvrez le programme complet pour préparer les départs de demain.'**
  String get agentNoDeparturesMessage;

  /// No description provided for @agentAlertsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Alertes récentes'**
  String get agentAlertsTitle;

  /// No description provided for @agentAlertsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Rien à signaler'**
  String get agentAlertsEmptyTitle;

  /// No description provided for @agentAlertsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Les colis arrivés et les départs imminents apparaîtront ici.'**
  String get agentAlertsEmptyMessage;

  /// No description provided for @agentNextBoardingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Prochain embarquement'**
  String get agentNextBoardingTitle;

  /// No description provided for @agentDepartureAt.
  ///
  /// In fr, this message translates to:
  /// **'départ {time}'**
  String agentDepartureAt(String time);

  /// No description provided for @agentScanNextTicket.
  ///
  /// In fr, this message translates to:
  /// **'Scanner le prochain billet'**
  String get agentScanNextTicket;

  /// Aucun endpoint de lecture ne donne le compte d'embarqués : on renvoie vers l'écran qui l'aura
  ///
  /// In fr, this message translates to:
  /// **'L\'avancement de l\'embarquement s\'affiche dans la liste des passagers.'**
  String get agentBoardingProgressNotice;

  /// No description provided for @agentNoBoardingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun embarquement en attente'**
  String get agentNoBoardingTitle;

  /// No description provided for @agentNoBoardingMessage.
  ///
  /// In fr, this message translates to:
  /// **'Le prochain départ de votre véhicule s\'affichera ici.'**
  String get agentNoBoardingMessage;

  /// No description provided for @agentConnectionSectionTitle.
  ///
  /// In fr, this message translates to:
  /// **'État de connexion'**
  String get agentConnectionSectionTitle;

  /// No description provided for @agentPendingSheetTitle.
  ///
  /// In fr, this message translates to:
  /// **'Données en attente'**
  String get agentPendingSheetTitle;

  /// No description provided for @agentPendingCount.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{1 enregistrement en attente d\'envoi} other{{count} enregistrements en attente d\'envoi}}'**
  String agentPendingCount(int count);

  /// No description provided for @agentPendingEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Tout est synchronisé'**
  String get agentPendingEmptyTitle;

  /// No description provided for @agentPendingEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Aucune donnée en attente d\'envoi. Vous pouvez continuer à travailler.'**
  String get agentPendingEmptyMessage;

  /// No description provided for @agentPendingBooking.
  ///
  /// In fr, this message translates to:
  /// **'Passager'**
  String get agentPendingBooking;

  /// No description provided for @agentPendingParcel.
  ///
  /// In fr, this message translates to:
  /// **'Colis'**
  String get agentPendingParcel;

  /// No description provided for @agentPendingValidation.
  ///
  /// In fr, this message translates to:
  /// **'Embarquement'**
  String get agentPendingValidation;

  /// No description provided for @agentPendingStatusPending.
  ///
  /// In fr, this message translates to:
  /// **'En attente'**
  String get agentPendingStatusPending;

  /// No description provided for @agentPendingStatusSyncing.
  ///
  /// In fr, this message translates to:
  /// **'Envoi…'**
  String get agentPendingStatusSyncing;

  /// No description provided for @agentPendingStatusFailed.
  ///
  /// In fr, this message translates to:
  /// **'Échec'**
  String get agentPendingStatusFailed;

  /// Le moteur de synchronisation est construit en phase 5A — le bandeau ne doit pas laisser croire qu'il tourne déjà
  ///
  /// In fr, this message translates to:
  /// **'L\'envoi automatique arrive avec le module hors-ligne. Vos saisies restent conservées sur l\'appareil.'**
  String get agentSyncEngineNotice;

  /// No description provided for @agentNavHome.
  ///
  /// In fr, this message translates to:
  /// **'Accueil'**
  String get agentNavHome;

  /// No description provided for @agentNavPassengers.
  ///
  /// In fr, this message translates to:
  /// **'Passagers'**
  String get agentNavPassengers;

  /// No description provided for @agentNavParcels.
  ///
  /// In fr, this message translates to:
  /// **'Colis'**
  String get agentNavParcels;

  /// No description provided for @agentNavScan.
  ///
  /// In fr, this message translates to:
  /// **'Scanner'**
  String get agentNavScan;

  /// No description provided for @agentNavProfile.
  ///
  /// In fr, this message translates to:
  /// **'Profil'**
  String get agentNavProfile;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
