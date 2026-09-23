package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbui extends zzbcc implements zzbuj {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                ((zzejx) this).c(zzeVar);
            } else {
                String readString = parcel.readString();
                zzbcd.f(parcel);
                ((zzejx) this).zzf(readString);
            }
        } else {
            ((zzejx) this).zze();
        }
        parcel2.writeNoException();
        return true;
    }
}
