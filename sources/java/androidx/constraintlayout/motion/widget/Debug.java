package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.media.a;

@SuppressLint({"LogConditional"})
/* loaded from: classes.dex */
public class Debug {
    public static String a(Context context, int i) {
        if (i != -1) {
            try {
                return context.getResources().getResourceEntryName(i);
            } catch (Exception unused) {
                return a.e(i, "?");
            }
        }
        return "UNKNOWN";
    }
}
