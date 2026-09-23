#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_DIR="${ROOT_DIR}/sources/java/com/mycompany/app/view"
OUT_SMALI="${ROOT_DIR}/app/smali_classes3/com/mycompany/app/view"
TOOLS="${ROOT_DIR}/tools"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
ANDROID_JAR="$(ls -1 "${ANDROID_HOME}/platforms"/android-*/android.jar 2>/dev/null | sort -V | tail -1)"
D8="$(find "${ANDROID_HOME}/build-tools" -name d8 -type f 2>/dev/null | sort -V | tail -1)"
DEX_TOOLS_DIR="${TOOLS}/dex-tools-v2.4"

mkdir -p "${TOOLS}" "${OUT_SMALI}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "error: android.jar not found" >&2
  exit 1
fi
if [[ -z "${D8}" ]]; then
  echo "error: d8 not found" >&2
  exit 1
fi
if [[ ! -x "${DEX_TOOLS_DIR}/d2j-baksmali.sh" ]]; then
  echo "error: dex-tools baksmali missing; run compile-find-whole-word.sh once" >&2
  exit 1
fi

STAGE="$(mktemp -d)"
cleanup() { rm -rf "${STAGE}"; }
trap cleanup EXIT

STUBS="${STAGE}/stubs"
mkdir -p \
  "${STUBS}/com/mycompany/app/dialog" \
  "${STUBS}/com/mycompany/app/main" \
  "${STUBS}/com/mycompany/app/soulbrowser" \
  "${STUBS}/com/mycompany/app/view" \
  "${STUBS}/androidx/appcompat/widget"

cat > "${STUBS}/com/mycompany/app/dialog/DialogSetFull.java" <<'EOF'
package com.mycompany.app.dialog;
public class DialogSetFull {
    public interface DialogApplyListener { void a(); }
}
EOF

cat > "${STUBS}/com/mycompany/app/main/MainApp.java" <<'EOF'
package com.mycompany.app.main;
public class MainApp {
    public static int g1;
    public static int Y0;
    public static int F1;
    public static int E1;
    public static int G1;
    public static int a1;
}
EOF

cat > "${STUBS}/com/mycompany/app/main/MainUtil.java" <<'EOF'
package com.mycompany.app.main;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
public class MainUtil {
    public static void c8(Context c, View v) {}
    public static void X4(Context c, View v) {}
    public static void c5(EditText e) {}
    public static String Q0(EditText e, boolean z) { return ""; }
    public static int s0(int i, boolean z) { return 0; }
    public static boolean C5(boolean z) { return false; }
    public static int P1(int i, int j) { return 0; }
}
EOF

cat > "${STUBS}/com/mycompany/app/soulbrowser/R.java" <<'EOF'
package com.mycompany.app.soulbrowser;
public final class R {
    public static final class drawable {
        public static int edit_cursor = 0x7f080001;
        public static int outline_chevron_left_black_24 = 0x7f080002;
        public static int outline_chevron_left_dark_24 = 0x7f080003;
        public static int outline_cancel_black_18 = 0x7f080004;
        public static int outline_cancel_dark_18 = 0x7f080005;
        public static int outline_match_case_black_24 = 0x7f0804eb;
        public static int outline_match_case_dark_24 = 0x7f0804ec;
        public static int outline_match_word_black_24 = 0x7f0804e9;
        public static int outline_match_word_dark_24 = 0x7f0804ea;
        public static int outline_keyboard_arrow_up_black_24 = 0x7f080006;
        public static int outline_keyboard_arrow_up_dark_24 = 0x7f080007;
        public static int outline_keyboard_arrow_down_black_24 = 0x7f080008;
        public static int outline_keyboard_arrow_down_dark_24 = 0x7f080009;
    }
    public static final class string {
        public static int find_word = 0x7f1201c4;
    }
}
EOF

cat > "${STUBS}/com/mycompany/app/view/MyIconView.java" <<'EOF'
package com.mycompany.app.view;
import android.content.Context;
import android.widget.ImageView;
public class MyIconView extends ImageView {
    public MyIconView(Context c) { super(c); }
    public void v(boolean a, boolean b) {}
    public void m() {}
    public void setMaxAlpha(float f) {}
    public void setBgPreColor(int i) {}
    public static int k(int a, boolean b) { return 0; }
    public static int l(int a, int b, boolean c) { return 0; }
    public static float i(int a) { return 1f; }
}
EOF

cat > "${STUBS}/com/mycompany/app/view/MyEditPure.java" <<'EOF'
package com.mycompany.app.view;
import android.content.Context;
import androidx.appcompat.widget.AppCompatEditText;
public class MyEditPure extends AppCompatEditText {
    public MyEditPure(Context c) { super(c); }
}
EOF

cat > "${STUBS}/com/mycompany/app/view/MyTextFast.java" <<'EOF'
package com.mycompany.app.view;
import android.content.Context;
import androidx.appcompat.widget.AppCompatTextView;
public class MyTextFast extends AppCompatTextView {
    public MyTextFast(Context c) { super(c); }
}
EOF

cat > "${STUBS}/androidx/appcompat/widget/AppCompatEditText.java" <<'EOF'
package androidx.appcompat.widget;
import android.content.Context;
import android.widget.EditText;
public class AppCompatEditText extends EditText {
    public AppCompatEditText(Context c) { super(c); }
}
EOF

cat > "${STUBS}/androidx/appcompat/widget/AppCompatTextView.java" <<'EOF'
package androidx.appcompat.widget;
import android.content.Context;
import android.widget.TextView;
public class AppCompatTextView extends TextView {
    public AppCompatTextView(Context c) { super(c); }
}
EOF

# Real FindWholeWordHelper source for compile
cp "${SRC_DIR}/FindWholeWordHelper.java" "${STUBS}/com/mycompany/app/view/"

echo "Compiling stubs..."
javac --release 11 -classpath "${ANDROID_JAR}" -d "${STAGE}/stub-classes" \
  "${STUBS}/com/mycompany/app/dialog/DialogSetFull.java" \
  "${STUBS}/com/mycompany/app/main/MainApp.java" \
  "${STUBS}/com/mycompany/app/main/MainUtil.java" \
  "${STUBS}/com/mycompany/app/soulbrowser/R.java" \
  "${STUBS}/androidx/appcompat/widget/AppCompatEditText.java" \
  "${STUBS}/androidx/appcompat/widget/AppCompatTextView.java" \
  "${STUBS}/com/mycompany/app/view/MyIconView.java" \
  "${STUBS}/com/mycompany/app/view/MyEditPure.java" \
  "${STUBS}/com/mycompany/app/view/MyTextFast.java" \
  "${STUBS}/com/mycompany/app/view/FindWholeWordHelper.java"

echo "Compiling MyFindView.java..."
javac --release 11 -classpath "${STAGE}/stub-classes:${ANDROID_JAR}" \
  -d "${STAGE}/classes" "${SRC_DIR}/MyFindView.java"

echo "Dexing..."
mkdir -p "${STAGE}/out"
find "${STAGE}/classes" -name '*.class' > "${STAGE}/classlist.txt"
mapfile -t CLASSES < "${STAGE}/classlist.txt"
"${D8}" --release --output "${STAGE}/out" "${CLASSES[@]}"

echo "Disassembling..."
bash "${DEX_TOOLS_DIR}/d2j-baksmali.sh" -f -o "${STAGE}/smali" "${STAGE}/out/classes.dex"

# Remap R package to testing app id used in smali
find "${STAGE}/smali" -name 'MyFindView*.smali' -print0 | xargs -0 sed -i \
  's/Lcom\/mycompany\/app\/soulbrowser\/R\$/Lnet\/kaki87\/soul2\/testing\/R$/g'

# Keep FindWholeWordHelper in smali_classes4; only replace MyFindView*
rm -f "${OUT_SMALI}"/MyFindView*.smali
cp -f "${STAGE}/smali/com/mycompany/app/view/"MyFindView*.smali "${OUT_SMALI}/"

# d2j-baksmali emits const/high16 with the high 16 bits only; apktool wants the
# full 32-bit value with the low 16 bits zeroed. Also harden MainApp.E1 loads.
OUT_SMALI="${OUT_SMALI}" python3 - <<'PY'
from pathlib import Path
import os, re
out = Path(os.environ["OUT_SMALI"])
fixes = {
    '16256': '0x3f800000',
    '16768': '0x41800000',
    '16384': '0x40000000',
    '-256': '-0x1000000',
}
for f in out.glob("MyFindView*.smali"):
    t = f.read_text()
    for half, full in fixes.items():
        t = re.sub(rf"const/high16 (\w+), {re.escape(half)}\b", rf"const/high16 \1, {full}", t)
    t = t.replace("const v1, 1053609165", "const v1, 0x3ecccccd")
    t = t.replace("const v2, 1055286886", "const v2, 0x3ee66666")
    t = re.sub(
        r"sget (\w+), Lcom/mycompany/app/main/MainApp;->E1:F\n",
        r"sget \1, Lcom/mycompany/app/main/MainApp;->E1:I\n    int-to-float \1, \1\n",
        t,
    )
    t = t.replace(
        "MainUtil;->c8(Landroid/content/Context;Landroid/widget/EditText;)V",
        "MainUtil;->c8(Landroid/content/Context;Landroid/view/View;)V",
    )
    t = t.replace(
        "MainUtil;->X4(Landroid/content/Context;Landroid/widget/EditText;)V",
        "MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V",
    )
    f.write_text(t)
print("normalized", len(list(out.glob('MyFindView*.smali'))), "MyFindView smali files")
PY

echo "Wrote $(ls "${OUT_SMALI}"/MyFindView*.smali | wc -l) MyFindView smali file(s)"
