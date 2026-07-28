# Demandes de complément d'API — Phase 5C (contrôle : embarquement & scan QR)

> **But.** Fermer les écarts relevés en construisant les écrans du contrôleur
> (liste passagers & embarquement, scanner QR). Chaque écran a été livré en
> **contournant** ce que l'API ne fournit pas ou type mal — jamais par
> invention (CLAUDE.md §0/§7).
>
> Généré le 2026-07-26. Sources : `api/schema.yml`, `api/flutter_integration.md`.
> Fait suite à `api/backend_completion_requests_5b.md`.

---

## 1. `POST /agent/scan/` : typer la réponse réelle du scan

### Endpoint concerné
`POST /api/v1/agent/scan/` (`operationId: v1_agent_scan_create`)

### Manque
Le schéma déclare requête **et** réponse comme `BookingRead` — même artefact
déjà corrigé ailleurs (schéma = écho du serializer de vue, pas la vraie forme
métier ; cf. points 2/18/23/26/32 de la mémoire du projet). Le guide §6.7 dit
seulement « renvoie le résultat du scan (statut billet + info d'affichage) »,
sans JSON. Le modèle `ScanLog` (`GET /agent/scan/history/`) partage forcément
la même forme que la réponse de `POST /agent/scan/` — la description du champ
dit explicitement « chaque scan est tracé, y compris `not_found` » — mais
`ScanLog` ne porte ni trajet ni date, pourtant affichés par la maquette
« Scanner QR code » pour un billet valide.

### Contournement actuel
Réponse lue à la main sur la forme `ScanLog` (`result`, `ticket_number`,
`passenger_name`, `seat_number`) plutôt que d'imposer `BookingRead.fromJson`
(qui planterait sur le moindre champ manquant). Le trajet affiché est
**complété depuis le cache local** (`CachedBookings`/`CachedTrips`, paquet du
matin) quand le billet scanné s'y trouve — absent du cache (billet créé après
le téléchargement matinal, scanné en ligne), la carte de résultat n'affiche
que billet/passager/siège, sans trajet ni date.

### À faire
Documenter formellement la réponse de `POST /agent/scan/`, par exemple :

```yaml
responses:
  '200':
    content:
      application/json:
        schema:
          $ref: '#/components/schemas/ScanLog'
          # ou un schéma dédié, si le trajet/la date doivent y figurer :
          # { result, result_display, ticket_number, passenger_name,
          #   seat_number, trip: TripSummary, scanned_at }
```

**Merci de confirmer** aussi le traitement d'un billet introuvable : le guide
dit « 404 si billet introuvable », mais `ResultEnum` définit `not_found`
comme une valeur de résultat (implique un `200`). L'app gère aujourd'hui les
**deux** cas (le 404 est intercepté et transformé en résultat `not_found`),
mais un seul comportement réel devrait exister côté serveur.

### Impact Flutter (une fois confirmé/corrigé)
- `AgentControlRemoteDataSource.scanQrData()` → remplacer la lecture
  défensive par `ScanLog.fromJson` (ou le DTO généré du schéma corrigé).
- Si le trajet/la date sont ajoutés à la réponse, `ScanOutcome` peut les lire
  directement sans dépendre du cache local (utile pour un billet scanné en
  ligne mais absent du paquet du matin — cas rare mais possible).

---

## 2. `POST /agent/trips/{id}/boarding/validate/` : typer le résumé réel

### Endpoint concerné
`POST /api/v1/agent/trips/{trip_id}/boarding/validate/`

### Manque
Le schéma type la réponse comme `BoardingValidation` (lecture d'un
**embarquement individuel** : `id, ticket_number, passenger_name, method,
boarded_at`) — sans rapport avec la forme documentée par le guide §6.7 :
`{ trip, total_paid, boarded, not_boarded, locked }`. Même artefact que les
points 2/18/23/26/32 déjà catalogués.

### Contournement actuel
Réponse lue à la main (`BoardingValidationSummary`, dans
`agent_control_remote_data_source.dart`), champ par champ, avec repli à `0`/
`true` si un champ manquait — jamais un plantage de l'écran.

### À faire
```yaml
responses:
  '200':
    content:
      application/json:
        schema:
          type: object
          properties:
            trip: { type: integer }
            total_paid: { type: integer }
            boarded: { type: integer }
            not_boarded: { type: integer }
            locked: { type: boolean }
```

### Impact Flutter (une fois livré)
- Remplacer la lecture défensive de `AgentControlRemoteDataSource.validate()`
  par le DTO généré correspondant.

---

## 3. (Optionnel) `id` numérique du billet dans le paquet hors ligne

### Endpoint concerné
`GET /api/v1/agent/offline-data/` (`AgentOfflineData.bookings` →
`OfflineBookingRead`)

### Manque
`OfflineBookingRead` ne porte que `ticket_number, trip_id, passenger_name,
phone, seat_number, qr_code, status` — **pas l'`id` numérique** du billet.
Or `POST /agent/trips/{trip_id}/boarding/{booking_id}/` (cocher un passager
manuellement) attend ce **`booking_id` numérique**, introuvable dans le
paquet téléchargé le matin.

### Contournement actuel
Avant d'appeler `boarding/{booking_id}/` **en ligne**, l'app résout d'abord
l'id via `GET /agent/bookings/{ticket_number}/` (déjà utilisé par le guichet,
phase 5B) — un aller-retour réseau de plus, mais fonctionnellement correct.
**Hors ligne**, cette résolution n'a pas lieu : le pointage passe entièrement
par `validations[]` (`POST /agent/sync/`), qui s'indexe sur `ticket_number`,
pas sur un id — aucun blocage, juste un chemin différent, cohérent avec le
reste de la synchronisation hors ligne.

### À faire, si souhaité
Ajouter `id` à `OfflineBookingRead` économiserait l'aller-retour réseau
supplémentaire en ligne. Purement une optimisation, pas un blocage.

### Impact Flutter (une fois livré)
- `AgentBoardingRepositoryImpl.confirmBoarding()` pourrait sauter l'appel à
  `findByTicketNumber` quand l'id est déjà connu localement (`CachedBookings`
  devrait alors aussi gagner une colonne `id`, migration Drift additive).

---

## Récapitulatif / priorités

| # | Endpoint | Effet | Priorité |
|---|---|---|---|
| 1 | `agent/scan/` (réponse) | Confirme le résultat de scan affiché (les 7 cas) et le comportement 404 vs `not_found` | **Haute** |
| 2 | `agent/trips/{id}/boarding/validate/` (réponse) | Confirme les compteurs du verrouillage final d'embarquement | **Haute** |
| 3 | `id` dans `OfflineBookingRead` | Évite un aller-retour réseau au pointage manuel en ligne | Basse (optionnel) |

> Tant que ces points ne sont pas confirmés/livrés, le front reste sur son
> comportement actuel (lecture défensive des réponses 1 et 2, résolution de
> l'id par recherche billet pour le point 3) : aucun écran ne casse, aucun
> endpoint fictif n'est appelé.
