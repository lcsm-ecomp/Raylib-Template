cmake_minimum_required(VERSION 3.20)
project(raylib_codespaces_web LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(FetchContent)

# raylib 5.5 (release no GitHub)
FetchContent_Declare(
  raylib
  GIT_REPOSITORY https://github.com/raysan5/raylib.git
  GIT_TAG 5.5
)

set(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(raylib)

add_executable(basic src/main.cpp)
target_link_libraries(basic PRIVATE raylib)

# Para Emscripten, queremos gerar basic.html (com .js e .wasm ao lado)
if(EMSCRIPTEN)
  set_target_properties(basic PROPERTIES SUFFIX ".html")
endif()
