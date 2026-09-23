package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzbws extends zzbcb implements zzbwu {
    @Override // com.google.android.gms.internal.ads.zzbwu
    public final zzbwr z(ObjectWrapper objectWrapper, zzbsz zzbszVar) {
        zzbwr zzbwpVar;
        Parcel I1 = I1();
        zzbcd.e(I1, objectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            if (queryLocalInterface instanceof zzbwr) {
                zzbwpVar = (zzbwr) queryLocalInterface;
            } else {
                zzbwpVar = new zzbwp(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbwpVar;
    }
}
