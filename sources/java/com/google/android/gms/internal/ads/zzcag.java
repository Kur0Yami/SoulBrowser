package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzcag extends zzbcb implements zzcai {
    @Override // com.google.android.gms.internal.ads.zzcai
    public final void R(zzcac zzcacVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzcacVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void c4(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void e(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzf() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzj() {
        r2(6, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzk() {
        r2(7, I1());
    }
}
