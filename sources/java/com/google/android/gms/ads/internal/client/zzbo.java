package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public final class zzbo extends zzbcb implements zzbq {
    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zze(zzm zzmVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzmVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zzf() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final boolean zzg() {
        boolean z;
        Parcel f2 = f2(3, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zzh() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzi(zzm zzmVar, int i) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzmVar);
        I1.writeInt(i);
        r2(5, I1);
    }
}
