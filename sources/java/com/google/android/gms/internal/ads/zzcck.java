package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzcck extends zzbcb implements zzccm {
    @Override // com.google.android.gms.internal.ads.zzccm
    public final zzccj z(ObjectWrapper objectWrapper, zzbsz zzbszVar) {
        zzccj zzcchVar;
        Parcel I1 = I1();
        zzbcd.e(I1, objectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(2, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzcchVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            if (queryLocalInterface instanceof zzccj) {
                zzcchVar = (zzccj) queryLocalInterface;
            } else {
                zzcchVar = new zzcch(readStrongBinder);
            }
        }
        f2.recycle();
        return zzcchVar;
    }
}
