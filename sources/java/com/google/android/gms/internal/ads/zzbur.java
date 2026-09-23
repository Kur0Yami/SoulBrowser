package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbur extends zzbcc implements zzbus {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbto zzbtmVar;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                ((zzelw) this).c(zzeVar);
            } else {
                String readString = parcel.readString();
                zzbcd.f(parcel);
                ((zzelw) this).zzf(readString);
            }
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbtmVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
                if (queryLocalInterface instanceof zzbto) {
                    zzbtmVar = (zzbto) queryLocalInterface;
                } else {
                    zzbtmVar = new zzbtm(readStrongBinder);
                }
            }
            zzbcd.f(parcel);
            ((zzelw) this).U2(zzbtmVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
