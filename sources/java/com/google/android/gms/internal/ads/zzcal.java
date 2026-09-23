package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzcal extends zzbcc implements zzcam {
    public zzcal() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                c(zzeVar);
            } else {
                int readInt = parcel.readInt();
                zzbcd.f(parcel);
                zzf(readInt);
            }
        } else {
            zze();
        }
        parcel2.writeNoException();
        return true;
    }
}
