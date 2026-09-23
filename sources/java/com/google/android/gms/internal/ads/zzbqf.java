package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbqf extends zzbcb implements zzbqh {
    @Override // com.google.android.gms.internal.ads.zzbqh
    public final void I4(zzbqb zzbqbVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbqbVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbqh
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbqh
    public final void zzf(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(2, I1);
    }
}
