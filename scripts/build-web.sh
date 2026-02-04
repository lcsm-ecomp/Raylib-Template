#!/usr/bin/env bash
set -euo pipefail

# Gera build Web (WASM) usando Emscripten + CMake.
# Requer que emcmake esteja disponível (instalado via Dev Container Feature).

BUILD_DIR="${BUILD_DIR:-build-web}"
cmake_gen="${CMAKE_GENERATOR:-Ninja}"

# Configure
emcmake cmake -S . -B "${BUILD_DIR}" -G "${cmake_gen}"   -DPLATFORM=Web   -DCMAKE_BUILD_TYPE=Release

# Build
cmake --build "${BUILD_DIR}"

echo "Build OK. Arquivos em: ${BUILD_DIR}/"
echo "Abra: ${BUILD_DIR}/basic.html"
