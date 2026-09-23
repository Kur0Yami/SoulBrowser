package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzboo extends zzbcb implements zzboq {
    public zzboo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void zze(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void zzf() {
        r2(2, I1());
    }
}
