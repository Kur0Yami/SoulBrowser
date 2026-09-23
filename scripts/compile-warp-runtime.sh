#!/usr/bin/env bash
# Compile WARP runtime Java helpers to a dex file for injection into the APK.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_DIR="${ROOT_DIR}/sources/warp-runtime"
OUT_DIR="${ROOT_DIR}/tools/warp-runtime"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1 || true)"

if [[ -z "${ANDROID_JAR}" ]]; then
  echo "error: android.jar not found under ${ANDROID_HOME}/platforms" >&2
  exit 1
fi
if [[ -z "${D8}" ]]; then
  echo "error: d8 not found under ${ANDROID_HOME}/build-tools" >&2
  exit 1
fi

STUB_DIR="${ROOT_DIR}/sources/warp-runtime-stubs"
mkdir -p "${OUT_DIR}/classes" "${OUT_DIR}/stub-classes"
find "${OUT_DIR}/classes" -type f -name '*.class' -delete
find "${OUT_DIR}/stub-classes" -type f -name '*.class' -delete

mapfile -t SOURCES < <(find "${SRC_DIR}" -type f -name '*.java' | sort)
if [[ ${#SOURCES[@]} -eq 0 ]]; then
  echo "error: no Java sources under ${SRC_DIR}" >&2
  exit 1
fi

mapfile -t STUBS < <(find "${STUB_DIR}" -type f -name '*.java' | sort)
if [[ ${#STUBS[@]} -eq 0 ]]; then
  echo "error: no compile stubs under ${STUB_DIR}" >&2
  exit 1
fi

echo "Compiling WARP stubs (${#STUBS[@]} files)..."
javac --release 11 -classpath "${ANDROID_JAR}" -d "${OUT_DIR}/stub-classes" "${STUBS[@]}"

echo "Compiling WARP runtime (${#SOURCES[@]} files)..."
javac --release 11 \
  -classpath "${ANDROID_JAR}:${OUT_DIR}/stub-classes" \
  -d "${OUT_DIR}/classes" \
  "${SOURCES[@]}"

STAGE="$(mktemp -d)"
cleanup() { rm -rf "${STAGE}"; }
trap cleanup EXIT

(
  cd "${OUT_DIR}/classes"
  jar cf "${STAGE}/warp.jar" .
)

# Dex only runtime classes — stubs are compile-time only (real app classes resolve at runtime).
"${D8}" --release --output "${STAGE}" "${STAGE}/warp.jar"
cp "${STAGE}/classes.dex" "${OUT_DIR}/classes_warp.dex"
echo "Wrote ${OUT_DIR}/classes_warp.dex ($(du -h "${OUT_DIR}/classes_warp.dex" | awk '{print $1}'))"
