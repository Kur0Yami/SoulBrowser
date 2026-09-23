package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbef extends zzbcc implements zzbeg {
    public zzbef() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbed zzbebVar;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                zzd(zzeVar);
            } else {
                parcel.readInt();
                zzbcd.f(parcel);
            }
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbebVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                if (queryLocalInterface instanceof zzbed) {
                    zzbebVar = (zzbed) queryLocalInterface;
                } else {
                    zzbebVar = new zzbeb(readStrongBinder);
                }
            }
            zzbcd.f(parcel);
            r4(zzbebVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
