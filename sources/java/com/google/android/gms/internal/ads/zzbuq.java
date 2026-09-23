package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbuq extends zzbcb implements zzbus {
    public zzbuq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void U2(zzbto zzbtoVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbtoVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString("Adapter returned null.");
        r2(2, I1);
    }
}
