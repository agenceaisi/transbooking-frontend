# Demandes de complément d'API — Phase 5A (socle hors ligne & synchronisation)

> **But.** Fermer les écarts entre `api/flutter_integration.md` §6.15 (guide
> d'intégration, qui décrit le comportement réel voulu) et `api/schema.yml`
> (généré par drf-spectacular, incomplet sur ces vues custom), relevés en
> construisant le moteur de synchronisation hors ligne de l'agent. Le front a
> été livré en **suivant le guide** partout où il contredit le schéma
> (CLAUDE.md §0 : « en cas de doute, le schéma l'emporte » — sauf quand il est
> manifestement incomplet, ce qui est le cas ici) et en lisant les deux réponses
> concernées **à la main**, hors du dossier `core/api/dto/` généré
> (`lib/features/agent/data/agent_sync_models.dart`).
>
> **Aucune régression à craindre** : ces corrections **documentent/typent**
> correctement des réponses déjà envoyées telles quelles par l'API — elles ne
> changent aucun contrat de fait, seulement sa description dans le schéma
> OpenAPI (et donc la génération de DTO côté client, une fois faite).
>
> Généré le 2026-07-25. Sources : `api/schema.yml`, `api/flutter_integration.md`.

---

## 1. `GET /agent/offline-data/` : typer la réponse `{ trips, bookings, parcel_arrivals }`

### Endpoint concerné
`GET /api/v1/agent/offline-data/` (`operationId: v1_agent_offline_data_retrieve`)

### Manque
Le schéma déclare la réponse 200 comme un objet **`OfflineTrip`** unique (probablement
un artefact drf-spectacular qui a pris le type du premier élément d'une des trois
listes internes). Le guide §6.15 documente la vraie forme :

```jsonc
{
  "trips": [ { "id", "origin_city", "destination_city", "departure_time",
               "available_seats", "vehicle", "seat_plan", "status" } ],
  "bookings": [ { "ticket_number", "trip_id", "passenger_name", "phone",
                  "seat_number", "qr_code", "status" } ],
  "parcel_arrivals": [ { "tracking_number", "recipient_name", "recipient_phone",
                         "destination_city", "status" } ]
}
```

`trips[]` correspond déjà, champ pour champ, au schéma nommé `OfflineTrip` — il
suffit de le référencer dans un objet enveloppe. **`bookings[]` et
`parcel_arrivals[]` n'ont aucun schéma nommé.**

### À faire
Déclarer un schéma **`AgentOfflineData`** et l'utiliser comme réponse 200 :

```yaml
AgentOfflineData:
  type: object
  properties:
    trips:
      type: array
      items:
        $ref: '#/components/schemas/OfflineTrip'
    bookings:
      type: array
      items:
        $ref: '#/components/schemas/OfflineDataBooking'   # à créer
    parcel_arrivals:
      type: array
      items:
        $ref: '#/components/schemas/OfflineDataParcelArrival'   # à créer
  required: [trips, bookings, parcel_arrivals]

OfflineDataBooking:
  type: object
  properties:
    ticket_number: { type: string }
    trip_id: { type: integer }
    passenger_name: { type: string }
    phone: { type: string, nullable: true }
    seat_number: { type: string, nullable: true }
    qr_code: { type: string, nullable: true }
    status: { type: string, nullable: true }
  required: [ticket_number, trip_id, passenger_name]

OfflineDataParcelArrival:
  type: object
  properties:
    tracking_number: { type: string }
    recipient_name: { type: string }
    recipient_phone: { type: string, nullable: true }
    destination_city: { type: string, nullable: true }
    status: { type: string, nullable: true }
  required: [tracking_number, recipient_name]
```

### Impact Flutter (une fois livré)
- Régénérer les DTO (`dart run tool/generate_dto.dart` + `build_runner`).
- Supprimer `AgentOfflineDataPayload`, `OfflineDataBooking`, `OfflineDataParcelArrival`
  écrits à la main dans `lib/features/agent/data/agent_sync_models.dart` — remplacer
  par les DTO générés dans `AgentSyncRemoteDataSource.offlineData()`.

---

## 2. `POST /agent/sync/` : typer la réponse `{ synced, conflicts, errors }`

### Endpoint concerné
`POST /api/v1/agent/sync/` (`operationId: v1_agent_sync_create`)

### Manque
Le schéma déclare la réponse 200 comme un **`SyncPayload`** — c'est le schéma du
**corps de la requête** (artefact drf-spectacular : la vue ne déclare pas de
`serializer_class` de sortie distinct). Le guide §6.15 documente la vraie forme :

```jsonc
{
  "synced": { "bookings": 3, "parcels": 1, "validations": 5 },
  "conflicts": [ /* SyncConflict[] — déjà typé, même schéma que sync/conflicts/ */ ],
  "errors": [ /* forme non documentée */ ]
}
```

### À faire

**a) Schéma `AgentSyncResult`** pour la réponse 200 :

```yaml
AgentSyncResult:
  type: object
  properties:
    synced:
      type: object
      properties:
        bookings: { type: integer }
        parcels: { type: integer }
        validations: { type: integer }
      required: [bookings, parcels, validations]
    conflicts:
      type: array
      items:
        $ref: '#/components/schemas/SyncConflict'
    errors:
      type: array
      items:
        $ref: '#/components/schemas/AgentSyncError'   # voir (b)
  required: [synced, conflicts, errors]
```

**b) Documenter la forme exacte de `errors[]`.** C'est le manque le plus
bloquant : le guide dit seulement « éléments rejetés », sans détail. Le front
lit aujourd'hui chaque entrée **de façon défensive** — `reference` tentée via
`reference` / `ticket_number` / `tracking_number`, message via `detail` /
`error` / `message` — pour ne pas planter si la forme réelle diffère, mais
**cette lecture n'est pas garantie juste**. Merci de confirmer/fixer la forme
réellement envoyée, par exemple :

```jsonc
{ "reference": "BF2026000042", "entity": "booking", "detail": "Voyage complet." }
```

**c) Préciser la sémantique de `SyncConflict.resolved`.** Le guide qualifie
`conflicts[]` de « conflits résolus » (au pluriel, globalement), mais chaque
entrée porte aussi un champ `resolved` (booléen, nullable). Le front applique
aujourd'hui la règle suivante, faute de spec précise :
- une entrée de `conflicts[]` compte comme **traitée avec succès** (l'écriture
  locale part en `synced`) sauf si `resolved == false` **explicitement**, auquel
  cas elle part en `failed` avec `resolution` comme message affiché à l'agent ;
- pour un `seat_conflict` traité avec succès, le champ `assigned_seat` est
  utilisé pour corriger le siège localement (modale « billet corrigé », côté
  Flutter phase 5B).

Merci de confirmer que cette lecture est correcte, en particulier : **un
`trip_full` ou `invalid` apparaît-il dans `conflicts[]` (avec `resolved: false`)
ou dans `errors[]` ?** Le guide range les cinq valeurs de `ConflictTypeEnum`
(`seat_conflict`, `trip_full`, `trip_unavailable`, `duplicate`, `invalid`) sous
le même schéma `SyncConflict`, ce qui suggère qu'elles vivent toutes dans
`conflicts[]` — mais certaines (`trip_full`, `invalid`) semblent être de vrais
rejets plutôt que des résolutions.

### Exemple — réponse complétée

```jsonc
{
  "synced": { "bookings": 2, "parcels": 1, "validations": 0 },
  "conflicts": [
    { "id": 501, "entity": "booking", "conflict_type": "seat_conflict",
      "conflict_type_display": "Conflit de siège", "reference": "BF2026000041",
      "original_seat": "12", "assigned_seat": "18",
      "resolution": "Siège réattribué automatiquement.", "resolved": true,
      "created_at": "2026-07-25T08:31:00Z" },
    { "id": 502, "entity": "booking", "conflict_type": "trip_full",
      "conflict_type_display": "Voyage complet", "reference": "BF2026000043",
      "resolution": "Voyage complet, réservation impossible.", "resolved": false,
      "created_at": "2026-07-25T08:31:00Z" }
  ],
  "errors": [
    { "reference": "COL2026000012", "entity": "parcel",
      "detail": "Ville de destination inconnue." }
  ]
}
```

### Impact Flutter (une fois livré)
- Régénérer les DTO ; supprimer `AgentSyncResult`, `AgentSyncItemError` écrits à
  la main dans `agent_sync_models.dart` — remplacer par le DTO généré dans
  `AgentSyncRemoteDataSource.sync()`.
- `AgentSyncRepositoryImpl._applyResult` → simplifier la lecture de `errors[]`
  une fois la forme confirmée (retirer la recherche sur plusieurs noms de champs).

---

## Récapitulatif / priorités

| # | Endpoint | Effet | Priorité |
|---|---|---|---|
| 1 | `agent/offline-data/` | DTO propres pour `bookings[]`/`parcel_arrivals[]` du paquet du jour | Moyenne (contournement stable en place) |
| 2a | `agent/sync/` (réponse) | DTO propre pour `{synced, conflicts, errors}` | Moyenne |
| 2b | `agent/sync/` — forme de `errors[]` | Fiabilise le marquage « échec » d'une écriture rejetée | **Haute** (lecture actuelle non garantie) |
| 2c | `SyncConflict.resolved` — sémantique | Fiabilise la distinction résolu/rejeté, notamment `trip_full`/`invalid` | **Haute** |

> Tant que ces points ne sont pas confirmés/livrés, **le front reste sur son
> comportement actuel** (lecture manuelle documentée dans `agent_sync_models.dart`,
> hypothèses posées dans le code et dans la mémoire de session) : aucun écran ne
> casse, aucun endpoint fictif n'est appelé. Le rebranchement se fera aux points
> listés ci-dessus.
