echo ON
setlocal enabledelayedexpansion

cmake -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" -DCMAKE_BUILD_TYPE=Release -S "%SRC_DIR%" -B "%SRC_DIR%/build"
if errorlevel 1 exit 1

cmake --build "%SRC_DIR%/build" --config Release --parallel %CPU_COUNT% --verbose
if errorlevel 1 exit 1

cmake --install "%SRC_DIR%/build" --config Release --verbose
