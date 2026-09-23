#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${ROOT_DIR}/sources/java/com/mycompany/app/web/TextSelectMenu.java"
OUT_SMALI="${ROOT_DIR}/app/smali_classes4/com/mycompany/app/web"
TOOLS="${ROOT_DIR}/tools"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1)"
APK="$(ls -1 "${ROOT_DIR}/dist"/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
if [[ -z "${APK}" || ! -f "${APK}" ]]; then
  APK="$(ls -1 "${ROOT_DIR}/../soul-browser/dist"/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
fi
if [[ -z "${APK}" || ! -f "${APK}" ]]; then
  APK="$(ls -1 /home/kaki/.t3/worktrees/soul-browser/*/dist/soul-browser-*-merged-unsigned.apk 2>/dev/null | sort | tail -1 || true)"
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
      "https://github.com/pxb1988/dex2jar/downloads/v2.4/dex-tools-v2.4.zip" \
      2>/dev/null || curl -fsSL -o "${DEX_TOOLS_ZIP}" \
      "https://github.com/pxb1988/dex2jar/releases/download/v2.4/dex-tools-v2.4.zip"
  fi
  unzip -qo "${DEX_TOOLS_ZIP}" -d "${TOOLS}"
fi
D2J="${DEX_TOOLS_DIR}/d2j-dex2jar.sh"
chmod +x "${DEX_TOOLS_DIR}/"*.sh "${DEX_TOOLS_DIR}/d2j_invoke.sh" 2>/dev/null || true

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

# Stubs for fields/APIs added in this PR but missing from the baseline APK jars.
STUBS="${STAGE}/stubs"
mkdir -p "${STUBS}/com/mycompany/app/pref" \
  "${STUBS}/com/mycompany/app/dialog" \
  "${STUBS}/com/mycompany/app/web" \
  "${STUBS}/com/mycompany/app/soulbrowser" \
  "${STUBS}/com/mycompany/app/view" \
  "${STUBS}/com/mycompany/app/main"

cat > "${STUBS}/com/mycompany/app/pref/PrefWeb.java" <<'EOF'
package com.mycompany.app.pref;
import android.content.Context;
public class PrefWeb {
    public static int h0;
    public static String i0;
    public static PrefWeb r(Context c, boolean z) { return null; }
    public void n(int v, String k) {}
    public void p(String k, String v) {}
    public void q(String k) {}
    public void a() {}
}
EOF

cat > "${STUBS}/com/mycompany/app/dialog/DialogSetFull.java" <<'EOF'
package com.mycompany.app.dialog;
public class DialogSetFull {
    public interface DialogApplyListener { void a(); }
}
EOF

cat > "${STUBS}/com/mycompany/app/dialog/DialogSetPopup.java" <<'EOF'
package com.mycompany.app.dialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
public class DialogSetPopup extends Dialog {
    public static final int[] w0 = new int[7];
    public WebViewActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public int d0;
    public int l0;
    public String m0;
    public ArrayList n0;
    public DialogSetPopup(Context c) { super(c); }
    public ArrayList C(boolean z) { return null; }
    public void G() {}
    public void dismiss() {}
}
EOF

cat > "${STUBS}/com/mycompany/app/web/WebViewActivity.java" <<'EOF'
package com.mycompany.app.web;
import android.app.Activity;
import android.content.Context;
import android.view.ActionMode;
import com.mycompany.app.dialog.DialogSetPopup;
import com.mycompany.app.view.MyWebBody;
public class WebViewActivity extends Activity {
    public Context i1;
    public WebNestView I2;
    public MyWebBody e2;
    public ActionMode l9;
    public DialogSetPopup dA;
    public String Ao;
    public boolean j9;
    public void m8(String a, String b) {}
    public void S5(String a, String b) {}
    public void i5(String a) {}
    public void G9(String a, int i, String b, boolean z) {}
    public boolean z5() { return false; }
}
EOF

cat > "${STUBS}/com/mycompany/app/web/WebNestView.java" <<'EOF'
package com.mycompany.app.web;
import android.content.Context;
import android.webkit.ValueCallback;
import android.webkit.WebView;
public class WebNestView extends WebView {
    public WebNestView(Context c) { super(c); }
    public void evaluateJavascript(String s, ValueCallback<String> cb) {}
}
EOF

cat > "${STUBS}/com/mycompany/app/view/MyWebBody.java" <<'EOF'
package com.mycompany.app.view;
import android.content.Context;
import android.widget.FrameLayout;
public class MyWebBody extends FrameLayout {
    public MyWebBody(Context c) { super(c); }
}
EOF

cat > "${STUBS}/com/mycompany/app/main/MainUtil.java" <<'EOF'
package com.mycompany.app.main;
import android.content.Context;
import android.webkit.WebView;
public class MainUtil {
    public static void I(WebView w, String js, boolean b) {}
    public static void s(int id, Context c, String t, String v) {}
    public static void e8(Context c, int id) {}
    public static String q4(Context c, String q) { return null; }
    public static String X6(String s) { return null; }
    public static int[] g3(int i, boolean z) { return new int[0]; }
}
EOF

cat > "${STUBS}/com/mycompany/app/main/MainApp.java" <<'EOF'
package com.mycompany.app.main;
public class MainApp {
    public static boolean K1;
}
EOF

# Minimal R with IDs used by TextSelectMenu (matches public.xml / R$string).
cat > "${STUBS}/com/mycompany/app/soulbrowser/R.java" <<'EOF'
package com.mycompany.app.soulbrowser;
public final class R {
    public static final class string {
        public static int copy_text = 0x7f120138;
        public static int share = 0x7f12047a;
        public static int select_all = 0x7f1205af;
        public static int search_url = 0x7f120461;
        public static int google_trans = 0x7f1201ed;
        public static int empty = 0x7f120195;
        public static int copied_clipboard = 0x7f120135;
    }
    public static final class drawable {
        public static int outline_settings_black_24 = 0x7f080456;
        public static int outline_settings_dark_24 = 0x7f080458;
    }
}
EOF

echo "Compiling stubs..."
javac --release 11 -classpath "${CP}" -d "${STAGE}/stub-classes" \
  "${STUBS}/com/mycompany/app/pref/PrefWeb.java" \
  "${STUBS}/com/mycompany/app/dialog/DialogSetFull.java" \
  "${STUBS}/com/mycompany/app/dialog/DialogSetPopup.java" \
  "${STUBS}/com/mycompany/app/web/WebNestView.java" \
  "${STUBS}/com/mycompany/app/view/MyWebBody.java" \
  "${STUBS}/com/mycompany/app/web/WebViewActivity.java" \
  "${STUBS}/com/mycompany/app/main/MainUtil.java" \
  "${STUBS}/com/mycompany/app/main/MainApp.java" \
  "${STUBS}/com/mycompany/app/soulbrowser/R.java"

echo "Compiling TextSelectMenu.java..."
javac --release 11 -classpath "${STAGE}/stub-classes:${CP}" -d "${STAGE}/classes" "${SRC}"

echo "Dexing compiled classes..."
mkdir -p "${STAGE}/out"
("${D8}" --release --lib "${ANDROID_JAR}" --output "${STAGE}/out" "${STAGE}/classes/com/mycompany/app/web/"*.class)

echo "Disassembling to smali..."
if [[ -x "${DEX_TOOLS_DIR}/d2j-baksmali.sh" ]]; then
  bash "${DEX_TOOLS_DIR}/d2j-baksmali.sh" -f -o "${STAGE}/smali" "${STAGE}/out/classes.dex"
else
  java -jar "${BAKSMALI_JAR}" d "${STAGE}/out/classes.dex" -o "${STAGE}/smali"
fi

# Remap R package to the app id used in smali.
find "${STAGE}/smali" -name '*.smali' -print0 | xargs -0 sed -i \
  's/Lcom\/mycompany\/app\/soulbrowser\/R\$/Lnet\/kaki87\/soul2\/testing\/R$/g'

# DialogSetPopup has no <init>; construction goes through MyDialogBottom.
find "${STAGE}/smali" -name 'TextSelectMenu*.smali' -print0 | xargs -0 sed -i \
  -e 's/Lcom\/mycompany\/app\/dialog\/DialogSetPopup;-><init>(Landroid\/content\/Context;)V/Lcom\/mycompany\/app\/view\/MyDialogBottom;-><init>(Landroid\/content\/Context;)V/g' \
  -e 's/Lcom\/mycompany\/app\/dialog\/DialogSetPopup;->getContext()/Landroid\/app\/Dialog;->getContext()/g' \
  -e 's/\\u002d\$\$Nest\$/-$$Nest$/g'

mkdir -p "${OUT_SMALI}"
rm -f "${OUT_SMALI}"/TextSelectMenu*.smali
cp -a "${STAGE}/smali/com/mycompany/app/web/TextSelectMenu"* "${OUT_SMALI}/"
echo "Wrote smali under ${OUT_SMALI}"
ls -1 "${OUT_SMALI}"/TextSelectMenu*
