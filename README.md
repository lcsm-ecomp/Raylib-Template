# raylib + C++ no GitHub Codespaces (destino Web/WASM)

Este template compila um programa raylib para **WebAssembly** usando **Emscripten**
e serve os artefatos via um webserver simples (sem VNC).

## Como usar (aluno no Windows, sem instalar nada localmente)

1) No GitHub, clique em:
   **Code -> Codespaces -> Create codespace on main**

2) No terminal do Codespaces, rode:

   ./scripts/serve-web.sh

3) Abra o link `http://127.0.0.1:8000` que aparece no terminal,
   ou vá na aba **PORTS** e abra a porta **8000**.

A página `basic.html` será carregada e o programa aparece em um `<canvas>`.

## Comandos úteis

- Build Web (gera `build-web/basic.html` + `.js` + `.wasm`):
  ./scripts/build-web.sh

- Servir:
  ./scripts/serve-web.sh
