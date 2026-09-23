package com.google.android.datatransport.runtime.logging;

import android.os.Build;
import android.util.Log;

/* loaded from: classes.dex */
public final class Logging {
    public static void a(Object obj, String str, String str2) {
        String d = d(str);
        if (Log.isLoggable(d, 3)) {
            Log.d(d, String.format(str2, obj));
        }
    }

    public static void b(String str, String str2, Object... objArr) {
        String d = d(str);
        if (Log.isLoggable(d, 3)) {
            Log.d(d, String.format(str2, objArr));
        }
    }

    public static void c(String str, String str2, Exception exc) {
        String d = d(str);
        if (Log.isLoggable(d, 6)) {
            Log.e(d, str2, exc);
        }
    }

    public static String d(String str) {
        if (Build.VERSION.SDK_INT < 26) {
            String concat = "TRuntime.".concat(str);
            if (concat.length() > 23) {
                return concat.substring(0, 23);
            }
            return concat;
        }
        return "TRuntime.".concat(str);
    }
}
