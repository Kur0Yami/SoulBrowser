package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbpp extends zzbcc implements zzbpq {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            String readString = parcel.readString();
            zzbcd.f(parcel);
            ((zzdzg) this).zzf(readString);
        } else {
            ((zzdzg) this).zze();
        }
        parcel2.writeNoException();
        return true;
    }
}
