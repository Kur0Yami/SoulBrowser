package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbut extends zzbcb implements zzbuv {
    public zzbut(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void zze() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString("Adapter returned null.");
        r2(3, I1);
    }
}
