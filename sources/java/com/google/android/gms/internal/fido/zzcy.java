package com.google.android.gms.internal.fido;

/* loaded from: classes3.dex */
public final class zzcy {
    public static int a(zzcf zzcfVar) {
        int i;
        int i2 = 0;
        for (Object obj : zzcfVar) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 += i;
        }
        return i2;
    }
}
