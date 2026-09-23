#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${ROOT_DIR}/sources/java/com/mycompany/app/view/FindWholeWordHelper.java"
OUT_SMALI="${ROOT_DIR}/app/smali_classes4/com/mycompany/app/view"
TOOLS="${ROOT_DIR}/tools"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1)"
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

if [[ ! -f "${DEX_TOOLS_DIR}/d2j-baksmali.sh" ]]; then
  if [[ ! -f "${DEX_TOOLS_ZIP}" ]]; then
    echo "Downloading dex-tools v2.4..."
    curl -fsSL -o "${DEX_TOOLS_ZIP}" \
      "https://github.com/pxb1988/dex2jar/releases/download/v2.4/dex-tools-v2.4.zip"
  fi
  unzip -qo "${DEX_TOOLS_ZIP}" -d "${TOOLS}"
fi
chmod +x "${DEX_TOOLS_DIR}/"*.sh "${DEX_TOOLS_DIR}/d2j_invoke.sh" 2>/dev/null || true

if [[ ! -f "${BAKSMALI_JAR}" ]]; then
  echo "Downloading baksmali 2.5.2..."
  curl -fsSL -o "${BAKSMALI_JAR}" \
    "https://repo1.maven.org/maven2/org/smali/baksmali/2.5.2/baksmali-2.5.2.jar"
fi

STAGE="$(mktemp -d)"
cleanup() { rm -rf "${STAGE}"; }
trap cleanup EXIT

echo "Compiling FindWholeWordHelper.java..."
javac --release 11 -classpath "${ANDROID_JAR}" -d "${STAGE}/classes" "${SRC}"

echo "Dexing..."
mkdir -p "${STAGE}/out"
"${D8}" --release --output "${STAGE}/out" "${STAGE}/classes/com/mycompany/app/view/"*.class

echo "Disassembling to smali..."
if [[ -x "${DEX_TOOLS_DIR}/d2j-baksmali.sh" ]]; then
  bash "${DEX_TOOLS_DIR}/d2j-baksmali.sh" -f -o "${STAGE}/smali" "${STAGE}/out/classes.dex"
else
  java -cp "${BAKSMALI_JAR}" org.jf.baksmali.Main d "${STAGE}/out/classes.dex" -o "${STAGE}/smali"
fi

rm -f "${OUT_SMALI}"/FindWholeWordHelper*.smali
mkdir -p "${OUT_SMALI}"
cp -f "${STAGE}/smali/com/mycompany/app/view/"FindWholeWordHelper*.smali "${OUT_SMALI}/"
echo "Wrote $(ls "${OUT_SMALI}"/FindWholeWordHelper*.smali | wc -l) smali file(s) to ${OUT_SMALI}"
