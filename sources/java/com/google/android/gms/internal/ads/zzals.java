package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzals {
    public static void a(zzalt zzaltVar, zzdr zzdrVar) {
        for (int i = 0; i < zzaltVar.zza(); i++) {
            long zzb = zzaltVar.zzb(i);
            ArrayList b = zzaltVar.b(zzb);
            if (!b.isEmpty()) {
                if (i != zzaltVar.zza() - 1) {
                    long zzb2 = zzaltVar.zzb(i + 1) - zzaltVar.zzb(i);
                    if (zzb2 > 0) {
                        ((zzama) zzdrVar).zza(new zzalq(b, zzb, zzb2));
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
        }
    }
}
