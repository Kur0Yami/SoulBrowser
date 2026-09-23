package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzdv extends zzbcc implements zzdw {
    public zzdv() {
        super("com.google.android.gms.ads.internal.client.IOutOfContextTester");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String readString = parcel.readString();
            IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
            IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
            zzbcd.f(parcel);
            zze(readString, I1, I12);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
