package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbll extends zzbcc implements zzblm {
    public zzbll() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbls zzbcbVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbcbVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
                if (queryLocalInterface instanceof zzbls) {
                    zzbcbVar = (zzbls) queryLocalInterface;
                } else {
                    zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
                }
            }
            zzbcd.f(parcel);
            S0(zzbcbVar);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
