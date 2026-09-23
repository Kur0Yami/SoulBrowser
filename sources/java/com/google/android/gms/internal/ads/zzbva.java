package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbva extends zzbcc implements zzbvb {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                ((zzepn) this).c(zzeVar);
            } else {
                String readString = parcel.readString();
                zzbcd.f(parcel);
                ((zzepn) this).zzf(readString);
            }
        } else {
            String readString2 = parcel.readString();
            zzbcd.f(parcel);
            ((zzepn) this).zze(readString2);
        }
        parcel2.writeNoException();
        return true;
    }
}
