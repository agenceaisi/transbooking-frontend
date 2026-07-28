# Demandes de complément d'API — issues de la phase 4A (Public & recherche)

> **But.** Fermer les 3 écarts entre le handoff validé et l'API réellement
> implémentée, relevés en construisant les écrans publics (Accueil, Résultats,
> Page compagnie, Suivi de colis). Chaque écran a été livré en **omettant** ce
> que l'API ne fournit pas (jamais d'invention, cf. CLAUDE.md §7). Les demandes
> ci-dessous **rétablissent** la maquette.
>
> **Toutes les modifications sont additives** (nouveaux champs en lecture seule) :
> elles n'invalident aucun contrat existant côté Flutter.
>
> Généré le 2026-07-22. Sources : `api/schema.yml`, `api/flutter_integration.md`.

---

## 1. Voyages : exposer la compagnie, la note et le type de trajet

### Endpoints concernés
- `GET /api/v1/trips/search/` → `TripRead` (paginé)
- `GET /api/v1/trips/{id}/` → `TripDetail` (= `TripRead` + `available_seat_numbers`)

> ⚠️ Ces deux vues partagent le sérialiseur `TripRead`. Le compléter les couvre
> toutes les deux — et prépare **la phase 4B** (détail trajet & réservation).

### Manque
`TripRead` porte aujourd'hui : `id, route, route_label, origin_city,
destination_city, vehicle, vehicle_registration, departure_time, arrival_time,
price, available_seats, status, status_display, created_at, updated_at`.

La maquette « Résultats » affiche par trajet : **le nom de la compagnie, sa
note en étoiles, et un badge Direct / *n* escale(s)**. Aucun de ces champs n'est
disponible → cartes actuellement bâties sans eux, filtres « compagnie / note /
direct-escale » **désactivés**.

### Champs demandés (lecture seule, dérivés de `trip.route`)

| Champ | Type | Nullable | Source côté serveur |
|---|---|---|---|
| `company` | `integer` | non | `trip.route.company_id` |
| `company_name` | `string` | non | `trip.route.company.name` |
| `company_sigle` | `string` | oui | `trip.route.company.sigle` |
| `company_rating` | `number(double)` | oui | note moyenne agrégée de la compagnie (comme `CompanyPublic.rating`) |
| `is_direct` | `boolean` | non | `trip.route.stops.count() == 0` |
| `stops_count` | `integer` | non | `trip.route.stops.count()` |
| `duration_minutes` | `integer` | oui | `trip.route.duration_minutes` (évite un calcul client quand `arrival_time` manque) |

### Exemple de réponse `TripRead` complétée
```jsonc
{
  "id": 7, "route": 3, "route_label": "Ouaga → Bobo",
  "origin_city": "Ouagadougou", "destination_city": "Bobo-Dioulasso",
  "vehicle": 12, "vehicle_registration": "BF-1234-A",
  "departure_time": "2026-07-22T06:30:00Z", "arrival_time": "2026-07-22T11:45:00Z",
  "price": "8500.00", "available_seats": 12,
  "status": "scheduled", "status_display": "Programmé",
  // ── nouveaux champs ──
  "company": 4, "company_name": "Faso Express", "company_sigle": "FE",
  "company_rating": 4.8, "is_direct": true, "stops_count": 0, "duration_minutes": 315,
  "created_at": "…", "updated_at": "…"
}
```

### Idéalement aussi (filtres serveur)
`GET /trips/search/` accepte déjà `origin_city, dest_city, date, passengers,
max_price, direct`. Ajouter **`company` (id)** et **`min_rating` (0–5)** en query
params permettrait de pousser ces filtres côté serveur plutôt que client.

### Impact Flutter (rebranchement une fois livré)
- `lib/features/public/data/public_mappers.dart` → `TripReadMapper.toEntity`
- `lib/features/public/domain/trip_result.dart` → ajouter les champs
- `lib/features/public/presentation/widgets/trip_result_card.dart` → afficher
  compagnie + note + badge direct/escale
- `results_filter_panel.dart` + `search_refine.dart` → réactiver les filtres
  compagnie / note (+ direct si non poussé au serveur)

---

## 2. Suivi de colis : typer `history` (et ajouter l'estimation de livraison)

### Endpoint concerné
`GET /api/v1/parcels/track/{tracking_number}/` → `ParcelTrack`

### Manque
`ParcelTrack.history` est typé `type: array, items: {}` — **aucune structure**.
drf-spectacular ne sait pas décrire les entrées → le DTO généré est
`List<dynamic>` inutilisable. La timeline de la maquette (étape, lieu,
horodatage, description) est actuellement **reconstruite à partir du seul
`status`** (5 étapes faite / en cours / à venir), sans lieux ni dates.

### À faire
Définir un sérialiseur **`ParcelHistoryEntry`** et le référencer dans
`ParcelTrack.history` (`items: $ref ParcelHistoryEntry`) :

| Champ | Type | Nullable | Remarque |
|---|---|---|---|
| `status` | `enum` (`Status62aEnum`) | non | étape atteinte |
| `status_display` | `string` | non | libellé FR |
| `location` | `string` | oui | ville / gare de l'événement |
| `timestamp` | `string(date-time)` | non | horodatage UTC de l'événement |
| `note` | `string` | oui | précision libre (« à bord du bus TB-4821 ») |

Champs `ParcelTrack` complémentaires utiles (bandeau « Livraison estimée » de la
maquette) :

| Champ | Type | Nullable |
|---|---|---|
| `current_location` | `string` | oui |
| `estimated_delivery` | `string(date-time)` | oui |

### Exemple
```jsonc
{
  "tracking_number": "COL2026000123",
  "status": "in_transit", "status_display": "En transit",
  "origin_city": "Ouagadougou", "destination_city": "Koudougou",
  "recipient_name": "Salif Kaboré", "recipient_phone": "****2109",
  "current_location": "Boromo", "estimated_delivery": "2026-07-08T13:45:00Z",
  "history": [
    { "status": "registered", "status_display": "Enregistré",
      "location": "Ouagadougou", "timestamp": "2026-07-06T09:12:00Z",
      "note": "Colis reçu au dépôt." },
    { "status": "in_transit", "status_display": "En transit",
      "location": "Boromo", "timestamp": "2026-07-08T07:40:00Z",
      "note": "À bord du bus TB-4821." }
  ]
}
```

### Impact Flutter
- `lib/features/public/domain/parcel_tracking.dart` → mapper `history` en
  entités + `estimated_delivery`
- `lib/features/public/presentation/widgets/parcel_timeline.dart` → afficher
  lieu + horodatage sous chaque étape (la dérivation par `status` reste le repli
  si `history` est vide)

---

## 3. Fiche compagnie publique : trajets desservis (et répartition des notes)

### Endpoint concerné
`GET /api/v1/public/companies/{id}/` → `CompanyPublicDetail`

### Manque
`CompanyPublicDetail` = `id, name, sigle, logo, description, city, rating, phone,
email, reviews`. **Aucune liste de trajets** → la section « Trajets desservis »
de la maquette est **omise**. De plus `reviews` renvoie `[]` (les avis sont
chargés séparément via `GET /reviews/?company_id=`, ce qui est OK).

### À faire

**a) Ajouter `routes`** — trajets actifs de la compagnie :

```jsonc
"routes": [
  { "id": 12, "origin_city_name": "Ouagadougou",
    "destination_city_name": "Bobo-Dioulasso",
    "base_price": "8500.00", "duration_minutes": 315 }
]
```
Champs par entrée : `id (int)`, `origin_city_name (str)`,
`destination_city_name (str)`, `base_price (decimal str)`,
`duration_minutes (int, nullable)`. Source : `company.routes.filter(is_active=True)`.

**b) (Recommandé) `rating_breakdown`** — répartition des notes 1→5 :
```jsonc
"rating_breakdown": { "5": 812, "4": 289, "3": 91, "2": 34, "1": 22 },
"reviews_count": 1248
```
Aujourd'hui le front **calcule** la répartition à partir de la 1ʳᵉ page d'avis
(`page_size=20`) → chiffres partiels. Un agrégat serveur donnerait la vraie
distribution et le vrai total.

### Impact Flutter
- `lib/features/public/domain/company_profile.dart` → ajouter `routes`,
  `ratingBreakdown`, `reviewsCount`
- `lib/features/public/presentation/screens/company_public_screen.dart` →
  rétablir la section « Trajets desservis » ; alimenter `_RatingCard` avec
  l'agrégat serveur au lieu de la page d'avis

---

## Récapitulatif / priorités

| # | Endpoint(s) | Effet handoff | Priorité |
|---|---|---|---|
| 1 | `trips/search`, `trips/{id}` (`TripRead`) | Cartes de résultat + réservation 4B complètes | **Haute** (bloque aussi 4B) |
| 2 | `parcels/track/{n}` (`ParcelTrack.history`) | Timeline colis détaillée | Moyenne |
| 3 | `public/companies/{id}` (`CompanyPublicDetail`) | Section trajets + note fiable | Moyenne |

> Tant que ces champs ne sont pas livrés, **le front reste sur son comportement
> actuel** (omission assumée) : aucun écran ne casse, aucun endpoint fictif n'est
> appelé. Le rebranchement se fera aux points listés ci-dessus, écran par écran.
