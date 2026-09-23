package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbka extends zzbcb implements zzbkc {
    public zzbka(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.e(I1, iObjectWrapper);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final IObjectWrapper zzc(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        return androidx.work.impl.workers.a.i(f2(2, I1));
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzd(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzdB(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(9, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzdC(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzdD(zzbjv zzbjvVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbjvVar);
        r2(8, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zze() {
        r2(4, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzf(IObjectWrapper iObjectWrapper, int i) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        I1.writeInt(i);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzg(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(6, I1);
    }
}
