#include "raylib.h"

int main() {
    // Em Web (Emscripten), a janela vira um <canvas> na página.
    InitWindow(800, 450, "raylib Web (WASM) - Codespaces");

    SetTargetFPS(60);

    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);

        DrawText("Hello, raylib Web!", 20, 20, 30, DARKGRAY);
        DrawLine(10, 100, 200, 120, RED);
        DrawCircleLines(120, 220, 60, BLUE);

        EndDrawing();
    }

    CloseWindow();
    return 0;
}
