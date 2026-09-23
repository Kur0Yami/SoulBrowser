package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzbor extends zzbcb implements zzbot {
    @Override // com.google.android.gms.internal.ads.zzbot
    public final zzboq V2(ObjectWrapper objectWrapper, zzbsz zzbszVar, zzbok zzbokVar) {
        zzboq zzbooVar;
        Parcel I1 = I1();
        zzbcd.e(I1, objectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        zzbcd.e(I1, zzbokVar);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbooVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            if (queryLocalInterface instanceof zzboq) {
                zzbooVar = (zzboq) queryLocalInterface;
            } else {
                zzbooVar = new zzboo(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbooVar;
    }
}
