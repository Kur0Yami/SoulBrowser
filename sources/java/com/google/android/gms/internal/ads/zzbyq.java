package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public abstract class zzbyq extends zzbcc implements zzbyr {
    public zzbyq() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzbcd.b(parcel, ParcelFileDescriptor.CREATOR);
                zzbza zzbzaVar = (zzbza) zzbcd.b(parcel, zzbza.CREATOR);
                zzbcd.f(parcel);
                d1(parcelFileDescriptor, zzbzaVar);
            } else {
                com.google.android.gms.ads.internal.util.zzba zzbaVar = (com.google.android.gms.ads.internal.util.zzba) zzbcd.b(parcel, com.google.android.gms.ads.internal.util.zzba.CREATOR);
                zzbcd.f(parcel);
                K0(zzbaVar);
            }
        } else {
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) zzbcd.b(parcel, ParcelFileDescriptor.CREATOR);
            zzbcd.f(parcel);
            n3(parcelFileDescriptor2);
        }
        parcel2.writeNoException();
        return true;
    }
}
