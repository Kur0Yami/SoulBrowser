package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbee extends zzbcb implements zzbeg {
    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void r4(zzbed zzbedVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbedVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void zzc(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(2, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void zzd(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(3, I1);
    }
}
