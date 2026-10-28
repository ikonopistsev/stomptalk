#!/bin/sh
# Exercise the documented trainer hook and exported instrumented static target.
set -eu
test -n "${LLVM_PROFILE_FILE:-}"
test -d "$2"
cmake --install "$1" --prefix "$1/trainer-install"
mkdir -p "$1/trainer-source"
cp "$(dirname "$0")/../../../test/purestomp.c" "$1/trainer-source/main.c"
cat > "$1/trainer-source/CMakeLists.txt" <<'EOF'
cmake_minimum_required(VERSION 3.10)
project(training_consumer LANGUAGES C CXX)
find_package(stomptalk 2 REQUIRED CONFIG)
add_executable(training_consumer main.c)
set_property(TARGET training_consumer PROPERTY C_STANDARD 99)
target_link_libraries(training_consumer PRIVATE stomptalk::stomptalk)
EOF
cmake -S "$1/trainer-source" -B "$1/trainer-build" \
    -DCMAKE_C_COMPILER=/usr/lib/llvm/23/bin/clang \
    -DCMAKE_CXX_COMPILER=/usr/lib/llvm/23/bin/clang++ \
    -DCMAKE_PREFIX_PATH="$1/trainer-install"
cmake --build "$1/trainer-build"
"$1/trainer-build/training_consumer" 0 1000
