package com.google.android.gms.cast.framework;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzap extends com.google.android.gms.internal.cast.zza implements zzar {
    @Override // com.google.android.gms.cast.framework.zzar
    public final int J(int i, int i2, Intent intent) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.b(I1, intent);
        I1.writeInt(i);
        I1.writeInt(i2);
        Parcel f2 = f2(2, I1);
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.cast.framework.zzar
    public final IBinder f1(Intent intent) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.b(I1, intent);
        Parcel f2 = f2(3, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        f2.recycle();
        return readStrongBinder;
    }

    @Override // com.google.android.gms.cast.framework.zzar
    public final void y4() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.cast.framework.zzar
    public final void zzh() {
        r2(4, I1());
    }
}
