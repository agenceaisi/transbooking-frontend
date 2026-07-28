# Demandes de complément d'API — Tableau de bord agent (guichet/contrôleur)

> **But.** Fermer un écart relevé en construisant la recherche rapide et le
> filtre véhicule du tableau de bord agent (« Prochains départs » +
> recherche passager) : ni `TripRead` ni `OfflineTrip` ne portent le
> **type** de véhicule, alors que la maquette catégorise les voyages en
> Standard / VIP / VVIP. Contournement en place : filtre par
> **immatriculation** (donnée réelle, déjà exposée) plutôt qu'un type
> inventé (CLAUDE.md §7).
>
> Généré le 2026-07-28. Sources : `api/schema.yml`, `api/flutter_integration.md`.

---

## 1. Voyages du jour : exposer le **type de véhicule**

### Endpoints concernés
- `GET /api/v1/agent/trips/today/` → `TripRead[]`
- `GET /api/v1/agent/offline-data/` → `AgentOfflineData.trips[]` (`OfflineTrip`)
- `GET /api/v1/agent/dashboard/` → `AgentDashboard.next_departures[]`

### Manque
`Vehicle.vehicle_type` existe déjà (`string`, libre — pas un enum fixé côté
serveur) mais **uniquement** sur `GET /api/v1/company/vehicles/`, réservé au
`company_admin`. Aucun schéma de voyage exposé à l'agent (`TripRead`,
`OfflineTrip`, `AgentDashboard.next_departures[]`) ne le propage. Le tableau
de bord agent (guichet et contrôleur) ne peut donc ni **afficher** ni
**filtrer** les voyages par Standard/VIP/VVIP.

### Contournement actuel (Flutter)
- « Prochains départs » (dashboard) et « Programme du jour » filtrent par
  **immatriculation** du véhicule (`vehicle_registration`), seule donnée
  réelle disponible — pas par type.
- La recherche rapide de passager (dashboard) fait de même.

### À faire (additif)

| Champ | Type | Nullable | Source côté serveur |
|---|---|---|---|
| `vehicle_type` | `string` | oui | `trip.vehicle.vehicle_type` |

*(Propager le même champ que `Vehicle.vehicle_type` — pas de nouvel enum à
créer ; la valeur libre saisie par le `company_admin` suffit à l'affichage.)*

### Exemple — `TripRead` complété
```jsonc
{
  "id": 42,
  "origin_city": "Ouagadougou", "destination_city": "Bobo-Dioulasso",
  "vehicle": 7, "vehicle_registration": "BF-1234-A",
  // ── nouveau champ ──
  "vehicle_type": "VIP",
  "departure_time": "2026-07-28T08:30:00Z",
  "price": "6000.00", "available_seats": 12
}
```

### Impact Flutter (rebranchement une fois livré)
- `AgentTrip` (`agent_trip.dart`) et `AgentDeparture` (`agent_dashboard.dart`)
  → ajouter `vehicleType`
- `AgentPassengerSearchResult` (`agent_passenger_search_result.dart`) → idem
- `CachedTrips` (Drift, `cache_tables.dart`) → colonne `vehicleType` nullable
- `next_departures_card.dart`, `agent_schedule_screen.dart`,
  `agent_quick_search_card.dart` → filtre + badge par **type**, en
  complément (pas en remplacement) du filtre immatriculation existant

---

## Récapitulatif / priorité

| # | Champ ajouté | Endpoints | Effet | Priorité |
|---|---|---|---|---|
| 1 | `vehicle_type` | `TripRead`, `OfflineTrip`, `AgentDashboard.next_departures[]` | Badge + filtre Standard/VIP/VVIP sur le tableau de bord agent | Moyenne |

> Tant que ce champ n'est pas livré, le front reste sur le filtre par
> immatriculation : aucun écran ne casse, aucune valeur n'est inventée.
