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

  /// No description provided for @publicNavHome.
  ///
  /// In fr, this message translates to:
  /// **'Accueil'**
  String get publicNavHome;

  /// No description provided for @publicNavSearch.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un trajet'**
  String get publicNavSearch;

  /// No description provided for @publicNavTrackParcel.
  ///
  /// In fr, this message translates to:
  /// **'Suivre un colis'**
  String get publicNavTrackParcel;

  /// No description provided for @publicNavCompanies.
  ///
  /// In fr, this message translates to:
  /// **'Compagnies'**
  String get publicNavCompanies;

  /// No description provided for @publicNavLogin.
  ///
  /// In fr, this message translates to:
  /// **'Connexion'**
  String get publicNavLogin;

  /// No description provided for @publicNavRegister.
  ///
  /// In fr, this message translates to:
  /// **'Inscription'**
  String get publicNavRegister;

  /// No description provided for @publicMenuOpen.
  ///
  /// In fr, this message translates to:
  /// **'Ouvrir le menu'**
  String get publicMenuOpen;

  /// No description provided for @publicMenuClose.
  ///
  /// In fr, this message translates to:
  /// **'Fermer le menu'**
  String get publicMenuClose;

  /// No description provided for @publicFooterTagline.
  ///
  /// In fr, this message translates to:
  /// **'La plateforme de réservation de transport de voyageurs et d\'envoi de colis au Burkina Faso.'**
  String get publicFooterTagline;

  /// No description provided for @publicFooterColPlatform.
  ///
  /// In fr, this message translates to:
  /// **'Plateforme'**
  String get publicFooterColPlatform;

  /// No description provided for @publicFooterColHelp.
  ///
  /// In fr, this message translates to:
  /// **'Aide'**
  String get publicFooterColHelp;

  /// No description provided for @publicFooterColContact.
  ///
  /// In fr, this message translates to:
  /// **'Contact'**
  String get publicFooterColContact;

  /// No description provided for @publicFooterLinkBecomePartner.
  ///
  /// In fr, this message translates to:
  /// **'Devenir partenaire'**
  String get publicFooterLinkBecomePartner;

  /// No description provided for @publicFooterLinkHelpCenter.
  ///
  /// In fr, this message translates to:
  /// **'Centre d\'aide'**
  String get publicFooterLinkHelpCenter;

  /// No description provided for @publicFooterLinkHowToBook.
  ///
  /// In fr, this message translates to:
  /// **'Comment réserver'**
  String get publicFooterLinkHowToBook;

  /// No description provided for @publicFooterLinkFaq.
  ///
  /// In fr, this message translates to:
  /// **'Questions fréquentes'**
  String get publicFooterLinkFaq;

  /// No description provided for @publicFooterContactPhone.
  ///
  /// In fr, this message translates to:
  /// **'+226 25 00 00 00'**
  String get publicFooterContactPhone;

  /// No description provided for @publicFooterContactEmail.
  ///
  /// In fr, this message translates to:
  /// **'contact@transbooking.bf'**
  String get publicFooterContactEmail;

  /// No description provided for @publicFooterContactCity.
  ///
  /// In fr, this message translates to:
  /// **'Ouagadougou, Burkina Faso'**
  String get publicFooterContactCity;

  /// No description provided for @publicFooterLegalTerms.
  ///
  /// In fr, this message translates to:
  /// **'Conditions'**
  String get publicFooterLegalTerms;

  /// No description provided for @publicFooterLegalPrivacy.
  ///
  /// In fr, this message translates to:
  /// **'Confidentialité'**
  String get publicFooterLegalPrivacy;

  /// No description provided for @publicFooterLegalNotice.
  ///
  /// In fr, this message translates to:
  /// **'Mentions légales'**
  String get publicFooterLegalNotice;

  /// No description provided for @publicFooterCopyright.
  ///
  /// In fr, this message translates to:
  /// **'© {year} TransBooking BF · Ouagadougou, Burkina Faso'**
  String publicFooterCopyright(int year);

  /// No description provided for @homeHeroBadge.
  ///
  /// In fr, this message translates to:
  /// **'Réservation en ligne · billet QR par SMS'**
  String get homeHeroBadge;

  /// No description provided for @homeHeroTitle.
  ///
  /// In fr, this message translates to:
  /// **'Réservez votre voyage partout au Burkina Faso'**
  String get homeHeroTitle;

  /// No description provided for @homeHeroSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Comparez les compagnies, réservez vos places et envoyez vos colis en quelques minutes.'**
  String get homeHeroSubtitle;

  /// No description provided for @homeHeroCtaBook.
  ///
  /// In fr, this message translates to:
  /// **'Réservez votre place maintenant'**
  String get homeHeroCtaBook;

  /// No description provided for @homeHeroCtaBookHint.
  ///
  /// In fr, this message translates to:
  /// **'Places disponibles dès aujourd\'hui'**
  String get homeHeroCtaBookHint;

  /// No description provided for @searchTabTrip.
  ///
  /// In fr, this message translates to:
  /// **'Voyage'**
  String get searchTabTrip;

  /// No description provided for @searchTabParcel.
  ///
  /// In fr, this message translates to:
  /// **'Colis'**
  String get searchTabParcel;

  /// No description provided for @searchFieldFrom.
  ///
  /// In fr, this message translates to:
  /// **'Départ'**
  String get searchFieldFrom;

  /// No description provided for @searchFieldTo.
  ///
  /// In fr, this message translates to:
  /// **'Arrivée'**
  String get searchFieldTo;

  /// No description provided for @searchFieldDate.
  ///
  /// In fr, this message translates to:
  /// **'Date'**
  String get searchFieldDate;

  /// No description provided for @searchFieldPassengers.
  ///
  /// In fr, this message translates to:
  /// **'Passagers'**
  String get searchFieldPassengers;

  /// No description provided for @searchCityPlaceholder.
  ///
  /// In fr, this message translates to:
  /// **'Choisir une ville'**
  String get searchCityPlaceholder;

  /// No description provided for @searchDatePlaceholder.
  ///
  /// In fr, this message translates to:
  /// **'Toutes les dates'**
  String get searchDatePlaceholder;

  /// No description provided for @searchSwap.
  ///
  /// In fr, this message translates to:
  /// **'Inverser départ et arrivée'**
  String get searchSwap;

  /// No description provided for @searchSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un trajet'**
  String get searchSubmit;

  /// No description provided for @searchSameCityError.
  ///
  /// In fr, this message translates to:
  /// **'Le départ et l\'arrivée doivent être différents.'**
  String get searchSameCityError;

  /// No description provided for @searchPassengersValue.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{1 passager} other{{count} passagers}}'**
  String searchPassengersValue(int count);

  /// No description provided for @homeCompaniesEyebrow.
  ///
  /// In fr, this message translates to:
  /// **'Compagnies partenaires'**
  String get homeCompaniesEyebrow;

  /// No description provided for @homeCompaniesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Voyagez avec les meilleures compagnies'**
  String get homeCompaniesTitle;

  /// No description provided for @homeCompaniesSeeAll.
  ///
  /// In fr, this message translates to:
  /// **'Voir toutes les compagnies'**
  String get homeCompaniesSeeAll;

  /// No description provided for @homeCompaniesEmpty.
  ///
  /// In fr, this message translates to:
  /// **'Les compagnies partenaires s\'afficheront ici prochainement.'**
  String get homeCompaniesEmpty;

  /// No description provided for @homeHowEyebrow.
  ///
  /// In fr, this message translates to:
  /// **'Comment ça marche'**
  String get homeHowEyebrow;

  /// No description provided for @homeHowTitle.
  ///
  /// In fr, this message translates to:
  /// **'Votre billet en 4 étapes'**
  String get homeHowTitle;

  /// No description provided for @homeStep1Title.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher'**
  String get homeStep1Title;

  /// No description provided for @homeStep1Body.
  ///
  /// In fr, this message translates to:
  /// **'Indiquez votre trajet, la date et le nombre de places.'**
  String get homeStep1Body;

  /// No description provided for @homeStep2Title.
  ///
  /// In fr, this message translates to:
  /// **'Réserver'**
  String get homeStep2Title;

  /// No description provided for @homeStep2Body.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez votre compagnie, l\'horaire et vos places.'**
  String get homeStep2Body;

  /// No description provided for @homeStep3Title.
  ///
  /// In fr, this message translates to:
  /// **'Payer'**
  String get homeStep3Title;

  /// No description provided for @homeStep3Body.
  ///
  /// In fr, this message translates to:
  /// **'Réglez par Orange Money, Moov Money, Coris ou Telecel.'**
  String get homeStep3Body;

  /// No description provided for @homeStep4Title.
  ///
  /// In fr, this message translates to:
  /// **'Recevoir son billet QR'**
  String get homeStep4Title;

  /// No description provided for @homeStep4Body.
  ///
  /// In fr, this message translates to:
  /// **'Billet QR reçu par SMS, prêt à l\'embarquement.'**
  String get homeStep4Body;

  /// No description provided for @homeTestimonialsEyebrow.
  ///
  /// In fr, this message translates to:
  /// **'Témoignages'**
  String get homeTestimonialsEyebrow;

  /// No description provided for @homeTestimonialsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Ils voyagent déjà avec nous'**
  String get homeTestimonialsTitle;

  /// No description provided for @homeTestimonialsEmpty.
  ///
  /// In fr, this message translates to:
  /// **'Les premiers témoignages de voyageurs s\'afficheront ici.'**
  String get homeTestimonialsEmpty;

  /// No description provided for @homeCtaTitle.
  ///
  /// In fr, this message translates to:
  /// **'Créez votre compte gratuitement'**
  String get homeCtaTitle;

  /// No description provided for @homeCtaBody.
  ///
  /// In fr, this message translates to:
  /// **'Suivez vos réservations et colis, retrouvez vos billets et profitez des offres des compagnies partenaires.'**
  String get homeCtaBody;

  /// No description provided for @homeCtaCreate.
  ///
  /// In fr, this message translates to:
  /// **'Créer un compte'**
  String get homeCtaCreate;

  /// No description provided for @homeCtaCompany.
  ///
  /// In fr, this message translates to:
  /// **'Espace compagnie'**
  String get homeCtaCompany;

  /// No description provided for @resultsTitle.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Aucun trajet trouvé} =1{1 trajet trouvé} other{{count} trajets trouvés}}'**
  String resultsTitle(int count);

  /// No description provided for @resultsRoute.
  ///
  /// In fr, this message translates to:
  /// **'{origin} → {destination}'**
  String resultsRoute(String origin, String destination);

  /// No description provided for @resultsAllRoutes.
  ///
  /// In fr, this message translates to:
  /// **'Tous les trajets disponibles'**
  String get resultsAllRoutes;

  /// No description provided for @resultsModify.
  ///
  /// In fr, this message translates to:
  /// **'Modifier'**
  String get resultsModify;

  /// No description provided for @resultsFiltersButton.
  ///
  /// In fr, this message translates to:
  /// **'Filtres'**
  String get resultsFiltersButton;

  /// No description provided for @resultsSortLabel.
  ///
  /// In fr, this message translates to:
  /// **'Trier par'**
  String get resultsSortLabel;

  /// No description provided for @resultsSortPrice.
  ///
  /// In fr, this message translates to:
  /// **'Prix'**
  String get resultsSortPrice;

  /// No description provided for @resultsSortDeparture.
  ///
  /// In fr, this message translates to:
  /// **'Heure'**
  String get resultsSortDeparture;

  /// No description provided for @resultsSortDuration.
  ///
  /// In fr, this message translates to:
  /// **'Durée'**
  String get resultsSortDuration;

  /// No description provided for @resultsApply.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Aucun trajet} =1{Voir 1 trajet} other{Voir {count} trajets}}'**
  String resultsApply(int count);

  /// No description provided for @resultsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun trajet trouvé'**
  String get resultsEmptyTitle;

  /// No description provided for @resultsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Aucun trajet ne correspond à vos critères. Élargissez votre recherche : augmentez le prix maximum ou changez de créneau horaire.'**
  String get resultsEmptyMessage;

  /// No description provided for @resultsEmptyAction.
  ///
  /// In fr, this message translates to:
  /// **'Élargir les critères'**
  String get resultsEmptyAction;

  /// No description provided for @filtersTitle.
  ///
  /// In fr, this message translates to:
  /// **'Filtres'**
  String get filtersTitle;

  /// No description provided for @filtersReset.
  ///
  /// In fr, this message translates to:
  /// **'Réinitialiser'**
  String get filtersReset;

  /// No description provided for @filterRouteLabel.
  ///
  /// In fr, this message translates to:
  /// **'Trajet'**
  String get filterRouteLabel;

  /// No description provided for @filterDepartureLabel.
  ///
  /// In fr, this message translates to:
  /// **'Départ'**
  String get filterDepartureLabel;

  /// No description provided for @filterArrivalLabel.
  ///
  /// In fr, this message translates to:
  /// **'Arrivée'**
  String get filterArrivalLabel;

  /// No description provided for @filterDateLabel.
  ///
  /// In fr, this message translates to:
  /// **'Date'**
  String get filterDateLabel;

  /// No description provided for @filterPeriodLabel.
  ///
  /// In fr, this message translates to:
  /// **'Heure de départ'**
  String get filterPeriodLabel;

  /// No description provided for @filterPassengersLabel.
  ///
  /// In fr, this message translates to:
  /// **'Places'**
  String get filterPassengersLabel;

  /// No description provided for @filterMaxPriceLabel.
  ///
  /// In fr, this message translates to:
  /// **'Prix maximum'**
  String get filterMaxPriceLabel;

  /// No description provided for @filterMaxPriceAny.
  ///
  /// In fr, this message translates to:
  /// **'Sans limite'**
  String get filterMaxPriceAny;

  /// No description provided for @filterMaxPriceValue.
  ///
  /// In fr, this message translates to:
  /// **'≤ {amount} FCFA'**
  String filterMaxPriceValue(String amount);

  /// No description provided for @periodAll.
  ///
  /// In fr, this message translates to:
  /// **'Tous'**
  String get periodAll;

  /// No description provided for @periodMorning.
  ///
  /// In fr, this message translates to:
  /// **'Matin'**
  String get periodMorning;

  /// No description provided for @periodAfternoon.
  ///
  /// In fr, this message translates to:
  /// **'Après-midi'**
  String get periodAfternoon;

  /// No description provided for @periodEvening.
  ///
  /// In fr, this message translates to:
  /// **'Soir'**
  String get periodEvening;

  /// No description provided for @filterStopTypeLabel.
  ///
  /// In fr, this message translates to:
  /// **'Type de trajet'**
  String get filterStopTypeLabel;

  /// No description provided for @stopTypeAll.
  ///
  /// In fr, this message translates to:
  /// **'Tous'**
  String get stopTypeAll;

  /// No description provided for @stopTypeDirect.
  ///
  /// In fr, this message translates to:
  /// **'Direct'**
  String get stopTypeDirect;

  /// No description provided for @stopTypeWithStops.
  ///
  /// In fr, this message translates to:
  /// **'Avec escale'**
  String get stopTypeWithStops;

  /// No description provided for @filterCompanyLabel.
  ///
  /// In fr, this message translates to:
  /// **'Compagnie'**
  String get filterCompanyLabel;

  /// No description provided for @filterMinRatingLabel.
  ///
  /// In fr, this message translates to:
  /// **'Note minimale'**
  String get filterMinRatingLabel;

  /// No description provided for @filterMinRatingAny.
  ///
  /// In fr, this message translates to:
  /// **'Toutes'**
  String get filterMinRatingAny;

  /// No description provided for @filterMinRatingValue.
  ///
  /// In fr, this message translates to:
  /// **'{rating}★ et +'**
  String filterMinRatingValue(String rating);

  /// No description provided for @tripSeatsAvailable.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{1 place disponible} other{{count} places disponibles}}'**
  String tripSeatsAvailable(int count);

  /// No description provided for @tripSeatsFull.
  ///
  /// In fr, this message translates to:
  /// **'Complet'**
  String get tripSeatsFull;

  /// Durée d'un trajet, ex. 5h15 — minutes sur deux chiffres
  ///
  /// In fr, this message translates to:
  /// **'{hours}h{minutes}'**
  String tripDuration(int hours, String minutes);

  /// No description provided for @tripPricePerSeat.
  ///
  /// In fr, this message translates to:
  /// **'FCFA / place'**
  String get tripPricePerSeat;

  /// No description provided for @tripVehicle.
  ///
  /// In fr, this message translates to:
  /// **'Véhicule {registration}'**
  String tripVehicle(String registration);

  /// No description provided for @tripDirect.
  ///
  /// In fr, this message translates to:
  /// **'Direct'**
  String get tripDirect;

  /// No description provided for @tripStops.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{1 escale} other{{count} escales}}'**
  String tripStops(int count);

  /// No description provided for @tripBook.
  ///
  /// In fr, this message translates to:
  /// **'Réserver'**
  String get tripBook;

  /// No description provided for @tripStatusScheduled.
  ///
  /// In fr, this message translates to:
  /// **'Programmé'**
  String get tripStatusScheduled;

  /// No description provided for @tripBookingComingSoon.
  ///
  /// In fr, this message translates to:
  /// **'La réservation en ligne arrive très bientôt.'**
  String get tripBookingComingSoon;

  /// No description provided for @companyBadgePartner.
  ///
  /// In fr, this message translates to:
  /// **'Compagnie partenaire'**
  String get companyBadgePartner;

  /// No description provided for @companyContact.
  ///
  /// In fr, this message translates to:
  /// **'Contacter'**
  String get companyContact;

  /// No description provided for @companyBookTrip.
  ///
  /// In fr, this message translates to:
  /// **'Réserver un trajet'**
  String get companyBookTrip;

  /// No description provided for @companyAboutTitle.
  ///
  /// In fr, this message translates to:
  /// **'À propos'**
  String get companyAboutTitle;

  /// No description provided for @companyNoDescription.
  ///
  /// In fr, this message translates to:
  /// **'Cette compagnie n\'a pas encore ajouté de présentation.'**
  String get companyNoDescription;

  /// No description provided for @companyRoutesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Trajets desservis'**
  String get companyRoutesTitle;

  /// No description provided for @companyRouteLabel.
  ///
  /// In fr, this message translates to:
  /// **'{origin} → {destination}'**
  String companyRouteLabel(String origin, String destination);

  /// No description provided for @companyRoutePrice.
  ///
  /// In fr, this message translates to:
  /// **'dès {amount} FCFA'**
  String companyRoutePrice(String amount);

  /// No description provided for @companyReviewsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Avis clients'**
  String get companyReviewsTitle;

  /// No description provided for @companyReviewsCount.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Aucun avis} =1{1 avis} other{{count} avis}}'**
  String companyReviewsCount(int count);

  /// No description provided for @companyReviewsSortRecent.
  ///
  /// In fr, this message translates to:
  /// **'Plus récents'**
  String get companyReviewsSortRecent;

  /// No description provided for @companyReviewsSortTop.
  ///
  /// In fr, this message translates to:
  /// **'Mieux notés'**
  String get companyReviewsSortTop;

  /// No description provided for @companyReviewsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun avis pour l\'instant'**
  String get companyReviewsEmptyTitle;

  /// No description provided for @companyReviewsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Soyez le premier à noter cette compagnie après votre voyage.'**
  String get companyReviewsEmptyMessage;

  /// No description provided for @companyReviewResponse.
  ///
  /// In fr, this message translates to:
  /// **'Réponse de {company}'**
  String companyReviewResponse(String company);

  /// No description provided for @companyContactTitle.
  ///
  /// In fr, this message translates to:
  /// **'Coordonnées de contact'**
  String get companyContactTitle;

  /// No description provided for @companyContactPhone.
  ///
  /// In fr, this message translates to:
  /// **'Téléphone'**
  String get companyContactPhone;

  /// No description provided for @companyContactEmail.
  ///
  /// In fr, this message translates to:
  /// **'E-mail'**
  String get companyContactEmail;

  /// No description provided for @companyContactCity.
  ///
  /// In fr, this message translates to:
  /// **'Ville'**
  String get companyContactCity;

  /// No description provided for @companyContactNone.
  ///
  /// In fr, this message translates to:
  /// **'Coordonnées non communiquées.'**
  String get companyContactNone;

  /// No description provided for @companyRatingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Note moyenne'**
  String get companyRatingTitle;

  /// No description provided for @companyRatingBasedOn.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Aucun avis vérifié} =1{Basé sur 1 avis} other{Basé sur {count} avis}}'**
  String companyRatingBasedOn(int count);

  /// No description provided for @companyRatingNone.
  ///
  /// In fr, this message translates to:
  /// **'Pas encore de note'**
  String get companyRatingNone;

  /// No description provided for @trackingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Suivi de colis'**
  String get trackingTitle;

  /// No description provided for @trackingSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Entrez votre numéro de suivi pour connaître l\'état de votre envoi.'**
  String get trackingSubtitle;

  /// No description provided for @trackingInputLabel.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de suivi'**
  String get trackingInputLabel;

  /// No description provided for @trackingInputHint.
  ///
  /// In fr, this message translates to:
  /// **'Votre numéro de suivi'**
  String get trackingInputHint;

  /// No description provided for @trackingSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Suivre'**
  String get trackingSubmit;

  /// No description provided for @trackingPromptTitle.
  ///
  /// In fr, this message translates to:
  /// **'Suivez votre colis'**
  String get trackingPromptTitle;

  /// No description provided for @trackingPromptMessage.
  ///
  /// In fr, this message translates to:
  /// **'Saisissez votre numéro de suivi pour afficher son état en temps réel.'**
  String get trackingPromptMessage;

  /// No description provided for @trackingCurrentStatus.
  ///
  /// In fr, this message translates to:
  /// **'Statut actuel'**
  String get trackingCurrentStatus;

  /// No description provided for @trackingEstimatedDelivery.
  ///
  /// In fr, this message translates to:
  /// **'Livraison estimée'**
  String get trackingEstimatedDelivery;

  /// No description provided for @trackingRoute.
  ///
  /// In fr, this message translates to:
  /// **'{origin} → {destination}'**
  String trackingRoute(String origin, String destination);

  /// No description provided for @trackingProgressTitle.
  ///
  /// In fr, this message translates to:
  /// **'Progression du colis'**
  String get trackingProgressTitle;

  /// No description provided for @trackingStageCurrent.
  ///
  /// In fr, this message translates to:
  /// **'En cours'**
  String get trackingStageCurrent;

  /// No description provided for @trackingRecipientTitle.
  ///
  /// In fr, this message translates to:
  /// **'Destinataire'**
  String get trackingRecipientTitle;

  /// No description provided for @trackingRecipientPhone.
  ///
  /// In fr, this message translates to:
  /// **'Téléphone'**
  String get trackingRecipientPhone;

  /// No description provided for @trackingNotFoundTitle.
  ///
  /// In fr, this message translates to:
  /// **'Numéro introuvable'**
  String get trackingNotFoundTitle;

  /// No description provided for @trackingNotFoundMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vérifiez le numéro de suivi et réessayez.'**
  String get trackingNotFoundMessage;

  /// No description provided for @parcelStageRegistered.
  ///
  /// In fr, this message translates to:
  /// **'Enregistré'**
  String get parcelStageRegistered;

  /// No description provided for @parcelStageInTransit.
  ///
  /// In fr, this message translates to:
  /// **'En transit'**
  String get parcelStageInTransit;

  /// No description provided for @parcelStageArrived.
  ///
  /// In fr, this message translates to:
  /// **'Arrivé'**
  String get parcelStageArrived;

  /// No description provided for @parcelStageNotified.
  ///
  /// In fr, this message translates to:
  /// **'Destinataire prévenu'**
  String get parcelStageNotified;

  /// No description provided for @parcelStageCollected.
  ///
  /// In fr, this message translates to:
  /// **'Remis'**
  String get parcelStageCollected;

  /// No description provided for @starRatingLabel.
  ///
  /// In fr, this message translates to:
  /// **'Note de {rating} sur 5'**
  String starRatingLabel(String rating);

  /// No description provided for @bookingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Réservation'**
  String get bookingTitle;

  /// No description provided for @bookingStepDetail.
  ///
  /// In fr, this message translates to:
  /// **'Détail du trajet'**
  String get bookingStepDetail;

  /// No description provided for @bookingStepSeat.
  ///
  /// In fr, this message translates to:
  /// **'Choix du siège'**
  String get bookingStepSeat;

  /// No description provided for @bookingStepPassenger.
  ///
  /// In fr, this message translates to:
  /// **'Passager'**
  String get bookingStepPassenger;

  /// No description provided for @bookingStepPayment.
  ///
  /// In fr, this message translates to:
  /// **'Paiement'**
  String get bookingStepPayment;

  /// No description provided for @bookingDetailTitle.
  ///
  /// In fr, this message translates to:
  /// **'Votre trajet'**
  String get bookingDetailTitle;

  /// No description provided for @bookingDepartureLabel.
  ///
  /// In fr, this message translates to:
  /// **'Départ'**
  String get bookingDepartureLabel;

  /// No description provided for @bookingArrivalLabel.
  ///
  /// In fr, this message translates to:
  /// **'Arrivée'**
  String get bookingArrivalLabel;

  /// No description provided for @bookingSeatsAvailableLabel.
  ///
  /// In fr, this message translates to:
  /// **'Places disponibles'**
  String get bookingSeatsAvailableLabel;

  /// No description provided for @bookingPriceLabel.
  ///
  /// In fr, this message translates to:
  /// **'Prix par place'**
  String get bookingPriceLabel;

  /// No description provided for @bookingVehicleLabel.
  ///
  /// In fr, this message translates to:
  /// **'Véhicule'**
  String get bookingVehicleLabel;

  /// No description provided for @bookingSeatTitle.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez votre siège'**
  String get bookingSeatTitle;

  /// No description provided for @bookingSeatSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez un siège libre, ou laissez-nous vous en attribuer un.'**
  String get bookingSeatSubtitle;

  /// No description provided for @bookingSeatAuto.
  ///
  /// In fr, this message translates to:
  /// **'Attribution automatique'**
  String get bookingSeatAuto;

  /// No description provided for @bookingSeatAutoHint.
  ///
  /// In fr, this message translates to:
  /// **'Un siège vous sera attribué à la confirmation.'**
  String get bookingSeatAutoHint;

  /// No description provided for @bookingSeatChosen.
  ///
  /// In fr, this message translates to:
  /// **'Siège choisi : {seat}'**
  String bookingSeatChosen(String seat);

  /// No description provided for @bookingSeatNoneTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun siège disponible'**
  String get bookingSeatNoneTitle;

  /// No description provided for @bookingSeatNoneMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ce voyage est complet. Revenez aux résultats pour choisir un autre départ.'**
  String get bookingSeatNoneMessage;

  /// No description provided for @bookingSeatLayoutNote.
  ///
  /// In fr, this message translates to:
  /// **'Le plan du véhicule n\'est pas communiqué : seuls les sièges libres sont proposés.'**
  String get bookingSeatLayoutNote;

  /// No description provided for @bookingPassengerTitle.
  ///
  /// In fr, this message translates to:
  /// **'Informations du passager'**
  String get bookingPassengerTitle;

  /// No description provided for @bookingPassengerSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Ces informations figureront sur le billet. Laissées vides, celles de votre compte sont utilisées.'**
  String get bookingPassengerSubtitle;

  /// No description provided for @bookingPassengerPhoneHint.
  ///
  /// In fr, this message translates to:
  /// **'Numéro du voyageur'**
  String get bookingPassengerPhoneHint;

  /// No description provided for @bookingPaymentTitle.
  ///
  /// In fr, this message translates to:
  /// **'Mode de paiement'**
  String get bookingPaymentTitle;

  /// No description provided for @bookingPaymentSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez comment régler votre place.'**
  String get bookingPaymentSubtitle;

  /// No description provided for @paymentMethodOrangeMoney.
  ///
  /// In fr, this message translates to:
  /// **'Orange Money'**
  String get paymentMethodOrangeMoney;

  /// No description provided for @paymentMethodMoovMoney.
  ///
  /// In fr, this message translates to:
  /// **'Moov Money'**
  String get paymentMethodMoovMoney;

  /// No description provided for @paymentMethodCorisMoney.
  ///
  /// In fr, this message translates to:
  /// **'Coris Money'**
  String get paymentMethodCorisMoney;

  /// No description provided for @paymentMethodTelecelMoney.
  ///
  /// In fr, this message translates to:
  /// **'Telecel Money'**
  String get paymentMethodTelecelMoney;

  /// No description provided for @paymentMethodCash.
  ///
  /// In fr, this message translates to:
  /// **'Espèces au guichet'**
  String get paymentMethodCash;

  /// No description provided for @paymentMethodCashHint.
  ///
  /// In fr, this message translates to:
  /// **'Réglez à l\'agence. Votre place est réservée en attente de paiement.'**
  String get paymentMethodCashHint;

  /// No description provided for @paymentPhoneLabel.
  ///
  /// In fr, this message translates to:
  /// **'Numéro Mobile Money'**
  String get paymentPhoneLabel;

  /// No description provided for @paymentSecureNote.
  ///
  /// In fr, this message translates to:
  /// **'Paiement sécurisé'**
  String get paymentSecureNote;

  /// No description provided for @bookingSummaryTitle.
  ///
  /// In fr, this message translates to:
  /// **'Récapitulatif'**
  String get bookingSummaryTitle;

  /// No description provided for @bookingSummarySeatLabel.
  ///
  /// In fr, this message translates to:
  /// **'Siège'**
  String get bookingSummarySeatLabel;

  /// No description provided for @bookingSummarySeatAuto.
  ///
  /// In fr, this message translates to:
  /// **'Automatique'**
  String get bookingSummarySeatAuto;

  /// No description provided for @bookingSummaryTotalLabel.
  ///
  /// In fr, this message translates to:
  /// **'Total à payer'**
  String get bookingSummaryTotalLabel;

  /// No description provided for @bookingSummaryPriceNote.
  ///
  /// In fr, this message translates to:
  /// **'Montant calculé par la compagnie, en lecture seule.'**
  String get bookingSummaryPriceNote;

  /// No description provided for @bookingActionChooseSeat.
  ///
  /// In fr, this message translates to:
  /// **'Choisir mon siège'**
  String get bookingActionChooseSeat;

  /// No description provided for @bookingActionPay.
  ///
  /// In fr, this message translates to:
  /// **'Payer {amount} FCFA'**
  String bookingActionPay(String amount);

  /// No description provided for @bookingActionPaySimple.
  ///
  /// In fr, this message translates to:
  /// **'Payer'**
  String get bookingActionPaySimple;

  /// No description provided for @otpSentTo.
  ///
  /// In fr, this message translates to:
  /// **'Code envoyé au {phone}'**
  String otpSentTo(String phone);

  /// No description provided for @otpWrongCode.
  ///
  /// In fr, this message translates to:
  /// **'Code incorrect. Vérifiez et réessayez.'**
  String get otpWrongCode;

  /// No description provided for @otpVerifyAction.
  ///
  /// In fr, this message translates to:
  /// **'Valider le paiement'**
  String get otpVerifyAction;

  /// No description provided for @otpChangeMethod.
  ///
  /// In fr, this message translates to:
  /// **'Changer de moyen de paiement'**
  String get otpChangeMethod;

  /// No description provided for @paymentResultPaidBadge.
  ///
  /// In fr, this message translates to:
  /// **'Payé'**
  String get paymentResultPaidBadge;

  /// No description provided for @paymentResultPendingBadge.
  ///
  /// In fr, this message translates to:
  /// **'En attente'**
  String get paymentResultPendingBadge;

  /// No description provided for @paymentResultFailedBadge.
  ///
  /// In fr, this message translates to:
  /// **'Échoué'**
  String get paymentResultFailedBadge;

  /// No description provided for @paymentResultPaidTitle.
  ///
  /// In fr, this message translates to:
  /// **'Paiement réussi'**
  String get paymentResultPaidTitle;

  /// No description provided for @paymentResultPaidMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre billet est confirmé et envoyé par SMS. Bon voyage !'**
  String get paymentResultPaidMessage;

  /// No description provided for @paymentResultPendingTitle.
  ///
  /// In fr, this message translates to:
  /// **'Paiement en attente'**
  String get paymentResultPendingTitle;

  /// No description provided for @paymentResultPendingMessage.
  ///
  /// In fr, this message translates to:
  /// **'Confirmez la transaction sur votre téléphone, ou réglez au guichet. Le statut se mettra à jour dès réception.'**
  String get paymentResultPendingMessage;

  /// No description provided for @paymentResultFailedTitle.
  ///
  /// In fr, this message translates to:
  /// **'Paiement non abouti'**
  String get paymentResultFailedTitle;

  /// No description provided for @paymentResultFailedMessage.
  ///
  /// In fr, this message translates to:
  /// **'La transaction n\'a pas abouti et aucun montant n\'a été débité. Vérifiez votre solde et réessayez.'**
  String get paymentResultFailedMessage;

  /// No description provided for @paymentResultAmount.
  ///
  /// In fr, this message translates to:
  /// **'Montant'**
  String get paymentResultAmount;

  /// No description provided for @paymentResultMethod.
  ///
  /// In fr, this message translates to:
  /// **'Mode'**
  String get paymentResultMethod;

  /// No description provided for @paymentResultTicket.
  ///
  /// In fr, this message translates to:
  /// **'N° de billet'**
  String get paymentResultTicket;

  /// No description provided for @paymentResultReference.
  ///
  /// In fr, this message translates to:
  /// **'Référence'**
  String get paymentResultReference;

  /// No description provided for @paymentResultViewReceipt.
  ///
  /// In fr, this message translates to:
  /// **'Voir le reçu (PDF)'**
  String get paymentResultViewReceipt;

  /// No description provided for @paymentResultReceiptUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'L\'ouverture du reçu PDF arrive bientôt.'**
  String get paymentResultReceiptUnavailable;

  /// No description provided for @paymentResultRetry.
  ///
  /// In fr, this message translates to:
  /// **'Reprendre le paiement'**
  String get paymentResultRetry;

  /// No description provided for @paymentResultViewTicket.
  ///
  /// In fr, this message translates to:
  /// **'Voir mon billet'**
  String get paymentResultViewTicket;

  /// No description provided for @paymentResultBackHome.
  ///
  /// In fr, this message translates to:
  /// **'Retour à l\'accueil'**
  String get paymentResultBackHome;

  /// No description provided for @travelerSidebarSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'BF · VOYAGEUR'**
  String get travelerSidebarSubtitle;

  /// No description provided for @travelerNavHome.
  ///
  /// In fr, this message translates to:
  /// **'Accueil'**
  String get travelerNavHome;

  /// No description provided for @travelerNavSearch.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher'**
  String get travelerNavSearch;

  /// No description provided for @travelerNavBookings.
  ///
  /// In fr, this message translates to:
  /// **'Mes réservations'**
  String get travelerNavBookings;

  /// No description provided for @travelerNavBookingsShort.
  ///
  /// In fr, this message translates to:
  /// **'Billets'**
  String get travelerNavBookingsShort;

  /// No description provided for @travelerNavParcels.
  ///
  /// In fr, this message translates to:
  /// **'Suivi de colis'**
  String get travelerNavParcels;

  /// No description provided for @travelerNavParcelsShort.
  ///
  /// In fr, this message translates to:
  /// **'Colis'**
  String get travelerNavParcelsShort;

  /// No description provided for @travelerNavClaims.
  ///
  /// In fr, this message translates to:
  /// **'Réclamations'**
  String get travelerNavClaims;

  /// No description provided for @travelerNavBaggage.
  ///
  /// In fr, this message translates to:
  /// **'Bagages'**
  String get travelerNavBaggage;

  /// No description provided for @travelerNavProfile.
  ///
  /// In fr, this message translates to:
  /// **'Mon profil'**
  String get travelerNavProfile;

  /// Accueil personnalisé du tableau de bord voyageur
  ///
  /// In fr, this message translates to:
  /// **'Bonjour {firstName} 👋'**
  String dashGreeting(String firstName);

  /// No description provided for @dashGreetingFallback.
  ///
  /// In fr, this message translates to:
  /// **'Bonjour 👋'**
  String get dashGreetingFallback;

  /// No description provided for @dashGreetingSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Voici un aperçu de vos voyages et de vos colis.'**
  String get dashGreetingSubtitle;

  /// No description provided for @dashBookTrip.
  ///
  /// In fr, this message translates to:
  /// **'Réserver un voyage'**
  String get dashBookTrip;

  /// No description provided for @dashQuickActions.
  ///
  /// In fr, this message translates to:
  /// **'Actions rapides'**
  String get dashQuickActions;

  /// No description provided for @dashActiveBookings.
  ///
  /// In fr, this message translates to:
  /// **'Réservations actives'**
  String get dashActiveBookings;

  /// No description provided for @dashPending.
  ///
  /// In fr, this message translates to:
  /// **'En attente de paiement'**
  String get dashPending;

  /// No description provided for @dashUpcoming.
  ///
  /// In fr, this message translates to:
  /// **'Voyages à venir'**
  String get dashUpcoming;

  /// No description provided for @dashActionSearch.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un trajet'**
  String get dashActionSearch;

  /// No description provided for @dashActionBookings.
  ///
  /// In fr, this message translates to:
  /// **'Mes réservations'**
  String get dashActionBookings;

  /// No description provided for @dashActionParcels.
  ///
  /// In fr, this message translates to:
  /// **'Suivre un colis'**
  String get dashActionParcels;

  /// No description provided for @dashActionClaim.
  ///
  /// In fr, this message translates to:
  /// **'Déposer une réclamation'**
  String get dashActionClaim;

  /// No description provided for @dashNextTrips.
  ///
  /// In fr, this message translates to:
  /// **'Prochains voyages'**
  String get dashNextTrips;

  /// No description provided for @dashNextTripsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun voyage à venir'**
  String get dashNextTripsEmptyTitle;

  /// No description provided for @dashNextTripsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Réservez votre prochain trajet pour le voir apparaître ici.'**
  String get dashNextTripsEmptyMessage;

  /// No description provided for @dashSeat.
  ///
  /// In fr, this message translates to:
  /// **'Siège'**
  String get dashSeat;

  /// No description provided for @dashNotifications.
  ///
  /// In fr, this message translates to:
  /// **'Notifications récentes'**
  String get dashNotifications;

  /// No description provided for @dashNotificationsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucune notification'**
  String get dashNotificationsEmptyTitle;

  /// No description provided for @dashNotificationsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vos alertes de voyage et de colis s\'afficheront ici.'**
  String get dashNotificationsEmptyMessage;

  /// No description provided for @bookingsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Mes réservations'**
  String get bookingsTitle;

  /// No description provided for @bookingsSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Retrouvez vos billets et suivez leur statut.'**
  String get bookingsSubtitle;

  /// No description provided for @bookingsFilterAll.
  ///
  /// In fr, this message translates to:
  /// **'Toutes'**
  String get bookingsFilterAll;

  /// No description provided for @bookingsFilterPaid.
  ///
  /// In fr, this message translates to:
  /// **'Payé'**
  String get bookingsFilterPaid;

  /// No description provided for @bookingsFilterUnpaid.
  ///
  /// In fr, this message translates to:
  /// **'Non payé'**
  String get bookingsFilterUnpaid;

  /// No description provided for @bookingsFilterCancelled.
  ///
  /// In fr, this message translates to:
  /// **'Annulé'**
  String get bookingsFilterCancelled;

  /// No description provided for @bookingsSeat.
  ///
  /// In fr, this message translates to:
  /// **'Siège'**
  String get bookingsSeat;

  /// No description provided for @bookingsDate.
  ///
  /// In fr, this message translates to:
  /// **'Date & heure'**
  String get bookingsDate;

  /// No description provided for @bookingsTicketNo.
  ///
  /// In fr, this message translates to:
  /// **'N° billet'**
  String get bookingsTicketNo;

  /// No description provided for @bookingsView.
  ///
  /// In fr, this message translates to:
  /// **'Voir'**
  String get bookingsView;

  /// No description provided for @bookingsDownload.
  ///
  /// In fr, this message translates to:
  /// **'PDF'**
  String get bookingsDownload;

  /// No description provided for @bookingsCancel.
  ///
  /// In fr, this message translates to:
  /// **'Annuler'**
  String get bookingsCancel;

  /// No description provided for @bookingsDownloadUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'Le téléchargement du billet PDF arrive bientôt.'**
  String get bookingsDownloadUnavailable;

  /// No description provided for @bookingsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucune réservation'**
  String get bookingsEmptyTitle;

  /// No description provided for @bookingsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Réservez votre première place pour la retrouver ici.'**
  String get bookingsEmptyMessage;

  /// No description provided for @bookingsEmptyCta.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un trajet'**
  String get bookingsEmptyCta;

  /// No description provided for @bookingsNoMatchTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucune réservation ne correspond'**
  String get bookingsNoMatchTitle;

  /// No description provided for @bookingsNoMatchMessage.
  ///
  /// In fr, this message translates to:
  /// **'Modifiez le filtre pour voir vos autres réservations.'**
  String get bookingsNoMatchMessage;

  /// No description provided for @bookingsCancelTitle.
  ///
  /// In fr, this message translates to:
  /// **'Annuler cette réservation ?'**
  String get bookingsCancelTitle;

  /// No description provided for @bookingsCancelIntro.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes sur le point d\'annuler le billet'**
  String get bookingsCancelIntro;

  /// No description provided for @bookingsCancelIrreversible.
  ///
  /// In fr, this message translates to:
  /// **'Cette action est irréversible.'**
  String get bookingsCancelIrreversible;

  /// No description provided for @bookingsCancelRefundNote.
  ///
  /// In fr, this message translates to:
  /// **'Le remboursement dépend des conditions de la compagnie et du délai avant le départ.'**
  String get bookingsCancelRefundNote;

  /// No description provided for @bookingsCancelReasonLabel.
  ///
  /// In fr, this message translates to:
  /// **'Motif de l\'annulation'**
  String get bookingsCancelReasonLabel;

  /// No description provided for @bookingsCancelReasonHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex : changement de programme'**
  String get bookingsCancelReasonHint;

  /// No description provided for @bookingsCancelDefaultReason.
  ///
  /// In fr, this message translates to:
  /// **'Annulation demandée par le voyageur'**
  String get bookingsCancelDefaultReason;

  /// No description provided for @bookingsCancelKeep.
  ///
  /// In fr, this message translates to:
  /// **'Conserver'**
  String get bookingsCancelKeep;

  /// No description provided for @bookingsCancelConfirm.
  ///
  /// In fr, this message translates to:
  /// **'Oui, annuler'**
  String get bookingsCancelConfirm;

  /// No description provided for @bookingsCancelSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Réservation annulée. Le remboursement éventuel est en cours.'**
  String get bookingsCancelSuccess;

  /// No description provided for @ticketScreenTitle.
  ///
  /// In fr, this message translates to:
  /// **'Mon billet'**
  String get ticketScreenTitle;

  /// No description provided for @ticketLabel.
  ///
  /// In fr, this message translates to:
  /// **'Billet électronique'**
  String get ticketLabel;

  /// No description provided for @ticketDeparture.
  ///
  /// In fr, this message translates to:
  /// **'Départ'**
  String get ticketDeparture;

  /// No description provided for @ticketArrival.
  ///
  /// In fr, this message translates to:
  /// **'Arrivée'**
  String get ticketArrival;

  /// No description provided for @ticketPassenger.
  ///
  /// In fr, this message translates to:
  /// **'Passager'**
  String get ticketPassenger;

  /// No description provided for @ticketDate.
  ///
  /// In fr, this message translates to:
  /// **'Date'**
  String get ticketDate;

  /// No description provided for @ticketSeat.
  ///
  /// In fr, this message translates to:
  /// **'Siège'**
  String get ticketSeat;

  /// No description provided for @ticketAmount.
  ///
  /// In fr, this message translates to:
  /// **'Prix'**
  String get ticketAmount;

  /// No description provided for @ticketScanPrompt.
  ///
  /// In fr, this message translates to:
  /// **'Scannez à l\'embarquement'**
  String get ticketScanPrompt;

  /// No description provided for @ticketUniqueCode.
  ///
  /// In fr, this message translates to:
  /// **'Code unique · usage unique'**
  String get ticketUniqueCode;

  /// No description provided for @ticketQrUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'QR indisponible'**
  String get ticketQrUnavailable;

  /// No description provided for @ticketDownloadPdf.
  ///
  /// In fr, this message translates to:
  /// **'Télécharger en PDF'**
  String get ticketDownloadPdf;

  /// No description provided for @ticketPrint.
  ///
  /// In fr, this message translates to:
  /// **'Imprimer'**
  String get ticketPrint;

  /// No description provided for @ticketShare.
  ///
  /// In fr, this message translates to:
  /// **'Partager'**
  String get ticketShare;

  /// No description provided for @ticketActionUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'Cette action arrive bientôt.'**
  String get ticketActionUnavailable;

  /// No description provided for @baggageTitle.
  ///
  /// In fr, this message translates to:
  /// **'Bagages'**
  String get baggageTitle;

  /// No description provided for @baggageSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Vos bagages enregistrés et les règles de transport.'**
  String get baggageSubtitle;

  /// No description provided for @baggageNoticeTitle.
  ///
  /// In fr, this message translates to:
  /// **'Vos bagages enregistrés'**
  String get baggageNoticeTitle;

  /// No description provided for @baggageNoticeMessage.
  ///
  /// In fr, this message translates to:
  /// **'Le détail de vos bagages figure sur chaque réservation, au moment de l\'enregistrement au guichet.'**
  String get baggageNoticeMessage;

  /// No description provided for @baggageRulesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Règles de transport des bagages'**
  String get baggageRulesTitle;

  /// No description provided for @baggageRuleAllowanceTitle.
  ///
  /// In fr, this message translates to:
  /// **'Franchise incluse'**
  String get baggageRuleAllowanceTitle;

  /// No description provided for @baggageRuleAllowanceDesc.
  ///
  /// In fr, this message translates to:
  /// **'40 kg au total par billet, répartis en soute et en cabine sans frais.'**
  String get baggageRuleAllowanceDesc;

  /// No description provided for @baggageRuleDimensionsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Dimensions maximales'**
  String get baggageRuleDimensionsTitle;

  /// No description provided for @baggageRuleDimensionsDesc.
  ///
  /// In fr, this message translates to:
  /// **'Cabine : 55 × 40 × 20 cm. Soute : 80 × 50 × 30 cm par pièce.'**
  String get baggageRuleDimensionsDesc;

  /// No description provided for @baggageRuleForbiddenTitle.
  ///
  /// In fr, this message translates to:
  /// **'Objets interdits'**
  String get baggageRuleForbiddenTitle;

  /// No description provided for @baggageRuleForbiddenDesc.
  ///
  /// In fr, this message translates to:
  /// **'Produits inflammables, armes, denrées périssables non emballées.'**
  String get baggageRuleForbiddenDesc;

  /// No description provided for @baggageRuleValuablesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Objets de valeur'**
  String get baggageRuleValuablesTitle;

  /// No description provided for @baggageRuleValuablesDesc.
  ///
  /// In fr, this message translates to:
  /// **'Argent, bijoux et appareils électroniques à conserver avec vous en cabine.'**
  String get baggageRuleValuablesDesc;

  /// No description provided for @baggageFeesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Frais supplémentaires indicatifs'**
  String get baggageFeesTitle;

  /// No description provided for @baggageFeesSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Au-delà de la franchise incluse'**
  String get baggageFeesSubtitle;

  /// No description provided for @baggageFeeExtraKg.
  ///
  /// In fr, this message translates to:
  /// **'Kilo supplémentaire (> 40 kg)'**
  String get baggageFeeExtraKg;

  /// No description provided for @baggageFeeExtraKgValue.
  ///
  /// In fr, this message translates to:
  /// **'250 FCFA / kg'**
  String get baggageFeeExtraKgValue;

  /// No description provided for @baggageFeeOversize.
  ///
  /// In fr, this message translates to:
  /// **'Bagage hors gabarit'**
  String get baggageFeeOversize;

  /// No description provided for @baggageFeeOversizeValue.
  ///
  /// In fr, this message translates to:
  /// **'1 500 FCFA'**
  String get baggageFeeOversizeValue;

  /// No description provided for @baggageFeeFragile.
  ///
  /// In fr, this message translates to:
  /// **'Bagage fragile (manutention)'**
  String get baggageFeeFragile;

  /// No description provided for @baggageFeeFragileValue.
  ///
  /// In fr, this message translates to:
  /// **'1 000 FCFA'**
  String get baggageFeeFragileValue;

  /// No description provided for @baggageFeeExtraPiece.
  ///
  /// In fr, this message translates to:
  /// **'Bagage supplémentaire (> 3)'**
  String get baggageFeeExtraPiece;

  /// No description provided for @baggageFeeExtraPieceValue.
  ///
  /// In fr, this message translates to:
  /// **'2 000 FCFA'**
  String get baggageFeeExtraPieceValue;

  /// No description provided for @baggageFeesDisclaimer.
  ///
  /// In fr, this message translates to:
  /// **'Tarifs indicatifs. Le montant exact est confirmé par la compagnie à l\'enregistrement.'**
  String get baggageFeesDisclaimer;

  /// No description provided for @reviewTitle.
  ///
  /// In fr, this message translates to:
  /// **'Déposer un avis'**
  String get reviewTitle;

  /// No description provided for @reviewSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer mon avis'**
  String get reviewSubmit;

  /// No description provided for @reviewMissingTripTitle.
  ///
  /// In fr, this message translates to:
  /// **'Voyage introuvable'**
  String get reviewMissingTripTitle;

  /// No description provided for @reviewMissingTripMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ouvrez un voyage terminé depuis vos réservations pour laisser un avis.'**
  String get reviewMissingTripMessage;

  /// No description provided for @reviewTripDone.
  ///
  /// In fr, this message translates to:
  /// **'Voyage terminé'**
  String get reviewTripDone;

  /// No description provided for @reviewTripFallback.
  ///
  /// In fr, this message translates to:
  /// **'Votre dernier voyage'**
  String get reviewTripFallback;

  /// No description provided for @reviewQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Comment s\'est passé votre voyage ?'**
  String get reviewQuestion;

  /// No description provided for @reviewQuestionHint.
  ///
  /// In fr, this message translates to:
  /// **'Attribuez une note de 1 à 5 étoiles.'**
  String get reviewQuestionHint;

  /// No description provided for @reviewRatingPrompt.
  ///
  /// In fr, this message translates to:
  /// **'Touchez une étoile'**
  String get reviewRatingPrompt;

  /// No description provided for @reviewRating1.
  ///
  /// In fr, this message translates to:
  /// **'Très insatisfait'**
  String get reviewRating1;

  /// No description provided for @reviewRating2.
  ///
  /// In fr, this message translates to:
  /// **'Insatisfait'**
  String get reviewRating2;

  /// No description provided for @reviewRating3.
  ///
  /// In fr, this message translates to:
  /// **'Correct'**
  String get reviewRating3;

  /// No description provided for @reviewRating4.
  ///
  /// In fr, this message translates to:
  /// **'Satisfait'**
  String get reviewRating4;

  /// No description provided for @reviewRating5.
  ///
  /// In fr, this message translates to:
  /// **'Excellent !'**
  String get reviewRating5;

  /// No description provided for @reviewCommentLabel.
  ///
  /// In fr, this message translates to:
  /// **'Votre commentaire'**
  String get reviewCommentLabel;

  /// No description provided for @reviewCommentHint.
  ///
  /// In fr, this message translates to:
  /// **'Partagez votre expérience : ponctualité, confort, accueil…'**
  String get reviewCommentHint;

  /// No description provided for @reviewFooter.
  ///
  /// In fr, this message translates to:
  /// **'Votre avis aide les autres voyageurs et améliore nos services.'**
  String get reviewFooter;

  /// No description provided for @reviewThanksTitle.
  ///
  /// In fr, this message translates to:
  /// **'Merci pour votre avis !'**
  String get reviewThanksTitle;

  /// Confirmation après dépôt d'un avis
  ///
  /// In fr, this message translates to:
  /// **'Votre note de {rating}/5 a bien été enregistrée. Elle sera visible après modération.'**
  String reviewThanksMessage(int rating);

  /// No description provided for @reviewBackToBookings.
  ///
  /// In fr, this message translates to:
  /// **'Retour à mes réservations'**
  String get reviewBackToBookings;

  /// No description provided for @claimsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Réclamations'**
  String get claimsTitle;

  /// No description provided for @claimsSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Suivez vos réclamations et leur traitement.'**
  String get claimsSubtitle;

  /// No description provided for @claimsNewCta.
  ///
  /// In fr, this message translates to:
  /// **'Nouvelle réclamation'**
  String get claimsNewCta;

  /// No description provided for @claimsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucune réclamation'**
  String get claimsEmptyTitle;

  /// No description provided for @claimsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Signalez un problème rencontré lors d\'un voyage.'**
  String get claimsEmptyMessage;

  /// No description provided for @claimsOverdue.
  ///
  /// In fr, this message translates to:
  /// **'En attente de réponse depuis plus de 48 h'**
  String get claimsOverdue;

  /// No description provided for @claimsResponseLabel.
  ///
  /// In fr, this message translates to:
  /// **'Réponse de la compagnie'**
  String get claimsResponseLabel;

  /// No description provided for @claimTypeDelay.
  ///
  /// In fr, this message translates to:
  /// **'Retard'**
  String get claimTypeDelay;

  /// No description provided for @claimTypeLostBaggage.
  ///
  /// In fr, this message translates to:
  /// **'Perte de bagage'**
  String get claimTypeLostBaggage;

  /// No description provided for @claimTypeService.
  ///
  /// In fr, this message translates to:
  /// **'Service'**
  String get claimTypeService;

  /// No description provided for @claimTypeRefund.
  ///
  /// In fr, this message translates to:
  /// **'Remboursement'**
  String get claimTypeRefund;

  /// No description provided for @claimTypeOther.
  ///
  /// In fr, this message translates to:
  /// **'Autre'**
  String get claimTypeOther;

  /// No description provided for @newClaimTitle.
  ///
  /// In fr, this message translates to:
  /// **'Nouvelle réclamation'**
  String get newClaimTitle;

  /// No description provided for @newClaimSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer la réclamation'**
  String get newClaimSubmit;

  /// No description provided for @newClaimTypeLabel.
  ///
  /// In fr, this message translates to:
  /// **'Type de problème'**
  String get newClaimTypeLabel;

  /// No description provided for @newClaimBookingLabel.
  ///
  /// In fr, this message translates to:
  /// **'Réservation concernée'**
  String get newClaimBookingLabel;

  /// No description provided for @newClaimSubjectLabel.
  ///
  /// In fr, this message translates to:
  /// **'Objet'**
  String get newClaimSubjectLabel;

  /// No description provided for @newClaimSubjectHint.
  ///
  /// In fr, this message translates to:
  /// **'Résumez votre réclamation en quelques mots'**
  String get newClaimSubjectHint;

  /// No description provided for @newClaimDescriptionLabel.
  ///
  /// In fr, this message translates to:
  /// **'Description détaillée'**
  String get newClaimDescriptionLabel;

  /// No description provided for @newClaimDescriptionHint.
  ///
  /// In fr, this message translates to:
  /// **'Décrivez ce qui s\'est passé : circonstances, heure, conséquences…'**
  String get newClaimDescriptionHint;

  /// No description provided for @newClaimDescriptionHelper.
  ///
  /// In fr, this message translates to:
  /// **'10 caractères minimum.'**
  String get newClaimDescriptionHelper;

  /// No description provided for @newClaimFooter.
  ///
  /// In fr, this message translates to:
  /// **'Vous recevrez un suivi par SMS. Délai de traitement : 48–72 h.'**
  String get newClaimFooter;

  /// No description provided for @newClaimBookingsError.
  ///
  /// In fr, this message translates to:
  /// **'Impossible de charger vos réservations. Réessayez.'**
  String get newClaimBookingsError;

  /// No description provided for @newClaimNoBookingsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucune réservation'**
  String get newClaimNoBookingsTitle;

  /// No description provided for @newClaimNoBookingsMessage.
  ///
  /// In fr, this message translates to:
  /// **'Une réclamation se rattache à un voyage. Réservez d\'abord un trajet.'**
  String get newClaimNoBookingsMessage;

  /// No description provided for @newClaimThanksTitle.
  ///
  /// In fr, this message translates to:
  /// **'Réclamation envoyée'**
  String get newClaimThanksTitle;

  /// No description provided for @newClaimThanksMessage.
  ///
  /// In fr, this message translates to:
  /// **'Un conseiller instruira votre dossier et vous répondra sous 48–72 h.'**
  String get newClaimThanksMessage;

  /// No description provided for @newClaimBackToClaims.
  ///
  /// In fr, this message translates to:
  /// **'Voir mes réclamations'**
  String get newClaimBackToClaims;

  /// No description provided for @newClaimAttachmentLabel.
  ///
  /// In fr, this message translates to:
  /// **'Pièce jointe (facultatif)'**
  String get newClaimAttachmentLabel;

  /// No description provided for @newClaimAttachmentHint.
  ///
  /// In fr, this message translates to:
  /// **'PDF ou photo à l\'appui de votre réclamation, 10 Mo maximum.'**
  String get newClaimAttachmentHint;

  /// No description provided for @newClaimAttachmentAdd.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter un fichier'**
  String get newClaimAttachmentAdd;

  /// No description provided for @newClaimAttachmentChange.
  ///
  /// In fr, this message translates to:
  /// **'Changer de fichier'**
  String get newClaimAttachmentChange;

  /// No description provided for @newClaimAttachmentRemove.
  ///
  /// In fr, this message translates to:
  /// **'Retirer la pièce jointe'**
  String get newClaimAttachmentRemove;

  /// No description provided for @newClaimAttachmentTooLarge.
  ///
  /// In fr, this message translates to:
  /// **'Fichier trop volumineux. Choisissez un fichier de 10 Mo maximum.'**
  String get newClaimAttachmentTooLarge;

  /// No description provided for @newClaimAttachmentUnreadable.
  ///
  /// In fr, this message translates to:
  /// **'Impossible de lire ce fichier. Réessayez avec un autre.'**
  String get newClaimAttachmentUnreadable;

  /// Taille de fichier en kilo-octets
  ///
  /// In fr, this message translates to:
  /// **'{size} Ko'**
  String fileSizeKilobytes(String size);

  /// Taille de fichier en méga-octets
  ///
  /// In fr, this message translates to:
  /// **'{size} Mo'**
  String fileSizeMegabytes(String size);

  /// No description provided for @speedReportTitle.
  ///
  /// In fr, this message translates to:
  /// **'Signaler un excès de vitesse'**
  String get speedReportTitle;

  /// No description provided for @speedReportAnonymous.
  ///
  /// In fr, this message translates to:
  /// **'Signalement anonyme'**
  String get speedReportAnonymous;

  /// No description provided for @speedReportSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer le signalement'**
  String get speedReportSubmit;

  /// No description provided for @speedReportShieldTitle.
  ///
  /// In fr, this message translates to:
  /// **'100 % anonyme'**
  String get speedReportShieldTitle;

  /// No description provided for @speedReportShieldMessage.
  ///
  /// In fr, this message translates to:
  /// **'Aucune donnée personnelle n\'est transmise au chauffeur.'**
  String get speedReportShieldMessage;

  /// No description provided for @speedReportTimestamp.
  ///
  /// In fr, this message translates to:
  /// **'Horodatage'**
  String get speedReportTimestamp;

  /// No description provided for @speedReportLocation.
  ///
  /// In fr, this message translates to:
  /// **'Localisation'**
  String get speedReportLocation;

  /// No description provided for @speedReportLocationUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'Non activée'**
  String get speedReportLocationUnavailable;

  /// No description provided for @speedReportBusLabel.
  ///
  /// In fr, this message translates to:
  /// **'Bus / ligne concerné(e)'**
  String get speedReportBusLabel;

  /// No description provided for @speedReportBusHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex : Faso Express · Ouaga → Bobo'**
  String get speedReportBusHint;

  /// No description provided for @speedReportSeverityFieldLabel.
  ///
  /// In fr, this message translates to:
  /// **'Gravité estimée'**
  String get speedReportSeverityFieldLabel;

  /// No description provided for @speedReportSeverityLow.
  ///
  /// In fr, this message translates to:
  /// **'Faible'**
  String get speedReportSeverityLow;

  /// No description provided for @speedReportSeverityMedium.
  ///
  /// In fr, this message translates to:
  /// **'Moyenne'**
  String get speedReportSeverityMedium;

  /// No description provided for @speedReportSeverityHigh.
  ///
  /// In fr, this message translates to:
  /// **'Grave'**
  String get speedReportSeverityHigh;

  /// No description provided for @speedReportCommentLabel.
  ///
  /// In fr, this message translates to:
  /// **'Commentaire'**
  String get speedReportCommentLabel;

  /// No description provided for @speedReportCommentHint.
  ///
  /// In fr, this message translates to:
  /// **'Décrivez la situation : vitesse ressentie, dépassements dangereux…'**
  String get speedReportCommentHint;

  /// No description provided for @speedReportCommentHelper.
  ///
  /// In fr, this message translates to:
  /// **'10 caractères minimum.'**
  String get speedReportCommentHelper;

  /// No description provided for @speedReportThanksTitle.
  ///
  /// In fr, this message translates to:
  /// **'Merci pour votre vigilance'**
  String get speedReportThanksTitle;

  /// No description provided for @speedReportThanksMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre signalement a été transmis à la compagnie et aux services de sécurité routière. Il reste anonyme.'**
  String get speedReportThanksMessage;

  /// No description provided for @speedReportNewReport.
  ///
  /// In fr, this message translates to:
  /// **'Nouveau signalement'**
  String get speedReportNewReport;

  /// No description provided for @profileInfoSaved.
  ///
  /// In fr, this message translates to:
  /// **'Informations mises à jour.'**
  String get profileInfoSaved;

  /// No description provided for @profileFieldNoteName.
  ///
  /// In fr, this message translates to:
  /// **'Le nom complet n\'est pas modifiable ici.'**
  String get profileFieldNoteName;

  /// No description provided for @profilePersonalInfo.
  ///
  /// In fr, this message translates to:
  /// **'Informations personnelles'**
  String get profilePersonalInfo;

  /// No description provided for @profileFullName.
  ///
  /// In fr, this message translates to:
  /// **'Nom complet'**
  String get profileFullName;

  /// No description provided for @profilePhoneEditable.
  ///
  /// In fr, this message translates to:
  /// **'Téléphone · modifiable'**
  String get profilePhoneEditable;

  /// No description provided for @profileEmailEditable.
  ///
  /// In fr, this message translates to:
  /// **'E-mail · modifiable'**
  String get profileEmailEditable;

  /// No description provided for @profileSaveInfo.
  ///
  /// In fr, this message translates to:
  /// **'Enregistrer les modifications'**
  String get profileSaveInfo;

  /// No description provided for @profileNoChanges.
  ///
  /// In fr, this message translates to:
  /// **'Aucune modification'**
  String get profileNoChanges;

  /// No description provided for @profilePasswordTitle.
  ///
  /// In fr, this message translates to:
  /// **'Changer le mot de passe'**
  String get profilePasswordTitle;

  /// No description provided for @profilePasswordSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Utilisez au moins 8 caractères avec chiffres et lettres.'**
  String get profilePasswordSubtitle;

  /// No description provided for @profilePasswordSubmit.
  ///
  /// In fr, this message translates to:
  /// **'Mettre à jour le mot de passe'**
  String get profilePasswordSubmit;

  /// No description provided for @profileTabInfo.
  ///
  /// In fr, this message translates to:
  /// **'Informations'**
  String get profileTabInfo;

  /// No description provided for @profileTabHistory.
  ///
  /// In fr, this message translates to:
  /// **'Historique'**
  String get profileTabHistory;

  /// No description provided for @profileHistoryEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun voyage passé'**
  String get profileHistoryEmptyTitle;

  /// No description provided for @profileHistoryEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vos voyages effectués apparaîtront ici.'**
  String get profileHistoryEmptyMessage;

  /// No description provided for @profileTripCompleted.
  ///
  /// In fr, this message translates to:
  /// **'Effectué'**
  String get profileTripCompleted;

  /// No description provided for @profileTripCancelled.
  ///
  /// In fr, this message translates to:
  /// **'Annulé'**
  String get profileTripCancelled;

  /// No description provided for @profileHistoryTrips.
  ///
  /// In fr, this message translates to:
  /// **'Voyages passés'**
  String get profileHistoryTrips;

  /// No description provided for @profileHistoryPayments.
  ///
  /// In fr, this message translates to:
  /// **'Paiements'**
  String get profileHistoryPayments;

  /// No description provided for @profilePaymentsEmptyTitle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun paiement'**
  String get profilePaymentsEmptyTitle;

  /// No description provided for @profilePaymentsEmptyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vos paiements apparaîtront ici après votre première réservation.'**
  String get profilePaymentsEmptyMessage;

  /// Nombre de bagages enregistrés sur une réservation
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Aucun bagage} =1{1 bagage enregistré} other{{count} bagages enregistrés}}'**
  String baggageCount(int count);

  /// No description provided for @baggageTotalWeight.
  ///
  /// In fr, this message translates to:
  /// **'Poids total'**
  String get baggageTotalWeight;

  /// Référence d'une réclamation créée
  ///
  /// In fr, this message translates to:
  /// **'Réclamation n° {id}'**
  String newClaimReference(int id);

  /// Référence d'un signalement créé
  ///
  /// In fr, this message translates to:
  /// **'Référence n° {id}'**
  String speedReportReference(int id);
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
