package com.google.android.gms.internal.ads;

import android.os.Parcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzbps extends zzbcc implements zzbpt {
    public zzbps() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            ArrayList createTypedArrayList = parcel.createTypedArrayList(zzbpm.CREATOR);
            zzbcd.f(parcel);
            F3(createTypedArrayList);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
