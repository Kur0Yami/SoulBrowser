package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzyo extends zzyq {
    public static void a(ArrayList arrayList, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            zzgta zzgtaVar = (zzgta) arrayList.get(i2);
            if (zzgtaVar != null) {
                zzgtaVar.c(new zzym(j, jArr[i2]));
            }
        }
    }
}
