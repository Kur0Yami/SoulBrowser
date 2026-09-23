package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzcak extends zzbcb implements zzcam {
    public zzcak(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zzf(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(2, I1);
    }
}
