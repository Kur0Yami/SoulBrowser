package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzbkd extends zzbcb implements zzbkf {
    public zzbkd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final IBinder S3(ObjectWrapper objectWrapper, ObjectWrapper objectWrapper2, ObjectWrapper objectWrapper3) {
        Parcel I1 = I1();
        zzbcd.e(I1, objectWrapper);
        zzbcd.e(I1, objectWrapper2);
        zzbcd.e(I1, objectWrapper3);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        f2.recycle();
        return readStrongBinder;
    }
}
