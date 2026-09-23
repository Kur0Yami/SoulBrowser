package com.google.android.gms.internal.common;

import androidx.work.impl.workers.a;

/* loaded from: classes.dex */
public final class zzai {
    public static void a(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(a.r(i2, "at index ", new StringBuilder(String.valueOf(i2).length() + 9)));
            }
        }
    }
}
