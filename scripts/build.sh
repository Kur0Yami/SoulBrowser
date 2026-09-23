#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
APP_DIR="${ROOT_DIR}/app"
DIST_DIR="${ROOT_DIR}/dist"
SPLITS_DIR="${ROOT_DIR}/splits"
TOOLS_DIR="${ROOT_DIR}/tools"
APKTOOL_VERSION="2.10.0"
APKTOOL_JAR="${TOOLS_DIR}/apktool_${APKTOOL_VERSION}.jar"

mkdir -p "${DIST_DIR}" "${TOOLS_DIR}"

if [[ ! -f "${APKTOOL_JAR}" ]]; then
  echo "Downloading apktool ${APKTOOL_VERSION}..."
  curl -fsSL \
    -o "${APKTOOL_JAR}" \
    "https://github.com/iBotPeaches/Apktool/releases/download/v${APKTOOL_VERSION}/apktool_${APKTOOL_VERSION}.jar"
fi

find_apksigner() {
  if command -v apksigner >/dev/null 2>&1; then
    command -v apksigner
    return 0
  fi

  local sdk="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-}}"
  if [[ -n "${sdk}" && -d "${sdk}/build-tools" ]]; then
    local signer
    signer="$(find "${sdk}/build-tools" -name apksigner -type f 2>/dev/null | sort -V | tail -1)"
    if [[ -n "${signer}" ]]; then
      echo "${signer}"
      return 0
    fi
  fi

  return 1
}

find_zipalign() {
  if command -v zipalign >/dev/null 2>&1; then
    command -v zipalign
    return 0
  fi

  local sdk="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-}}"
  if [[ -n "${sdk}" && -d "${sdk}/build-tools" ]]; then
    local aligner
    aligner="$(find "${sdk}/build-tools" -name zipalign -type f 2>/dev/null | sort -V | tail -1)"
    if [[ -n "${aligner}" ]]; then
      echo "${aligner}"
      return 0
    fi
  fi

  return 1
}

VERSION_NAME="$(grep 'versionName:' "${APP_DIR}/apktool.yml" | awk '{print $2}')"
VERSION_CODE="$(grep 'versionCode:' "${APP_DIR}/apktool.yml" | awk '{print $2}')"
OUTPUT_NAME="soul-browser-${VERSION_NAME}-${VERSION_CODE}"

detect_build_branch() {
  if [[ -n "${GITHUB_REF_NAME:-}" ]]; then
    echo "${GITHUB_REF_NAME}"
  elif [[ -n "${GITHUB_REF:-}" && "${GITHUB_REF}" == refs/heads/* ]]; then
    echo "${GITHUB_REF#refs/heads/}"
  else
    git -C "${ROOT_DIR}" rev-parse --abbrev-ref HEAD 2>/dev/null || true
  fi
}

detect_package_id() {
  if [[ -n "${SOUL_PACKAGE_ID:-}" ]]; then
    echo "${SOUL_PACKAGE_ID}"
    return 0
  fi

  if [[ "$(detect_build_branch)" == "main" ]]; then
    echo "net.kaki87.soul2"
  else
    echo "net.kaki87.soul2.testing"
  fi
}

detect_app_name() {
  if [[ -n "${SOUL_APP_NAME:-}" ]]; then
    echo "${SOUL_APP_NAME}"
    return 0
  fi

  # Follow the resolved package channel (CI sets SOUL_PACKAGE_ID on main tags;
  # GITHUB_REF_NAME is the tag name, not "main").
  if [[ "$(detect_package_id)" == "net.kaki87.soul2" ]]; then
    echo "Soul2 Browser"
  else
    echo "Soul2⁺ Browser"
  fi
}

set_app_name() {
  local name="$1"
  local strings_xml="${APP_DIR}/res/values/strings.xml"
  python3 - "$strings_xml" "$name" <<'PY'
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
name = sys.argv[2]
text = path.read_text(encoding="utf-8")
updated, n = re.subn(
    r'(<string name="app_name">)(.*?)(</string>)',
    lambda m: f"{m.group(1)}{name}{m.group(3)}",
    text,
    count=1,
)
if n != 1:
    raise SystemExit(f"error: could not update app_name in {path}")
if updated != text:
    path.write_text(updated, encoding="utf-8")
    print(f"Set app_name to {name}")
else:
    print(f"app_name already {name}")
PY
}

set_build_date() {
  local build_date_xml="${APP_DIR}/res/values/build_date.xml"
  local date_value
  date_value="$(date -u +"%Y-%m-%d %H:%M UTC")"
  if [[ ! -f "${build_date_xml}" ]]; then
    mkdir -p "$(dirname "${build_date_xml}")"
    cat > "${build_date_xml}" <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="build_date_value">dev</string>
</resources>
EOF
  fi
  python3 - "$build_date_xml" "$date_value" <<'PY'
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
value = sys.argv[2]
text = path.read_text(encoding="utf-8")
updated, n = re.subn(
    r'(<string name="build_date_value">)(.*?)(</string>)',
    lambda m: f"{m.group(1)}{value}{m.group(3)}",
    text,
    count=1,
)
if n != 1:
    raise SystemExit(f"error: could not update build_date_value in {path}")
if updated != text:
    path.write_text(updated, encoding="utf-8")
    print(f"Set build_date_value to {value}")
else:
    print(f"build_date_value already {value}")
PY
}

PACKAGE_ID="$(detect_package_id)"
APP_NAME="$(detect_app_name)"
echo "Setting application ID to ${PACKAGE_ID}..."
python3 "${ROOT_DIR}/scripts/set-package-id.py" --to "${PACKAGE_ID}"
echo "Setting app name to ${APP_NAME}..."
set_app_name "${APP_NAME}"
echo "Setting build date..."
set_build_date

echo "Extracting Information text from README.md..."
python3 "${ROOT_DIR}/scripts/prepare-info-string.py"

echo "Preparing resources..."
python3 "${ROOT_DIR}/scripts/sync-i18n.py"
"${ROOT_DIR}/scripts/merge-split-resources.sh"
python3 "${ROOT_DIR}/scripts/sync-public-xml.py"

echo "Building ${OUTPUT_NAME}..."
APKTOOL_JOBS="$(nproc 2>/dev/null || echo 2)"
java -jar "${APKTOOL_JAR}" b -j "${APKTOOL_JOBS}" "${APP_DIR}" -o "${DIST_DIR}/${OUTPUT_NAME}-unsigned.apk"

MERGED_APK="${DIST_DIR}/${OUTPUT_NAME}-merged-unsigned.apk"
cp "${DIST_DIR}/${OUTPUT_NAME}-unsigned.apk" "${MERGED_APK}"

ORIGINAL_DEX="${ROOT_DIR}/original-dex/classes2.dex"
if [[ -f "${ORIGINAL_DEX}" ]]; then
  echo "Replacing recompiled classes2.dex with original desugar libraries..."
  zip -q -d "${MERGED_APK}" classes2.dex
  (cd "${ROOT_DIR}/original-dex" && zip -q -0 -j "${MERGED_APK}" classes2.dex)
else
  echo "warning: ${ORIGINAL_DEX} not found; desugared Java 8+ APIs may crash at runtime"
fi

# OCR/WARP dex prebuilts (see prebuilts/tooling.inputs; CI force-commits when inputs change).
BUNDLED_OCR_DEX="${ROOT_DIR}/prebuilts/classes_ocr.dat"
INSTALLER_DEX="${ROOT_DIR}/prebuilts/classes_ocr_installer.dat"
WARP_DEX="${ROOT_DIR}/prebuilts/classes_warp.dat"
TOOLING_INPUTS="${ROOT_DIR}/prebuilts/tooling.inputs"
TOOLING_STAMP_SCRIPT="${ROOT_DIR}/scripts/tooling-stamp.sh"
need_tooling_build=0
current_tooling_hash=""
if [[ -f "${TOOLING_STAMP_SCRIPT}" ]]; then
  current_tooling_hash="$(bash "${TOOLING_STAMP_SCRIPT}" hash)"
fi
saved_tooling_hash=""
if [[ -f "${TOOLING_INPUTS}" ]]; then
  saved_tooling_hash="$(tr -d '[:space:]' < "${TOOLING_INPUTS}")"
fi
if [[ ! -f "${BUNDLED_OCR_DEX}" ]] || [[ ! -f "${INSTALLER_DEX}" ]] || [[ ! -f "${WARP_DEX}" ]]; then
  need_tooling_build=1
elif [[ -z "${current_tooling_hash}" || "${current_tooling_hash}" != "${saved_tooling_hash}" ]]; then
  need_tooling_build=1
fi
if [[ "${need_tooling_build}" -eq 1 ]]; then
  echo "Building OCR/WARP tooling prebuilts..."
  mkdir -p "${ROOT_DIR}/bundled-ocr" "${ROOT_DIR}/tools/ocr-runtime" "${ROOT_DIR}/tools/warp-runtime"
  "${ROOT_DIR}/scripts/prepare-bundled-ocr.sh"
  "${ROOT_DIR}/scripts/compile-ocr-runtime.sh"
  "${ROOT_DIR}/scripts/compile-warp-runtime.sh"
  mkdir -p "${ROOT_DIR}/prebuilts"
  cp -f "${ROOT_DIR}/bundled-ocr/classes_ocr.dex" "${BUNDLED_OCR_DEX}"
  cp -f "${ROOT_DIR}/tools/ocr-runtime/classes_ocr_installer.dex" "${INSTALLER_DEX}"
  cp -f "${ROOT_DIR}/tools/warp-runtime/classes_warp.dex" "${WARP_DEX}"
  if [[ -f "${TOOLING_STAMP_SCRIPT}" ]]; then
    bash "${TOOLING_STAMP_SCRIPT}" write
  fi
else
  echo "OCR/WARP tooling prebuilts up to date (${saved_tooling_hash})"
fi

# OCR: keep only the small ModuleDescriptor/bundled-creator dex in the APK.
# Models + native libs are downloaded at runtime from Google Maven (no Play Services).
if [[ -f "${BUNDLED_OCR_DEX}" ]]; then
  echo "Injecting OCR module dex (classes5.dex; models/libs downloaded at runtime)..."
  (
    STAGE="$(mktemp -d)"
    cp -f "${BUNDLED_OCR_DEX}" "${STAGE}/classes5.dex"
    (cd "${STAGE}" && zip -q -0 -j "${MERGED_APK}" classes5.dex)
    rm -rf "${STAGE}"
  )
else
  echo "warning: OCR module dex missing; text recognition may fall back to Play optional modules"
fi

if [[ -f "${INSTALLER_DEX}" ]]; then
  echo "Injecting OCR runtime installer dex (classes6.dex)..."
  (
    STAGE="$(mktemp -d)"
    cp -f "${INSTALLER_DEX}" "${STAGE}/classes6.dex"
    (cd "${STAGE}" && zip -q -0 -j "${MERGED_APK}" classes6.dex)
    rm -rf "${STAGE}"
  )
else
  echo "warning: OCR runtime installer dex missing"
fi

if [[ -f "${WARP_DEX}" ]]; then
  echo "Injecting WARP runtime dex (classes7.dex)..."
  (
    STAGE="$(mktemp -d)"
    cp -f "${WARP_DEX}" "${STAGE}/classes7.dex"
    (cd "${STAGE}" && zip -q -0 -j "${MERGED_APK}" classes7.dex)
    rm -rf "${STAGE}"
  )
else
  echo "warning: WARP runtime dex missing"
fi

if [[ -d "${SPLITS_DIR}" ]]; then
  echo "Merging native libraries from split APKs..."
  TMP_DIR="$(mktemp -d)"
  shopt -s nullglob
  for split_apk in "${SPLITS_DIR}"/config.*.apk "${SPLITS_DIR}"/split_config.*.apk; do
    [[ -f "${split_apk}" ]] || continue
    # Do not use grep -q here: with pipefail, early grep exit SIGPIPEs unzip
    # (status 141) and falsely skips splits that do contain native libs.
    if unzip -l "${split_apk}" | grep ' lib/' >/dev/null; then
      echo "  extracting libs from $(basename "${split_apk}")"
      unzip -q -o "${split_apk}" "lib/*" -d "${TMP_DIR}"
    fi
  done
  shopt -u nullglob
  if [[ -d "${TMP_DIR}/lib" ]]; then
    (cd "${TMP_DIR}" && zip -q -r "${MERGED_APK}" lib/)
    find "${TMP_DIR}/lib" -type f -name '*.so' | sed 's|.*/lib/|    lib/|'
  else
    echo "  warning: no native libraries found in splits/"
  fi
  rm -rf "${TMP_DIR}"
fi

BUNDLED_WARP_DIR="${ROOT_DIR}/bundled-warp"
SOULAMZ_SO="${BUNDLED_WARP_DIR}/lib/arm64-v8a/libsoulamz.so"
SOULAMZ_INPUTS="${BUNDLED_WARP_DIR}/soulamz.inputs"
SOULAMZ_STAMP_SCRIPT="${ROOT_DIR}/scripts/soulamz-stamp.sh"
need_soulamz_build=0
current_soulamz_hash=""
if [[ -f "${SOULAMZ_STAMP_SCRIPT}" ]]; then
  current_soulamz_hash="$(bash "${SOULAMZ_STAMP_SCRIPT}" hash)"
fi
saved_soulamz_hash=""
if [[ -f "${SOULAMZ_INPUTS}" ]]; then
  saved_soulamz_hash="$(tr -d '[:space:]' < "${SOULAMZ_INPUTS}")"
fi
if [[ ! -f "${SOULAMZ_SO}" ]]; then
  need_soulamz_build=1
elif [[ -z "${current_soulamz_hash}" || "${current_soulamz_hash}" != "${saved_soulamz_hash}" ]]; then
  need_soulamz_build=1
fi
if [[ "${need_soulamz_build}" -eq 1 ]]; then
  if [[ -x "${ROOT_DIR}/scripts/build-soulamz.sh" ]] && command -v go >/dev/null 2>&1; then
    echo "Building soulamz native binaries..."
    "${ROOT_DIR}/scripts/build-soulamz.sh"
  fi
fi
if [[ -d "${BUNDLED_WARP_DIR}/lib" ]]; then
  echo "Merging soulamz native libraries..."
  (cd "${BUNDLED_WARP_DIR}" && zip -q -r "${MERGED_APK}" lib/)
  find "${BUNDLED_WARP_DIR}/lib" -type f -name 'libsoulamz.so' | sed 's|.*/lib/|    lib/|'
else
  echo "warning: bundled-warp/lib missing; WARP proxy binary will be unavailable"
fi

# Signing: prefer SOUL_* env vars (CI/release). Local builds fall back to a
# generated debug keystore under keystore/debug.keystore.
KEYSTORE="${SOUL_KEYSTORE:-}"
KEY_ALIAS="${SOUL_KEY_ALIAS:-soulbrowser}"
if [[ -n "${KEYSTORE}" ]]; then
  if [[ ! -f "${KEYSTORE}" ]]; then
    echo "error: SOUL_KEYSTORE not found: ${KEYSTORE}" >&2
    exit 1
  fi
  if [[ -z "${SOUL_KEYSTORE_PASSWORD:-}" || -z "${SOUL_KEY_PASSWORD:-}" ]]; then
    echo "error: SOUL_KEYSTORE_PASSWORD and SOUL_KEY_PASSWORD must be set with SOUL_KEYSTORE" >&2
    exit 1
  fi
  echo "Using release keystore: ${KEYSTORE} (alias=${KEY_ALIAS})"
else
  KEYSTORE="${ROOT_DIR}/keystore/debug.keystore"
  export SOUL_KEYSTORE_PASSWORD="${SOUL_KEYSTORE_PASSWORD:-android}"
  export SOUL_KEY_PASSWORD="${SOUL_KEY_PASSWORD:-android}"
  if [[ ! -f "${KEYSTORE}" ]]; then
    echo "Generating debug keystore..."
    mkdir -p "$(dirname "${KEYSTORE}")"
    keytool -genkeypair -v \
      -keystore "${KEYSTORE}" \
      -alias "${KEY_ALIAS}" \
      -keyalg RSA \
      -keysize 2048 \
      -validity 10000 \
      -storepass "${SOUL_KEYSTORE_PASSWORD}" \
      -keypass "${SOUL_KEY_PASSWORD}" \
      -dname "CN=Soul Browser Debug, OU=Dev, O=Soul Browser, L=Unknown, ST=Unknown, C=FR"
  fi
  echo "Using debug keystore: ${KEYSTORE} (alias=${KEY_ALIAS})"
fi

ALIGNED_APK="${DIST_DIR}/${OUTPUT_NAME}-aligned.apk"
SIGNED_APK="${DIST_DIR}/${OUTPUT_NAME}.apk"

ZIPALIGN="$(find_zipalign || true)"
if [[ -n "${ZIPALIGN}" ]]; then
  "${ZIPALIGN}" -f -p 4 "${MERGED_APK}" "${ALIGNED_APK}"
else
  echo "warning: zipalign not found, skipping alignment"
  cp "${MERGED_APK}" "${ALIGNED_APK}"
fi

APKSIGNER="$(find_apksigner || true)"
if [[ -z "${APKSIGNER}" ]]; then
  echo "error: apksigner not found. Install Android build-tools (targetSdk 36 requires signature scheme v2+)." >&2
  exit 1
fi

echo "Signing with apksigner (v1+v2+v3)..."
"${APKSIGNER}" sign \
  --ks "${KEYSTORE}" \
  --ks-key-alias "${KEY_ALIAS}" \
  --ks-pass env:SOUL_KEYSTORE_PASSWORD \
  --key-pass env:SOUL_KEY_PASSWORD \
  --v1-signing-enabled true \
  --v2-signing-enabled true \
  --v3-signing-enabled true \
  --out "${SIGNED_APK}" \
  "${ALIGNED_APK}"

echo "Verifying signature..."
"${APKSIGNER}" verify --verbose "${SIGNED_APK}"

echo "Built APK: ${SIGNED_APK}"
ls -lh "${DIST_DIR}/"
