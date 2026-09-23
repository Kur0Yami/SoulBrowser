package com.google.android.gms.dynamite;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzq extends com.google.android.gms.internal.common.zza implements IInterface {
    public final IObjectWrapper I1(ObjectWrapper objectWrapper, String str, int i, ObjectWrapper objectWrapper2) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.d(zza, objectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        com.google.android.gms.internal.common.zzc.d(zza, objectWrapper2);
        return androidx.work.impl.workers.a.i(zzB(2, zza));
    }

    public final IObjectWrapper f2(ObjectWrapper objectWrapper, String str, int i, ObjectWrapper objectWrapper2) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.d(zza, objectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        com.google.android.gms.internal.common.zzc.d(zza, objectWrapper2);
        return androidx.work.impl.workers.a.i(zzB(3, zza));
    }
}
