package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbuz extends zzbcb implements zzbvb {
    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void zze(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(2, I1);
    }
}
