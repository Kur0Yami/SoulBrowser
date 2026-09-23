package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbkg extends zzbcb implements zzbki {
    public zzbkg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void zzb(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void zzc() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void zzd(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(3, I1);
    }
}
