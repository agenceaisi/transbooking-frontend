# Demandes de complément d'API — Tableau de bord voyageur (mobile)

> **But.** Fermer les écarts entre le handoff mobile validé (« Tableau de bord
> voyageur ») et l'API réellement implémentée, relevés en recréant l'écran au
> pixel. L'écran a été livré en **dérivant / contournant / omettant** ce que
> `GET /dashboard/traveler/` ne fournit pas (jamais d'invention, cf. CLAUDE.md §7).
> Les demandes ci-dessous **rétablissent** la maquette et rendraient le tableau
> de bord **autosuffisant** (un seul appel).
>
> **Toutes les modifications sont additives** (champs de lecture seule) : elles
> n'invalident aucun contrat existant côté Flutter — le front continue de
> fonctionner tel quel tant qu'elles ne sont pas livrées.
>
> Généré le 2026-07-24. Sources : `api/schema.yml`, `api/flutter_integration.md`.
> Fait suite à `api/backend_completion_requests.md` (4A) et
> `api/backend_completion_requests_4c.md` (4C).

---

## 1. Prochains voyages : exposer le **nom de la compagnie**

### Endpoint concerné
`GET /api/v1/dashboard/traveler/` → `TravelerDashboard.next_trips[]` (`TravelerNextTrip`)

### Manque
`TravelerNextTrip` porte aujourd'hui : `ticket_number, origin, destination,
departure_time, seat_number, status`. **Aucune compagnie.** La maquette affiche
sous chaque trajet « **08:30 · Faso Express** » (heure · compagnie). Faute du
champ, le front affiche « **08:30 · Siège 1A** » (heure · siège, donnée réelle
disponible) — informatif mais différent du handoff.

### À faire (additif sur `TravelerNextTrip`)

| Champ | Type | Nullable | Source côté serveur |
|---|---|---|---|
| `company_name` | `string` | non | `trip.route.company.name` |
| `company_sigle` | `string` | oui | `trip.route.company.sigle` |

*(`TripRead`/`TripSummary` portent déjà ces champs depuis les phases 4A/4C : il
s'agit de les propager au sérialiseur du tableau de bord.)*

### Exemple — `next_trips[]` complété
```jsonc
{
  "ticket_number": "TB-4821-BF",
  "origin": "Ouaga", "destination": "Bobo",
  "departure_time": "2026-07-10T08:30:00Z",
  "seat_number": "1A", "status": "paid",
  // ── nouveaux champs ──
  "company_name": "Faso Express", "company_sigle": "FE"
}
```

### Impact Flutter (rebranchement une fois livré)
- `traveler_dashboard_summary.dart` → ajouter `companyName` à `TravelerTripPreview`
- `traveler_dashboard_remote_data_source.dart` / mapper DTO → mapper `company_name`
- `traveler_dashboard_screen.dart` (`_TripRow`) → afficher « HH:MM · Compagnie »
  (au lieu de « HH:MM · Siège X »)

---

## 2. Notifications : exposer le **type** (pour l'icône et la couleur)

### Endpoint concerné
`GET /api/v1/dashboard/traveler/` → `TravelerDashboard.recent_notifications[]`
(`NotificationSummary`)

### Manque
`NotificationSummary` porte : `id, title, body, is_read, created_at`. **Aucun
type.** La maquette montre une **icône typée et colorée** par notification :
billet confirmé (billet, vert), colis en transit (colis, bleu), départ retardé
(cloche, orange). Faute de type, le front affiche une **icône neutre unique**
(pas de couleur par catégorie inventée).

### À faire (additif sur `NotificationSummary`)

| Champ | Type | Nullable | Valeurs (indicatives) |
|---|---|---|---|
| `type` | `enum` | non | `booking` · `payment` · `parcel` · `trip` · `claim` · `system` |
| `type_display` | `string` (lecture) | oui | libellé FR, si utile |

> Le **mapping icône + couleur** reste **côté Flutter** (design system) : seule la
> **valeur technique** `type` est attendue de l'API (jamais un libellé d'affichage,
> cf. CLAUDE.md §5). L'ensemble des valeurs possibles doit être **figé et documenté**
> pour un mapping exhaustif (une valeur inconnue retombera sur l'icône neutre).

### Exemple — `recent_notifications[]` complété
```jsonc
{
  "id": 90, "type": "booking",
  "title": "Billet confirmé — Ouaga → Bobo",
  "body": "Votre billet QR a été envoyé par SMS.",
  "is_read": false, "created_at": "2026-07-08T18:28:00Z"
}
```

### Impact Flutter
- `traveler_dashboard_summary.dart` → ajouter `type` à `TravelerNotificationPreview`
- `traveler_dashboard_screen.dart` (`_NotificationRow`) → mapper `type` → icône +
  palette de statut (billet/vert, colis/bleu, retard/orange…)

---

## 3. (Optionnel) Statut des billets : compteurs `paid` et `cancelled`

### Endpoint concerné
`GET /api/v1/dashboard/traveler/` → `TravelerDashboard`

### Manque
`TravelerDashboard` porte `active_bookings_count` et `pending_count`, mais **ni le
nombre de billets payés, ni le nombre d'annulés**. La maquette affiche une carte
« Statut des billets » à trois compteurs **Payé / En attente / Annulé**.

**Contournement déjà en place :** le front **dérive les trois compteurs** de la
liste réelle des réservations (`GET /bookings/`, `myBookingsProvider`) — données
réelles, jamais inventées. Coût : **un appel supplémentaire** à l'ouverture du
tableau de bord.

### À faire (additif — supprime l'appel supplémentaire)

| Champ | Type | Nullable | Source |
|---|---|---|---|
| `paid_count` | `integer` | non | réservations du voyageur au statut `paid` |
| `cancelled_count` | `integer` | non | statut `cancelled` **+** `refunded` |

*(`pending_count` existe déjà et alimente « En attente ».)*

### Exemple — `TravelerDashboard` complété
```jsonc
{
  "active_bookings_count": 3,
  "pending_count": 1,
  // ── nouveaux champs ──
  "paid_count": 5,
  "cancelled_count": 1,
  "next_trips": [ /* … */ ],
  "recent_notifications": [ /* … */ ]
}
```

### Impact Flutter
- `traveler_dashboard_summary.dart` → ajouter `paidCount` / `cancelledCount`
- `traveler_dashboard_screen.dart` (`_TicketStatusCard`) → lire ces compteurs au
  lieu de dériver de `myBookingsProvider` → **un appel réseau en moins**

---

## Récapitulatif / priorités

| # | Champ(s) ajouté(s) | Sérialiseur | Effet handoff | Priorité |
|---|---|---|---|---|
| 1 | `company_name`, `company_sigle` | `TravelerNextTrip` | « HH:MM · Compagnie » sous chaque trajet | Moyenne |
| 2 | `type` (+ `type_display`) | `NotificationSummary` | Icônes de notifications typées & colorées | Moyenne |
| 3 | `paid_count`, `cancelled_count` | `TravelerDashboard` | Carte « Statut des billets » sans appel `/bookings/` | Basse (optionnel) |

> Tant que ces champs ne sont pas livrés, **le front reste sur son comportement
> actuel** (dérivation `/bookings/` pour le statut, siège au lieu de la compagnie,
> icône de notification neutre) : aucun écran ne casse, aucun endpoint fictif n'est
> appelé. Le rebranchement se fera aux points listés ci-dessus.
