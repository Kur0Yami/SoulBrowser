package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzblo extends zzbcc implements zzblp {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            ((zzbwo) this).zzf();
        } else {
            String readString = parcel.readString();
            zzbcd.f(parcel);
            ((zzbwo) this).zze(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
