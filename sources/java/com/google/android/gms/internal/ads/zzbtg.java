package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbtg extends zzbcb implements zzbti {
    public zzbtg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final IObjectWrapper zze() {
        return androidx.work.impl.workers.a.i(f2(1, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final boolean zzf() {
        boolean z;
        Parcel f2 = f2(2, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }
}
