package com.google.android.gms.internal.ads;

import java.util.HashSet;

/* loaded from: classes.dex */
public final class zzal {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f4150a = new HashSet();
    public static String b = "media3.common";

    public static synchronized void a(String str) {
        synchronized (zzal.class) {
            if (f4150a.add(str)) {
                String str2 = b;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 2 + str.length());
                sb.append(str2);
                sb.append(", ");
                sb.append(str);
                b = sb.toString();
            }
        }
    }
}
