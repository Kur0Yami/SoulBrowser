#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${ROOT_DIR}/sources/java/com/mycompany/app/dialog/DialogTabPress.java"
OUT_SMALI="${ROOT_DIR}/app/smali_classes3/com/mycompany/app/dialog"
TOOLS="${ROOT_DIR}/tools/dialog-tab-press"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1)"
APK="$(ls -1 "${ROOT_DIR}/dist"/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1)"
DEX2JAR_VERSION="2.4"
DEX2JAR_ZIP="${ROOT_DIR}/tools/dex2jar-${DEX2JAR_VERSION}.zip"
BAKSMALI_VERSION="2.5.2"
BAKSMALI_JAR="${ROOT_DIR}/tools/baksmali-${BAKSMALI_VERSION}.jar"
SMALI_JAR="${ROOT_DIR}/tools/smali-${BAKSMALI_VERSION}.jar"

mkdir -p "${TOOLS}" "${OUT_SMALI}"

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
  echo "Downloading dex2jar ${DEX2JAR_VERSION}..."
  curl -fsSL -o "${DEX2JAR_ZIP}" \
    "https://github.com/pxb1988/dex2jar/releases/download/v${DEX2JAR_VERSION}/dex2jar-${DEX2JAR_VERSION}.zip"
  unzip -qo "${DEX2JAR_ZIP}" -d "${ROOT_DIR}/tools"
fi
D2J="${ROOT_DIR}/tools/dex2jar-${DEX2JAR_VERSION}/d2j-dex2jar.sh"

if [[ ! -f "${BAKSMALI_JAR}" ]]; then
  echo "Downloading baksmali ${BAKSMALI_VERSION}..."
  curl -fsSL -o "${BAKSMALI_JAR}" \
    "https://bitbucket.org/alexeyo/baksmali/downloads/baksmali-${BAKSMALI_VERSION}.jar"
fi
if [[ ! -f "${SMALI_JAR}" ]]; then
  echo "Downloading smali ${BAKSMALI_VERSION}..."
  curl -fsSL -o "${SMALI_JAR}" \
    "https://bitbucket.org/alexeyo/smali/downloads/smali-${BAKSMALI_VERSION}.jar"
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

echo "Compiling DialogTabPress.java..."
javac --release 11 -classpath "${CP}" -d "${STAGE}/classes" "${SRC}"

echo "Dexing compiled classes..."
("${D8}" --release --lib "${ANDROID_JAR}" --output "${STAGE}/out" "${STAGE}/classes/com/mycompany/app/dialog/"*.class)

echo "Disassembling to smali..."
java -jar "${BAKSMALI_JAR}" d "${STAGE}/out/classes.dex" -o "${STAGE}/smali"

cp -a "${STAGE}/smali/com/mycompany/app/dialog/DialogTabPress"* "${OUT_SMALI}/"
echo "Wrote smali under ${OUT_SMALI}"
