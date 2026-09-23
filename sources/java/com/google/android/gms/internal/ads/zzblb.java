package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzblb extends zzbcc implements zzblc {
    public zzblb() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbks zzbkqVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbkqVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                if (queryLocalInterface instanceof zzbks) {
                    zzbkqVar = (zzbks) queryLocalInterface;
                } else {
                    zzbkqVar = new zzbkq(readStrongBinder);
                }
            }
            String readString = parcel.readString();
            zzbcd.f(parcel);
            F0(zzbkqVar, readString);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
