package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzcd extends zzbcc implements zzce {
    public zzcd() {
        super("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzft zzftVar = (zzft) zzbcd.b(parcel, zzft.CREATOR);
            zzbcd.f(parcel);
            zzf(zzftVar);
        } else {
            zzft zzftVar2 = (zzft) zzbcd.b(parcel, zzft.CREATOR);
            zzbcd.f(parcel);
            zze(zzftVar2);
        }
        parcel2.writeNoException();
        return true;
    }
}
