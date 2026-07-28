# TransBooking BF — Frontend Flutter

Plateforme de réservation de transport de voyageurs et d'envoi de colis au
Burkina Faso, en marque blanche pour plusieurs compagnies. Cible **Web + iOS +
Android** depuis une seule base de code.

> **État actuel :** phase 1 « Fondations » livrée — design system, configuration
> d'environnement, couche réseau JWT, DTO générés depuis le contrat d'API, base
> locale Drift, routeur avec gardes par rôle et composants partagés. **Aucun
> écran métier** n'est encore construit : les espaces par rôle sont des coquilles.

Les règles du projet font foi dans [CLAUDE.md](CLAUDE.md). Les phases suivantes
sont décrites dans [PROMPTS.md](PROMPTS.md).

---

## 🚀 Démarrage

Pré-requis : **Flutter 3.44+** (canal stable, Dart 3.12+).

```bash
flutter pub get
dart run tool/generate_dto.dart          # DTO depuis api/schema.yml
dart run build_runner build              # freezed, json_serializable, riverpod, drift
flutter run --dart-define=ENV=dev        # mobile / émulateur
flutter run -d chrome --dart-define=ENV=dev

flutter run -d chrome --web-port=3000 --dart-define=ENV=dev # ou port=8000


# Sur téléphone physique
flutter run --dart-define=ENV=dev --dart-define=API_BASE_URL=http://192.168.1.68:8000

```

L'URL du serveur est résolue par `AppConfig` :

| Environnement | URL |
|---|---|
| `dev` — émulateur Android | `http://10.0.2.2:8000` |
| `dev` — iOS / Web / Desktop | `http://localhost:8000` |
| `dev` — appareil physique | `--dart-define=API_BASE_URL=http://<IP_LAN>:8000` |
| `staging` / `prod` | `--dart-define=API_BASE_URL=…` **obligatoire** |

Aucune URL n'est écrite en dur : un build `staging`/`prod` sans `API_BASE_URL`
échoue au démarrage avec un message explicite.

---

## 🏗️ Architecture

**Feature-first**, trois couches par feature (`data/` · `domain/` ·
`presentation/`). La présentation ne parle jamais directement à dio ou Drift :
elle passe par un repository exposé via un provider Riverpod.

```
lib/
├── main.dart · app.dart
├── core/
│   ├── config/      AppConfig (--dart-define=ENV)
│   ├── theme/       design system centralisé (§4 du CLAUDE.md)
│   ├── router/      go_router + gardes par rôle
│   ├── network/     dio, intercepteur JWT/refresh, mapping des erreurs
│   ├── storage/     Drift (cache + outbox), jetons en coffre sécurisé
│   ├── sync/        état de connexion (le moteur de synchro viendra ici)
│   ├── error/       Failure et messages traduits
│   ├── api/dto/     DTO GÉNÉRÉS — ne pas éditer
│   └── widgets/     composants partagés
├── features/        auth · public · traveler · agent · company_admin · super_admin
└── l10n/            app_fr.arb (défaut) + classes générées
```

### Règle d'or : zéro couleur, taille ou chaîne en dur

```dart
import 'package:transbooking_bf/core/theme/app_theme.dart';

color: AppColors.primary,                       // ✅ jamais Color(0xFF0F6E6E)
style: AppTextStyles.sectionTitle,              // ✅ échelle nommée
padding: const EdgeInsets.all(AppSpacing.md),
final palette = AppStatusColors.of(StatusType.warning);  // 4 tons cohérents
Text(context.l10n.actionRetry)                  // ✅ jamais un texte littéral
```

### Régénérer après une mise à jour de l'API

```bash
dart run tool/generate_dto.dart   # relit api/schema.yml
dart run build_runner build
```

---

## ✅ Qualité

```bash
flutter analyze     # doit rester sans warning
flutter test        # doit rester au vert
dart format .
```

La couverture porte en priorité sur l'authentification (injection du jeton,
rafraîchissement unique sur 401, perte de session), les gardes de navigation par
rôle, le schéma local hors ligne et les composants partagés.

---

## 📦 Builds

```bash
flutter build web       --dart-define=ENV=prod --dart-define=API_BASE_URL=https://…
flutter build apk       --dart-define=ENV=prod --dart-define=API_BASE_URL=https://…
flutter build appbundle --dart-define=ENV=prod --dart-define=API_BASE_URL=https://…
```

> **Web + Drift** : la base locale s'appuie sur SQLite compilé en WebAssembly.
> Déposer `sqlite3.wasm` et `drift_worker.js` dans `web/` avant de servir
> l'application sur navigateur, sinon l'ouverture de la base échoue à
> l'exécution. Voir la documentation de `drift_flutter`.
