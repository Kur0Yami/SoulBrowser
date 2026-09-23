#!/usr/bin/env bash
# Stage the small OCR module dex (ModuleDescriptors + BundledTextRecognizerCreator)
# used by the thick ML Kit path. Model assets and native libs are NOT packaged;
# OcrRuntimeInstaller downloads those from Google Maven at runtime.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="${ROOT_DIR}/bundled-ocr"
CACHE_DIR="${ROOT_DIR}/tools/mlkit-aar-cache"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"

MAVEN="https://dl.google.com/dl/android/maven2/com/google/mlkit"
TEXT_RECOGNITION_VERSION="16.0.1"
BUNDLED_COMMON_VERSION="17.0.0"

mkdir -p "${CACHE_DIR}" "${OUT_DIR}"

download() {
  local url="$1"
  local dest="$2"
  if [[ -f "${dest}" ]]; then
    return 0
  fi
  echo "  downloading $(basename "${dest}")..."
  curl -fsSL -o "${dest}.tmp" "${url}"
  mv "${dest}.tmp" "${dest}"
}

echo "Preparing OCR module dex (runtime downloads models/libs)..."

download \
  "${MAVEN}/text-recognition/${TEXT_RECOGNITION_VERSION}/text-recognition-${TEXT_RECOGNITION_VERSION}.aar" \
  "${CACHE_DIR}/text-recognition.aar"
download \
  "${MAVEN}/text-recognition-bundled-common/${BUNDLED_COMMON_VERSION}/text-recognition-bundled-common-${BUNDLED_COMMON_VERSION}.aar" \
  "${CACHE_DIR}/text-recognition-bundled-common.aar"

for lang in chinese japanese korean devanagari; do
  download \
    "${MAVEN}/text-recognition-${lang}/${TEXT_RECOGNITION_VERSION}/text-recognition-${lang}-${TEXT_RECOGNITION_VERSION}.aar" \
    "${CACHE_DIR}/text-recognition-${lang}.aar"
done

STAGE="$(mktemp -d)"
cleanup() { rm -rf "${STAGE}"; }
trap cleanup EXIT

extract_aar() {
  local aar="$1"
  local dest="$2"
  mkdir -p "${dest}"
  unzip -qo "${aar}" -d "${dest}"
  find "${dest}" -type f -exec chmod u+w {} \;
}

extract_aar "${CACHE_DIR}/text-recognition.aar" "${STAGE}/latin"
extract_aar "${CACHE_DIR}/text-recognition-bundled-common.aar" "${STAGE}/common"
for lang in chinese japanese korean devanagari; do
  extract_aar "${CACHE_DIR}/text-recognition-${lang}.aar" "${STAGE}/${lang}"
done

# Do not stage assets/ or lib/ — those are downloaded on-device by OcrRuntimeInstaller.
rm -rf "${OUT_DIR}/assets" "${OUT_DIR}/lib"

# Merge Java classes: bundled pipeline + ModuleDescriptors for each script.
JAR_MERGE="${STAGE}/jar-merge"
mkdir -p "${JAR_MERGE}"
(
  cd "${JAR_MERGE}"
  jar xf "${STAGE}/common/classes.jar"
  jar xf "${STAGE}/latin/classes.jar"
  for lang in chinese japanese korean devanagari; do
    jar xf "${STAGE}/${lang}/classes.jar"
  done
  jar cf "${STAGE}/ocr-bundled.jar" .
)

D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1 || true)"
if [[ -z "${D8}" ]]; then
  echo "error: d8 not found under ${ANDROID_HOME}/build-tools" >&2
  exit 1
fi

DEX_OUT="${STAGE}/dex-out"
mkdir -p "${DEX_OUT}"
"${D8}" --release --output "${DEX_OUT}" "${STAGE}/ocr-bundled.jar"
cp "${DEX_OUT}/classes.dex" "${OUT_DIR}/classes_ocr.dex"

cat > "${OUT_DIR}/README.md" << 'EOF'
# OCR module dex (not full models)

`classes_ocr.dex` contains ModuleDescriptors + BundledTextRecognizerCreator so the
thick ML Kit path works without Play Services. Model assets and
`libmlkit_google_ocr_pipeline.so` are downloaded at runtime from Google Maven by
`OcrRuntimeInstaller` (see DialogOcrLoad).

Regenerate with: `./scripts/prepare-bundled-ocr.sh`
EOF

echo "OCR module dex ready at ${OUT_DIR} ($(du -sh "${OUT_DIR}" | awk '{print $1}'))"
