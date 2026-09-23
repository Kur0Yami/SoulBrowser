package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbun extends zzbcb implements zzbup {
    @Override // com.google.android.gms.internal.ads.zzbup
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zze() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString("Adapter returned null.");
        r2(3, I1);
    }
}
