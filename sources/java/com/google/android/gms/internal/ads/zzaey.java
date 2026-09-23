package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaey {
    public static zzafa a(zzer zzerVar) {
        zzerVar.G(1);
        int O = zzerVar.O();
        long j = zzerVar.b;
        long j2 = O;
        int i = O / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long d = zzerVar.d();
            if (d == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = d;
            jArr2[i2] = zzerVar.d();
            zzerVar.G(2);
            i2++;
        }
        zzerVar.G((int) ((j + j2) - zzerVar.b));
        return new zzafa(jArr, jArr2);
    }
}
