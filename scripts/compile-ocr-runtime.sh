#!/usr/bin/env bash
# Compile the OCR runtime installer to a dex file for injection into the APK.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_DIR="${ROOT_DIR}/sources/ocr-runtime"
OUT_DIR="${ROOT_DIR}/tools/ocr-runtime"
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

mkdir -p "${OUT_DIR}/classes"
find "${OUT_DIR}/classes" -type f -name '*.class' -delete

echo "Compiling OCR runtime installer..."
javac --release 11 -classpath "${ANDROID_JAR}" -d "${OUT_DIR}/classes" \
  "${SRC_DIR}/com/mycompany/app/ocr/OcrRuntimeInstaller.java"

STAGE="$(mktemp -d)"
cleanup() { rm -rf "${STAGE}"; }
trap cleanup EXIT

(
  cd "${OUT_DIR}/classes"
  jar cf "${STAGE}/installer.jar" .
)

"${D8}" --release --output "${STAGE}" "${STAGE}/installer.jar"
cp "${STAGE}/classes.dex" "${OUT_DIR}/classes_ocr_installer.dex"
echo "Wrote ${OUT_DIR}/classes_ocr_installer.dex ($(du -h "${OUT_DIR}/classes_ocr_installer.dex" | awk '{print $1}'))"
