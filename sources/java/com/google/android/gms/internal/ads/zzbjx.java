package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbjx extends zzbcc implements zzbjy {
    public static zzbjy c5(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        if (queryLocalInterface instanceof zzbjy) {
            return (zzbjy) queryLocalInterface;
        }
        return new zzbjw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                IObjectWrapper zzb = ((zzbjj) this).zzb();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzb);
                return true;
            case 2:
                parcel2.writeNoException();
                zzbcd.d(parcel2, ((zzbjj) this).f);
                return true;
            case 3:
                parcel2.writeNoException();
                parcel2.writeDouble(((zzbjj) this).g);
                return true;
            case 4:
                parcel2.writeNoException();
                parcel2.writeInt(((zzbjj) this).h);
                return true;
            case 5:
                parcel2.writeNoException();
                parcel2.writeInt(((zzbjj) this).i);
                return true;
            case 6:
                parcel2.writeNoException();
                parcel2.writeMap(((zzbjj) this).j);
                return true;
            default:
                return false;
        }
    }
}
