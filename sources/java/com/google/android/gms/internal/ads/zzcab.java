package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzcab extends zzbcc implements zzcac {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(((zzcaw) this).f);
            return true;
        }
        parcel2.writeNoException();
        parcel2.writeString(((zzcaw) this).f5002c);
        return true;
    }
}
