package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class zzgqw {
    public static zzgqs a(zzgqs zzgqsVar) {
        if (!(zzgqsVar instanceof zzgqv)) {
            if (zzgqsVar instanceof zzgqt) {
                return zzgqsVar;
            }
            if (zzgqsVar instanceof Serializable) {
                return new zzgqt(zzgqsVar);
            }
            return new zzgqv(zzgqsVar);
        }
        return zzgqsVar;
    }
}
