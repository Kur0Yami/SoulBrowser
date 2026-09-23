package com.nostra13.universalimageloader.utils;

import android.util.Log;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class L {
    public static void a(Throwable th) {
        b(6, th, null, new Object[0]);
    }

    public static void b(int i, Throwable th, String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        if (th != null) {
            if (str == null) {
                str = th.getMessage();
            }
            str = String.format(Locale.US, "%1$s\n%2$s", str, Log.getStackTraceString(th));
        }
        Log.println(i, "ImageLoader", str);
    }
}
