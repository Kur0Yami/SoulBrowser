package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbjq extends zzbcc implements zzbjr {
    public static zzbjr c5(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        if (queryLocalInterface instanceof zzbjr) {
            return (zzbjr) queryLocalInterface;
        }
        return new zzbjp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeList(((zzbjg) this).g);
            return true;
        }
        parcel2.writeNoException();
        parcel2.writeString(((zzbjg) this).f4740c);
        return true;
    }
}
