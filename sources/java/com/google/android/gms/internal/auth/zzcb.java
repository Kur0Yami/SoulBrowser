package com.google.android.gms.internal.auth;

import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzcb {

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f9501a = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Pattern b;

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f9502c;
    public static final AtomicBoolean d;
    public static HashMap e;
    public static final HashMap f;
    public static final HashMap g;
    public static final HashMap h;
    public static final HashMap i;
    public static Object j;
    public static final String[] k;

    static {
        Uri.parse("content://com.google.android.gsf.gservices/prefix");
        b = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
        f9502c = Pattern.compile("^(0|false|f|off|no|n)$", 2);
        d = new AtomicBoolean();
        f = new HashMap(16, 1.0f);
        g = new HashMap(16, 1.0f);
        h = new HashMap(16, 1.0f);
        i = new HashMap(16, 1.0f);
        k = new String[0];
    }

    public static void a(Object obj, String str, String str2) {
        synchronized (zzcb.class) {
            try {
                if (obj == j) {
                    e.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
