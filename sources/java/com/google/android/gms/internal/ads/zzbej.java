package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbej extends zzbcc implements zzbek {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        ((zzbea) this).zzg();
                    } else {
                        ((zzbea) this).zzf();
                    }
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                    zzbcd.f(parcel);
                    ((zzbea) this).zze(zzeVar);
                }
            } else {
                ((zzbea) this).zzd();
            }
        } else {
            ((zzbea) this).zzc();
        }
        parcel2.writeNoException();
        return true;
    }
}
