# !/usr/bin/env bash

set +ex

cmake ${CMAKE_ARGS} -DCMAKE_BUILD_TYPE=Release -S "$SRC_DIR" -B "$SRC_DIR/build" || exit 1
cmake --build "$SRC_DIR/build" --config Release --parallel $CPU_COUNT --verbose || exit 1
cmake --install "$SRC_DIR/build" --config Release --verbose
