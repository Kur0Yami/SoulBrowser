package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes.dex */
final class zzgxr extends zzgxp {
    @Override // com.google.android.gms.internal.ads.zzgxp
    public final void a(zzgxo zzgxoVar, Set set) {
        synchronized (zzgxoVar) {
            try {
                if (zzgxoVar.l == null) {
                    zzgxoVar.l = set;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int b(zzgxo zzgxoVar) {
        int i;
        synchronized (zzgxoVar) {
            i = zzgxoVar.m - 1;
            zzgxoVar.m = i;
        }
        return i;
    }
}
