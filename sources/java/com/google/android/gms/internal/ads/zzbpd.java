package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public abstract class zzbpd extends zzbcc implements zzbpe {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzbcd.b(parcel, ParcelFileDescriptor.CREATOR);
            zzbcd.f(parcel);
            ((zzbpg) this).f4814c.a(parcelFileDescriptor);
            return true;
        }
        return false;
    }
}
