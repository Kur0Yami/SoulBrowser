package com.google.android.gms.cast.framework;

import android.os.Parcel;
import androidx.work.impl.workers.a;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzav extends com.google.android.gms.internal.cast.zza implements zzaw {
    @Override // com.google.android.gms.cast.framework.zzaw
    public final void Q3(zzbg zzbgVar) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.c(I1, zzbgVar);
        r2(2, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void X4(zzbg zzbgVar) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.c(I1, zzbgVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void Z2(zzz zzzVar) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.c(I1, zzzVar);
        r2(5, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void m4(boolean z) {
        Parcel I1 = I1();
        int i = com.google.android.gms.internal.cast.zzc.f9645a;
        I1.writeInt(1);
        I1.writeInt(z ? 1 : 0);
        r2(6, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void t2(zzz zzzVar) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.c(I1, zzzVar);
        r2(4, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final IObjectWrapper zze() {
        return a.i(f2(1, I1()));
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final IObjectWrapper zzk() {
        return a.i(f2(7, I1()));
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final int zzl() {
        Parcel f2 = f2(8, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }
}
