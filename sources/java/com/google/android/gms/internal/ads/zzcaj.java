package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzcaj extends zzbcb implements IInterface {
    public final IBinder zze(IObjectWrapper iObjectWrapper, String str, zzbsz zzbszVar, int i) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        I1.writeString(str);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        f2.recycle();
        return readStrongBinder;
    }
}
