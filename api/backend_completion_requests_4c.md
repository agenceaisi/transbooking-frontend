# Demandes de complément d'API — issues de la phase 4C (Espace voyageur)

> **But.** Fermer les écarts entre le handoff validé et l'API réellement
> implémentée, relevés en construisant l'espace voyageur authentifié (Tableau de
> bord, Mes réservations & Billet, Bagages, Déposer un avis, Réclamations,
> Signalement d'excès de vitesse, Mon profil). Chaque écran a été livré en
> **omettant / contournant** ce que l'API ne fournit pas (jamais d'invention,
> cf. CLAUDE.md §7). Les demandes ci-dessous **rétablissent** la maquette et
> fiabilisent les parcours de création.
>
> **Toutes les modifications sont additives** (champs de lecture, nouvel endpoint,
> champ optionnel en écriture) : elles n'invalident aucun contrat existant côté
> Flutter — le front continue de fonctionner tel quel tant qu'elles ne sont pas
> livrées.
>
> Généré le 2026-07-23. Sources : `api/schema.yml`, `api/flutter_integration.md`.
> Fait suite à `api/backend_completion_requests.md` (phase 4A).

---

## 1. Créations : renvoyer le sérialiseur de **lecture** (avec `id` + statut)

### Endpoints concernés
- `POST /api/v1/claims/` → répond aujourd'hui `ClaimCreate`
- `POST /api/v1/reviews/` → répond aujourd'hui `ReviewCreate`
- `POST /api/v1/speed-reports/` → répond aujourd'hui `SpeedReportCreate`

### Manque
Ces trois `POST` renvoient le **sérialiseur d'écriture** (un simple écho du corps
envoyé) au lieu du sérialiseur de lecture. Conséquences :

- **Pas d'`id` ni de référence** dans la réponse → l'écran de confirmation de la
  maquette (« Réclamation **RC-0231** envoyée », « Signalement **SG-7734** »,
  avis enregistré) ne peut afficher **aucun numéro de suivi**. Le front affiche
  donc une confirmation générique, sans référence.
- **Pas de statut initial** (`submitted`, `pending`) renvoyé → impossible de
  basculer directement sur le détail de l'objet créé ; le front doit
  **réinvalider la liste** (`GET /claims/`) pour le retrouver.

### À faire
Faire répondre chaque `POST` avec son sérialiseur de **lecture** (déjà défini) :

| Endpoint | Réponse actuelle | Réponse demandée |
|---|---|---|
| `POST /claims/` | `ClaimCreate` (201) | **`ClaimRead`** (201) |
| `POST /reviews/` | `ReviewCreate` (201) | **`ReviewRead`** (201) |
| `POST /speed-reports/` | `SpeedReportCreate` (201) | **`SpeedReportRead`** (201) |

> Note : `POST /bookings/{id}/cancel/` renvoie déjà correctement `BookingRead` —
> **rien à changer** de ce côté (seul son *requestBody* documenté est un artefact
> drf-spectacular ; le serveur n'attend bien que `{ "reason": "..." }`, guide §6.7).

### Exemple — `POST /claims/` → `ClaimRead`
```jsonc
{
  "id": 231, "company": 4, "company_name": "Faso Express",
  "booking": 55, "ticket_number": "TB-4821-BF",
  "claim_type": "retard", "claim_type_display": "Retard",
  "subject": "Bus parti en retard", "description": "…",
  "status": "submitted", "status_display": "Soumise",
  "response": null, "responded_at": null, "is_overdue": false,
  "created_at": "2026-07-23T09:12:00Z", "updated_at": "2026-07-23T09:12:00Z"
}
```

### Impact Flutter (rebranchement une fois livré)
- `claim_remote_data_source.dart` / `feedback_remote_data_source.dart` → lire la
  réponse `*Read` au lieu d'ignorer le corps
- Écrans de confirmation (`new_claim_screen`, `review_screen`,
  `speed_report_screen`) → afficher la **référence** renvoyée
- `claim_submit_controller` → pourrait pousser directement l'objet créé dans la
  liste plutôt que réinvalider

---

## 2. Signalement d'excès de vitesse : champ `severity` structuré

### Endpoint concerné
`POST /api/v1/speed-reports/` → `SpeedReportCreate` / `SpeedReportRead`

### Manque
La maquette « Signalement excès de vitesse » fait choisir une **gravité estimée**
(*Faible / Moyenne / Grave*). `SpeedReportCreate` ne porte que `estimated_speed`
(entier km/h, que le voyageur ne connaît pas). Faute de champ dédié, le front
**replie la gravité dans le texte de `description`** → donnée non exploitable en
base pour la compagnie / le super admin.

### À faire
Ajouter un champ **`severity`** (enum, optionnel) sur `SpeedReportCreate` **et**
`SpeedReportRead` :

| Champ | Type | Nullable | Valeurs |
|---|---|---|---|
| `severity` | `enum` | oui | `low` · `medium` · `high` |
| `severity_display` | `string` (lecture) | oui | « Faible » · « Moyenne » · « Grave » |

`estimated_speed` reste optionnel (aucun changement).

### Impact Flutter
- `feedback_repository.dart` / `feedback_remote_data_source.dart` → envoyer
  `severity` au lieu de le concaténer dans la description
- `speed_report_screen.dart` → les puces Faible/Moyenne/Grave alimentent le champ

---

## 3. Billet : exposer le **nom de la compagnie** sur la réservation

### Endpoint concerné
`GET /api/v1/bookings/{id}/` (et `GET /api/v1/bookings/`) → `BookingRead.trip`
(`TripSummary`)

### Manque
`TripSummary` = `id, origin_city, destination_city, departure_time,
arrival_time, status`. **Aucune compagnie.** La carte de billet de la maquette
(« Mon billet ») affiche l'en-tête compagnie (logo/sigle + nom + « BUS VIP
CLIMATISÉ »). Le front livre donc le billet **sans nom de compagnie** (trajet, QR,
siège, montant seulement).

### À faire (additif sur `TripSummary`)

| Champ | Type | Nullable | Source |
|---|---|---|---|
| `company_name` | `string` | non | `trip.route.company.name` |
| `company_sigle` | `string` | oui | `trip.route.company.sigle` |

*(Optionnel — autres cases « méta » du billet, si elles existent en base :*
`vehicle_class`/`classe` *et* `platform`/`quai`. *Sinon, les omettre reste
acceptable.)*

### Impact Flutter
- `traveler_mappers.dart` → `BookingReadTravelerMapper` : mapper `company_name`
- `ticket_card.dart` → afficher l'en-tête compagnie (monogramme + nom)

---

## 4. Profil : historique des **paiements** du voyageur

### Endpoint concerné
Aucun aujourd'hui. `GET /api/v1/payments/{id}/` existe (détail unitaire) mais
**pas de liste** « mes paiements ».

### Manque
L'onglet « Historique » de la maquette « Mon profil » a deux sous-onglets :
**Voyages passés** (déjà faisable via `GET /bookings/`, départ passé) et
**Paiements** (référence, moyen, date, montant). Ce second sous-onglet est
**omis** faute d'endpoint.

### À faire
Exposer une **liste paginée des paiements du voyageur courant**, p. ex.
`GET /api/v1/payments/` (filtrée sur l'utilisateur) — items dérivés de
`PaymentRead` (déjà défini : `id, ticket_number, amount, method, method_display,
status, status_display, transaction_ref (masqué), paid_at, created_at`).

### Impact Flutter
- Nouveau data source/repo « paiements voyageur » + provider
- `profile_screen.dart` → rétablir le sous-onglet « Paiements »

---

## 5. (Optionnel) Bagages voyageur

### Manque
Aucun endpoint bagages voyageur. `BookingRead` ne porte pas non plus de liste de
bagages. L'écran « Bagages » de la maquette montre les **bagages enregistrés**
(valise, sac à dos, étiquette, poids, statut soute/cabine) + un **poids total**.
Le front livre donc l'écran en contenu **statique** (règles de transport + grille
de frais indicative), sans les bagages réels.

### À faire (si le produit le souhaite — sinon garder le statique)
Deux pistes additives, au choix :

**a)** Ajouter un tableau `baggage[]` en lecture sur `BookingRead` :
```jsonc
"baggage": [
  { "id": 1, "label": "Valise rigide", "tag": "TB-B-1042",
    "weight_kg": "18.0", "location": "hold", "location_display": "En soute" }
]
```
**b)** Ou un endpoint dédié `GET /api/v1/bookings/{id}/baggage/`.

*Les tarifs bagages, eux, sont déjà configurés côté compagnie (§6B) : les exposer
en lecture au voyageur (prix/kg, hors-gabarit…) remplacerait la grille statique
actuelle par des montants réels — souhaitable au regard de CLAUDE.md §13 (« les
montants viennent de l'API »).*

### Impact Flutter
- `baggage_screen.dart` → remplacer le bloc statique par les bagages réels + poids
  total + tarifs de la compagnie

---

## 6. (Optionnel) Pièce jointe de réclamation

### Manque
La maquette « Nouvelle réclamation » propose une **pièce jointe** (photo/reçu/PDF,
10 Mo max). `ClaimCreate` n'a aucun champ fichier → l'upload est **omis**.

### À faire (si retenu)
Soit un champ `attachment` (`multipart/form-data`) sur `POST /claims/`, soit un
endpoint `POST /claims/{id}/attachment/`. À définir avec le stockage fichiers.

### Impact Flutter
- `new_claim_screen.dart` → rétablir la zone d'upload (nécessitera aussi un
  package de sélection de fichier, à valider — CLAUDE.md §2)

---

## Récapitulatif / priorités

| # | Endpoint(s) | Effet handoff | Priorité |
|---|---|---|---|
| 1 | `POST claims` / `reviews` / `speed-reports` → sérialiseur Read | Référence de suivi dans les confirmations | **Haute** |
| 2 | `speed-reports` : champ `severity` | Gravité exploitable en base | Moyenne |
| 3 | `TripSummary.company_name` | En-tête compagnie du billet | Moyenne |
| 4 | Liste `payments` du voyageur | Sous-onglet « Paiements » du profil | Basse |
| 5 | Bagages réels + tarifs | Bagages enregistrés (vs statique) | Basse (optionnel) |
| 6 | Pièce jointe réclamation | Upload de réclamation | Basse (optionnel) |

> Tant que ces éléments ne sont pas livrés, **le front reste sur son comportement
> actuel** (omission / contournement assumés, documentés dans la mémoire projet) :
> aucun écran ne casse, aucun endpoint fictif n'est appelé. Le rebranchement se
> fera aux points listés ci-dessus, écran par écran.
