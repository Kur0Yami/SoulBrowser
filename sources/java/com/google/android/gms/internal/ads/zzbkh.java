package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbkh extends zzbcc implements zzbki {
    public zzbkh() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    public static zzbki zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        if (queryLocalInterface instanceof zzbki) {
            return (zzbki) queryLocalInterface;
        }
        return new zzbkg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzd(I1);
            } else {
                zzc();
            }
        } else {
            IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
            zzbcd.f(parcel);
            zzb(I12);
        }
        parcel2.writeNoException();
        return true;
    }
}
