package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzccf extends zzbcc implements zzccg {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzbxo) this).W4(readString, bundle, readString2);
            } else {
                String readString3 = parcel.readString();
                zzbcd.f(parcel);
                ((zzbxo) this).a(readString3);
            }
        } else {
            parcel.readString();
            parcel.readString();
            zzbcd.f(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
