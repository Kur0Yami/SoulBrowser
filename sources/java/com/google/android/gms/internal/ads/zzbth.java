package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbth extends zzbcc implements zzbti {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            boolean shouldDelegateInterscrollerEffect = ((zzbub) this).f4902c.shouldDelegateInterscrollerEffect();
            parcel2.writeNoException();
            ClassLoader classLoader = zzbcd.f4538a;
            parcel2.writeInt(shouldDelegateInterscrollerEffect ? 1 : 0);
            return true;
        }
        IObjectWrapper zze = ((zzbub) this).zze();
        parcel2.writeNoException();
        zzbcd.e(parcel2, zze);
        return true;
    }
}
