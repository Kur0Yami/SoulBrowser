package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzbkj extends zzbcb implements zzbkl {
    public zzbkj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final IBinder k0(ObjectWrapper objectWrapper, ObjectWrapper objectWrapper2, ObjectWrapper objectWrapper3) {
        Parcel I1 = I1();
        zzbcd.e(I1, objectWrapper);
        zzbcd.e(I1, objectWrapper2);
        zzbcd.e(I1, objectWrapper3);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        f2.recycle();
        return readStrongBinder;
    }
}
