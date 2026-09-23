package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbli extends zzbcc implements zzblj {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            ((zzbma) this).g0(com.google.android.gms.ads.internal.client.zzbw.zzZ(parcel.readStrongBinder()), a.g(parcel, parcel));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
