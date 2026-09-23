package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbom extends zzbcc implements zzbon {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String readString = parcel.readString();
            zzbcd.f(parcel);
            ((zzbok) this).a(readString);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
