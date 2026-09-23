package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbuk extends zzbcb implements zzbum {
    public zzbuk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void Z4(zzbti zzbtiVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbtiVar);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void u(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString("Adapter returned null.");
        r2(2, I1);
    }
}
