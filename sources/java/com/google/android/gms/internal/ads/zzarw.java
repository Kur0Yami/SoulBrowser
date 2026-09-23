package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzarw {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f4376a = Log.isLoggable("Volley", 2);
    public static final String b = zzarw.class.getName();

    public static void a(String str, Object... objArr) {
        if (f4376a) {
            Log.v("Volley", d(str, objArr));
        }
    }

    public static void b(String str, Object... objArr) {
        Log.d("Volley", d(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e("Volley", d(str, objArr));
    }

    public static String d(String str, Object... objArr) {
        String str2;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i < stackTrace.length) {
                if (!stackTrace[i].getClassName().equals(b)) {
                    String className = stackTrace[i].getClassName();
                    String substring = className.substring(className.lastIndexOf(46) + 1);
                    String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                    String methodName = stackTrace[i].getMethodName();
                    str2 = android.support.v4.media.a.q(new StringBuilder(androidx.work.impl.workers.a.e(1, substring2) + String.valueOf(methodName).length()), substring2, ".", methodName);
                    break;
                }
                i++;
            } else {
                str2 = "<unknown>";
                break;
            }
        }
        Locale locale = Locale.US;
        long id = Thread.currentThread().getId();
        StringBuilder sb = new StringBuilder("[");
        sb.append(id);
        sb.append("] ");
        sb.append(str2);
        return android.support.v4.media.a.p(sb, ": ", format);
    }
}
