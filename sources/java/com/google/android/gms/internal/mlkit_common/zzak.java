package com.google.android.gms.internal.mlkit_common;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
public final class zzak {
    public static void a(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(a.e(i2, "at index "));
            }
        }
    }
}
