#!/usr/bin/env bash
set -euo pipefail

BUILD_DIR="${BUILD_DIR:-build-web}"
PORT="${PORT:-8000}"

./scripts/build-web.sh

echo
echo "Servindo ${BUILD_DIR} em http://127.0.0.1:${PORT}"
echo "(No Codespaces: clique no link no terminal ou abra a aba PORTS e acesse a porta ${PORT}.)"
echo

python3 -m http.server "${PORT}" --directory "${BUILD_DIR}"
