package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzcch extends zzbcb implements zzccj {
    public zzcch(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zze(IObjectWrapper iObjectWrapper, zzccn zzccnVar, zzccg zzccgVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzccnVar);
        zzbcd.e(I1, zzccgVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zzj(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(8, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final IObjectWrapper zzm(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, iObjectWrapper2);
        I1.writeString(str);
        zzbcd.e(I1, iObjectWrapper3);
        return androidx.work.impl.workers.a.i(f2(11, I1));
    }
}
