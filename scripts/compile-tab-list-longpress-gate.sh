#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${ROOT_DIR}/sources/java/com/mycompany/app/web/TabListLongPressGate.java"
OUT_SMALI="${ROOT_DIR}/app/smali_classes3/com/mycompany/app/web"
TOOLS="${ROOT_DIR}/tools"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1)"
APK="$(ls -1 "${ROOT_DIR}/dist"/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
if [[ -z "${APK}" || ! -f "${APK}" ]]; then
  APK="$(ls -1 "${ROOT_DIR}/../soul-browser/dist"/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
fi
if [[ -z "${APK}" || ! -f "${APK}" ]]; then
  APK="$(ls -1 /home/kaki/Documents/git/github.com/KaKi87/soul-browser/dist/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
fi
DEX_TOOLS_ZIP="${TOOLS}/dex-tools-v2.4.zip"
DEX_TOOLS_DIR="${TOOLS}/dex-tools-v2.4"
BAKSMALI_JAR="${TOOLS}/baksmali.jar"

mkdir -p "${TOOLS}" "${OUT_SMALI}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "error: android.jar not found" >&2
  exit 1
fi
if [[ -z "${D8}" ]]; then
  echo "error: d8 not found" >&2
  exit 1
fi
if [[ -z "${APK}" || ! -f "${APK}" ]]; then
  echo "error: merged unsigned APK not found; run ./scripts/build.sh first" >&2
  exit 1
fi

if [[ ! -f "${DEX_TOOLS_DIR}/d2j-dex2jar.sh" ]]; then
  if [[ ! -f "${DEX_TOOLS_ZIP}" ]]; then
    echo "Downloading dex-tools v2.4..."
    curl -fsSL -o "${DEX_TOOLS_ZIP}" \
      "https://github.com/pxb1988/dex2jar/releases/download/v2.4/dex-tools-v2.4.zip"
  fi
  unzip -qo "${DEX_TOOLS_ZIP}" -d "${TOOLS}"
fi
D2J="${DEX_TOOLS_DIR}/d2j-dex2jar.sh"
chmod +x "${DEX_TOOLS_DIR}/"*.sh "${DEX_TOOLS_DIR}/d2j_invoke.sh"

if [[ ! -f "${BAKSMALI_JAR}" ]]; then
  echo "Downloading baksmali 2.5.2..."
  curl -fsSL -o "${BAKSMALI_JAR}" \
    "https://repo1.maven.org/maven2/org/smali/baksmali/2.5.2/baksmali-2.5.2.jar"
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

echo "Compiling TabListLongPressGate.java..."
javac --release 11 -classpath "${CP}" -d "${STAGE}/classes" "${SRC}"

echo "Dexing compiled classes..."
mkdir -p "${STAGE}/out"
("${D8}" --release --lib "${ANDROID_JAR}" --output "${STAGE}/out" "${STAGE}/classes/com/mycompany/app/web/"*.class)

echo "Disassembling to smali..."
bash "${DEX_TOOLS_DIR}/d2j-baksmali.sh" -f -o "${STAGE}/smali" "${STAGE}/out/classes.dex"

cp -a "${STAGE}/smali/com/mycompany/app/web/TabListLongPressGate"* "${OUT_SMALI}/"
echo "Wrote smali under ${OUT_SMALI}"
