package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzbm extends zzbcc implements zzbn {
    public zzbm() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zze zzeVar = (zze) zzbcd.b(parcel, zze.CREATOR);
            zzbcd.f(parcel);
            zzc(zzeVar);
        } else {
            zzb();
        }
        parcel2.writeNoException();
        return true;
    }
}
