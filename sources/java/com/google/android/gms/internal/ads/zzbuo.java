package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbuo extends zzbcc implements zzbup {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                ((zzeli) this).c(zzeVar);
            } else {
                String readString = parcel.readString();
                zzbcd.f(parcel);
                ((zzeli) this).zzf(readString);
            }
        } else {
            ((zzeli) this).zze();
        }
        parcel2.writeNoException();
        return true;
    }
}
