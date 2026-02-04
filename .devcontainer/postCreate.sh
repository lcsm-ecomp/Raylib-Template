#!/usr/bin/env bash
set -euo pipefail

sudo apt-get update

# Toolchain + Ninja + Python para servir os arquivos Web
sudo apt-get install -y --no-install-recommends   build-essential cmake ninja-build git pkg-config python3

# Build inicial (Web) para ficar "pronto" ao abrir o Codespace
./scripts/build-web.sh
echo
echo "OK! Web build concluído."
echo "Para rodar: ./scripts/serve-web.sh  (abre na porta 8000)"
