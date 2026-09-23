package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public final class zzbyp extends zzbcb implements zzbyr {
    public zzbyp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void K0(com.google.android.gms.ads.internal.util.zzba zzbaVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzbaVar);
        r2(2, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void d1(ParcelFileDescriptor parcelFileDescriptor, zzbza zzbzaVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, parcelFileDescriptor);
        zzbcd.c(I1, zzbzaVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void n3(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel I1 = I1();
        zzbcd.c(I1, parcelFileDescriptor);
        r2(1, I1);
    }
}
