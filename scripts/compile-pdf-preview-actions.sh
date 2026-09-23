#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_TOOLBAR="${ROOT_DIR}/sources/java/com/mycompany/app/image/PdfPreviewToolbar.java"
SRC_PREF_IMAGE="${ROOT_DIR}/sources/java/com/mycompany/app/pref/PrefImage.java"
SRC_PREVIEW="${ROOT_DIR}/sources/java/com/mycompany/app/web/PdfPreview.java"
OUT_SMALI_IMAGE="${ROOT_DIR}/app/smali_classes3/com/mycompany/app/image"
OUT_SMALI_PREF="${ROOT_DIR}/app/smali_classes3/com/mycompany/app/pref"
OUT_SMALI_WEB="${ROOT_DIR}/app/smali_classes4/com/mycompany/app/web"
TOOLS="${ROOT_DIR}/tools/pdf-preview-actions"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1)"
APK="$(ls -1 "${ROOT_DIR}/dist"/soul-browser-*-aligned.apk 2>/dev/null | sort | tail -1)"
if [[ -z "${APK}" || ! -f "${APK}" ]]; then
  APK="$(ls -1 "${ROOT_DIR}/dist"/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1)"
fi
DEX2JAR_ZIP="${ROOT_DIR}/tools/dex2jar-2.4.zip"

mkdir -p "${TOOLS}" "${OUT_SMALI_IMAGE}" "${OUT_SMALI_WEB}" "${OUT_SMALI_PREF}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "error: android.jar not found" >&2
  exit 1
fi
if [[ -z "${D8}" ]]; then
  echo "error: d8 not found" >&2
  exit 1
fi
if [[ ! -f "${APK}" ]]; then
  echo "error: merged unsigned APK not found; run ./scripts/build.sh first" >&2
  exit 1
fi

if [[ ! -f "${DEX2JAR_ZIP}" ]]; then
  echo "Downloading dex2jar 2.4..."
  curl -fsSL -o "${DEX2JAR_ZIP}" \
    "https://github.com/pxb1988/dex2jar/releases/download/v2.4/dex-tools-v2.4.zip"
  unzip -qo "${DEX2JAR_ZIP}" -d "${ROOT_DIR}/tools/dex2jar-2.4"
fi
D2J="$(find "${ROOT_DIR}/tools" -name d2j-dex2jar.sh 2>/dev/null | head -1)"
D2S="$(find "${ROOT_DIR}/tools" -name d2j-dex2smali.sh 2>/dev/null | head -1)"

if [[ -z "${D2J}" || ! -f "${D2J}" ]]; then
  echo "error: d2j-dex2jar.sh not found under ${ROOT_DIR}/tools" >&2
  exit 1
fi
if [[ -z "${D2S}" || ! -f "${D2S}" ]]; then
  echo "error: d2j-dex2smali.sh not found under ${ROOT_DIR}/tools" >&2
  exit 1
fi

STAGE="$(mktemp -d)"
cleanup() { rm -rf "${STAGE}"; }
trap cleanup EXIT

echo "Building classpath from APK dex files..."
CP="${ANDROID_JAR}"
for dex in classes.dex classes2.dex classes3.dex classes4.dex; do
  unzip -p "${APK}" "${dex}" > "${STAGE}/${dex}" 2>/dev/null || true
  if [[ -s "${STAGE}/${dex}" ]]; then
    jar="${STAGE}/${dex%.dex}.jar"
    bash "${D2J}" --force "${STAGE}/${dex}" -o "${jar}" >/dev/null
    CP="${CP}:${jar}"
  fi
done

echo "Compiling PDF preview sources..."
javac --release 11 -classpath "${CP}" -d "${STAGE}/classes" "${SRC_TOOLBAR}" "${SRC_PREVIEW}" "${SRC_PREF_IMAGE}"

echo "Dexing compiled classes..."
mkdir -p "${STAGE}/out"
mapfile -t CLASS_FILES < <(find "${STAGE}/classes" -name '*.class' -type f)
("${D8}" --release --lib "${ANDROID_JAR}" --output "${STAGE}/out" "${CLASS_FILES[@]}")

echo "Disassembling to smali..."
bash "${D2S}" "${STAGE}/out/classes.dex" -o "${STAGE}/smali"
find "${STAGE}/smali" -name '*.smali' -print0 | xargs -0 sed -i \
  -e 's/\\u002d\$\$Nest\$/\-$$Nest$/g' \
  -e 's/const\/high16 \(v[0-9]*\), 16576/const\/high16 \1, 0x40c00000    # 6.0f/g'

cp -a "${STAGE}/smali/com/mycompany/app/image/PdfPreviewToolbar"* "${OUT_SMALI_IMAGE}/"
cp -a "${STAGE}/smali/com/mycompany/app/web/PdfPreview"* "${OUT_SMALI_WEB}/"
echo "Wrote smali under ${OUT_SMALI_IMAGE} and ${OUT_SMALI_WEB}"
echo "Note: patch app/smali_classes3/com/mycompany/app/pref/PrefImage.smali manually when PrefImage.java changes"
