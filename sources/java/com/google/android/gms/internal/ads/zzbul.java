package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbul extends zzbcc implements zzbum {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbti zzbtgVar;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder == null) {
                        zzbtgVar = null;
                    } else {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
                        if (queryLocalInterface instanceof zzbti) {
                            zzbtgVar = (zzbti) queryLocalInterface;
                        } else {
                            zzbtgVar = new zzbtg(readStrongBinder);
                        }
                    }
                    zzbcd.f(parcel);
                    ((zzeko) this).Z4(zzbtgVar);
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                    zzbcd.f(parcel);
                    ((zzeko) this).c(zzeVar);
                }
            } else {
                String readString = parcel.readString();
                zzbcd.f(parcel);
                ((zzeko) this).zzf(readString);
            }
        } else {
            ((zzeko) this).u(a.g(parcel, parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
