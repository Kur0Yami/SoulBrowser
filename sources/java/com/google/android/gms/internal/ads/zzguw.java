package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzguw {
    public static void a(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            b(i2, objArr[i2]);
        }
    }

    public static void b(int i, Object obj) {
        if (obj != null) {
        } else {
            throw new NullPointerException(androidx.work.impl.workers.a.r(i, "at index ", new StringBuilder(String.valueOf(i).length() + 9)));
        }
    }
}
