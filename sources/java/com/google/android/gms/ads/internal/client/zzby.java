package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbsz;

/* loaded from: classes.dex */
public final class zzby extends zzbcb implements IInterface {
    public zzby(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbsz zzbszVar, int i, int i2) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzrVar);
        I1.writeString(str);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        I1.writeInt(i2);
        Parcel f2 = f2(2, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        f2.recycle();
        return readStrongBinder;
    }
}
