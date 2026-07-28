# Demandes de complément d'API — Phase 5B (guichet)

> **But.** Fermer les écarts relevés en construisant les écrans guichet
> (programme du jour, enregistrement passager, enregistrement colis,
> notification d'arrivée). Chaque écran a été livré en **contournant** ce que
> l'API ne fournit pas ou type mal — jamais par invention (CLAUDE.md §0/§7).
>
> Généré le 2026-07-26. Sources : `api/schema.yml`, `api/flutter_integration.md`.
> Fait suite à `api/backend_completion_requests_5a.md`.

---

## 1. `POST /agent/parcels/` : typer la réponse comme le colis créé

### Endpoint concerné
`POST /api/v1/agent/parcels/` (`operationId: v1_agent_parcels_create`)

### Manque
Le schéma déclare la réponse 201 comme un écho de la requête
(`AgentParcelCreate`) — même artefact déjà corrigé pour
`POST /agent/bookings/` et `POST /agent/sync/` (cf. `backend_completion_requests_5a.md`,
point 32 de la mémoire du projet). Contrairement aux billets, **il n'existe
aucune recherche par `tracking_number`** pour rattraper le coup après coup
(seulement `GET /agent/parcels/{id}/`, par id numérique, inconnu avant la
création). Le front lit donc la réponse de création **directement comme
`ParcelRead`**, en supposant que le JSON réel contient bien `id`, `tariff`,
`qr_code`, etc., malgré le schéma.

### À faire
Retyper la réponse 201 sur `ParcelRead` (comme `GET /agent/parcels/{id}/`) :

```yaml
responses:
  '201':
    content:
      application/json:
        schema:
          $ref: '#/components/schemas/ParcelRead'
```

**Merci de confirmer** que c'est bien la forme réellement renvoyée aujourd'hui
(sinon le front affiche actuellement un colis enregistré sans tarif/QR).

### Impact Flutter
- `AgentParcelRemoteDataSource.create()` — déjà écrit pour parser `ParcelRead` ;
  aucun changement de code nécessaire une fois le schéma corrigé, seulement la
  confirmation.

---

## 2. `AgentBookingCreate` : ajouter `transaction_ref` à `OfflineBooking`

### Endpoints concernés
`POST /api/v1/agent/bookings/` (`AgentBookingCreate.transaction_ref`) et
`POST /api/v1/agent/sync/` (`SyncPayload.bookings[]` → schéma `OfflineBooking`)

### Manque
`AgentBookingCreate.transaction_ref` est requis pour tout `payment_method`
différent de `cash` — l'agent le saisit manuellement (référence donnée par le
client après un paiement Mobile Money fait hors app). Mais **`OfflineBooking`
(la forme envoyée dans `bookings[]` lors de la synchronisation) n'a pas ce
champ.** Résultat : une vente au guichet en Mobile Money saisie **hors ligne**
ne peut pas être transmise correctement à la synchronisation.

### Contournement actuel
Le formulaire « Enregistrer un passager » **désactive les moyens Mobile
Money hors ligne** (seul `cash` reste sélectionnable) — pas d'écriture vouée
au rejet mise en file. Correct mais limitant : un guichet hors ligne ne peut
vendre qu'en espèces.

### À faire

```yaml
OfflineBooking:
  properties:
    # … champs existants …
    transaction_ref:
      type: string
      nullable: true
      description: Requis si payment_method != cash (repris de AgentBookingCreate).
```

Et vérifier côté vue de synchronisation que ce champ est bien pris en compte
avec la même validation (« requis si `payment_method != cash` ») que la
création directe.

### Impact Flutter (une fois livré)
- `core/storage/tables/outbox_tables.dart` (`OfflineBookings`) → ajouter la
  colonne `transactionRef` (migration Drift additive, nouvelle version de
  schéma).
- `AgentSyncRepositoryImpl._toDtoBooking` → transmettre le champ.
- `AgentBookingRepositoryImpl._queueOffline` → l'accepter et l'enregistrer.
- Écran « Enregistrer un passager » → réactiver les moyens Mobile Money hors
  ligne, avec le champ « Numéro de transaction » déjà présent en ligne.

---

## 3. (Optionnel) `POST /agent/parcels/{id}/notify/` en file d'attente hors ligne

### Contexte
`PROMPTS.md` §5B envisage un « marquer appelé » disponible hors ligne pour la
notification d'arrivée de colis. Aujourd'hui, ni `notify/` ni son résultat ne
transitent par `POST /agent/sync/` (`SyncPayload` n'a pas de liste dédiée) :
l'action est donc **désactivée hors ligne** dans l'app (SMS et « marquer
prévenu » tous les deux), avec explication à l'agent.

### À faire, si souhaité
Ajouter une quatrième liste optionnelle à `SyncPayload`, ex.
`parcel_notifications: [{ tracking_number, method: "call", offline_created_at }]`,
traitée comme les autres (idempotence par `tracking_number` + horodatage).

### Impact Flutter (une fois livré)
- Nouvelle valeur d'`OutboxEntity` (`parcelNotification`) + table
  `OfflineParcelNotifications` (migration Drift additive).
- `AgentParcelRepositoryImpl.notify()` → chemin hors ligne via `OutboxWriter`.
- Écran « Notification d'arrivée de colis » → réactiver « Marquer prévenu »
  hors ligne (le SMS reste en ligne uniquement : l'app ne doit jamais laisser
  croire qu'un SMS est parti alors qu'il ne l'est pas).

---

## Récapitulatif / priorités

| # | Endpoint | Effet | Priorité |
|---|---|---|---|
| 1 | `agent/parcels/` (réponse) | Confirme/corrige le tarif et le QR affichés à la confirmation | **Haute** (à vérifier en priorité — impact silencieux si faux) |
| 2 | `OfflineBooking.transaction_ref` | Débloque la vente Mobile Money hors ligne | Moyenne |
| 3 | Notification colis en file d'attente | Aligne l'app sur `PROMPTS.md` §5B | Basse (optionnel) |

> Tant que ces points ne sont pas confirmés/livrés, le front reste sur son
> comportement actuel (lecture directe en `ParcelRead`, Mobile Money
> espèces-seulement hors ligne, notification colis en ligne uniquement) :
> aucun écran ne casse, aucun endpoint fictif n'est appelé.
