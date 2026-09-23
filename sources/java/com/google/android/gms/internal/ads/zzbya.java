package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbya extends zzbcc implements zzbyb {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            com.google.android.gms.ads.internal.zzt.zzh().f("FlagsAccessedBeforeInitialized", new Exception("Flags were accessed before initialized."));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
