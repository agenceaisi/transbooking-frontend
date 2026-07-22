#!/usr/bin/env bash
# Récupère les deux fichiers dont SQLite a besoin dans le navigateur.
#
# `drift_flutter` charge SQLite en WebAssembly et délègue les requêtes à un
# worker : les deux fichiers doivent être servis depuis `web/`, sinon
# `driftDatabase()` lève un `ArgumentError` dès la première requête sur le web.
#
#   bash tool/fetch_web_assets.sh
#
# 🔁 À relancer après toute montée de version de `drift` ou `sqlite3` : les
# versions ci-dessous doivent rester alignées sur `pubspec.lock`.
set -euo pipefail

# Versions résolues dans pubspec.lock — à mettre à jour ensemble.
SQLITE3_VERSION="3.5.0"
DRIFT_VERSION="2.34.2"

WEB_DIR="$(dirname "$0")/../web"

echo "sqlite3.wasm     ← sqlite3 $SQLITE3_VERSION"
curl --fail --location --silent --show-error \
  --output "$WEB_DIR/sqlite3.wasm" \
  "https://github.com/simolus3/sqlite3.dart/releases/download/sqlite3-$SQLITE3_VERSION/sqlite3.wasm"

echo "drift_worker.js  ← drift $DRIFT_VERSION"
curl --fail --location --silent --show-error \
  --output "$WEB_DIR/drift_worker.js" \
  "https://github.com/simolus3/drift/releases/download/drift-$DRIFT_VERSION/drift_worker.js"

echo "Terminé : $(cd "$WEB_DIR" && pwd)"
