package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;

/* loaded from: classes.dex */
public final class zzee {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f6412a = new Object();

    public static void a(String str, String str2) {
        synchronized (f6412a) {
            Log.d(str, g(str2, null));
        }
    }

    public static void b(String str, String str2) {
        synchronized (f6412a) {
            Log.i(str, g(str2, null));
        }
    }

    public static void c(String str, String str2) {
        synchronized (f6412a) {
            Log.w(str, g(str2, null));
        }
    }

    public static void d(String str, String str2, Throwable th) {
        synchronized (f6412a) {
            Log.w(str, g(str2, th));
        }
    }

    public static void e(String str, String str2) {
        synchronized (f6412a) {
            Log.e(str, g(str2, null));
        }
    }

    public static void f(String str, String str2, Throwable th) {
        synchronized (f6412a) {
            Log.e(str, g(str2, th));
        }
    }

    public static String g(String str, Throwable th) {
        String replace;
        if (th == null) {
            replace = null;
        } else {
            synchronized (f6412a) {
                Throwable th2 = th;
                while (true) {
                    if (th2 != null) {
                        try {
                            if (th2 instanceof UnknownHostException) {
                                replace = "UnknownHostException (no network)";
                            } else {
                                th2 = th2.getCause();
                            }
                        } finally {
                        }
                    } else {
                        replace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                        break;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(replace)) {
            String replace2 = replace.replace("\n", "\n  ");
            int length = String.valueOf(str).length();
            return android.support.v4.media.a.r(new StringBuilder(String.valueOf(replace2).length() + length + 3 + 1), str, "\n  ", replace2, "\n");
        }
        return str;
    }
}
