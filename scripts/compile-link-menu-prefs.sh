#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${ROOT_DIR}/sources/java/com/mycompany/app/pref/LinkMenuPrefs.java"
OUT_SMALI="${ROOT_DIR}/app/smali_classes3/com/mycompany/app/pref"
TOOLS="${ROOT_DIR}/tools"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1)"
APK="$(ls -1 "${ROOT_DIR}/dist"/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
if [[ -z "${APK}" || ! -f "${APK}" ]]; then
  APK="$(ls -1 /home/kaki/.t3/worktrees/soul-browser/*/dist/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
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
chmod +x "${DEX_TOOLS_DIR}/"*.sh "${DEX_TOOLS_DIR}/d2j_invoke.sh" 2>/dev/null || true

if [[ ! -f "${BAKSMALI_JAR}" ]]; then
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
    bash "${DEX_TOOLS_DIR}/d2j-dex2jar.sh" --force "${STAGE}/${dex}" -o "${jar}" >/dev/null
    CP="${CP}:${jar}"
  fi
done

STUBS="${STAGE}/stubs"
mkdir -p "${STUBS}/com/mycompany/app/pref" "${STUBS}/com/google/gson" "${STUBS}/com/google/android/gms/ads"

cat > "${STUBS}/com/google/android/gms/ads/RequestConfiguration.java" <<'EOF'
package com.google.android.gms.ads;
public final class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
}
EOF

cat > "${STUBS}/com/google/gson/JsonElement.java" <<'EOF'
package com.google.gson;
public class JsonElement {}
EOF

cat > "${STUBS}/com/google/gson/JsonNull.java" <<'EOF'
package com.google.gson;
public final class JsonNull extends JsonElement {}
EOF

cat > "${STUBS}/com/google/gson/JsonObject.java" <<'EOF'
package com.google.gson;
public final class JsonObject {
    public JsonElement r(String key) { return null; }
}
EOF

cat > "${STUBS}/com/mycompany/app/pref/PrefCore.java" <<'EOF'
package com.mycompany.app.pref;
import com.google.gson.JsonObject;
public class PrefCore {
    public JsonObject e;
    public int f(String k, int d) { return d; }
    public String h(String k, String d) { return d; }
    public void n(int v, String k) {}
    public void p(String k, String v) {}
    public void a() {}
}
EOF

echo "Compiling LinkMenuPrefs..."
javac --release 11 -cp "${CP}:${STUBS}" -d "${STAGE}/classes" "${SRC}"
mkdir -p "${STAGE}/dex"
"${D8}" --min-api 23 --lib "${ANDROID_JAR}" --output "${STAGE}/dex" \
  "${STAGE}/classes/com/mycompany/app/pref/LinkMenuPrefs.class"
if [[ -x "${DEX_TOOLS_DIR}/d2j-baksmali.sh" ]]; then
  bash "${DEX_TOOLS_DIR}/d2j-baksmali.sh" -f -o "${STAGE}/out" "${STAGE}/dex/classes.dex"
else
  java -cp "${BAKSMALI_JAR}" org.jf.baksmali.Main d "${STAGE}/dex/classes.dex" -o "${STAGE}/out"
fi
cp -f "${STAGE}/out/com/mycompany/app/pref/LinkMenuPrefs.smali" "${OUT_SMALI}/"
echo "Wrote ${OUT_SMALI}/LinkMenuPrefs.smali"
