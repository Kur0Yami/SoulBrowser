package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbjt extends zzbcb implements zzbjv {
    public zzbjt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final float zze() {
        Parcel f2 = f2(2, I1());
        float readFloat = f2.readFloat();
        f2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final void zzf(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final IObjectWrapper zzg() {
        return androidx.work.impl.workers.a.i(f2(4, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final float zzh() {
        Parcel f2 = f2(5, I1());
        float readFloat = f2.readFloat();
        f2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final float zzi() {
        Parcel f2 = f2(6, I1());
        float readFloat = f2.readFloat();
        f2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final com.google.android.gms.ads.internal.client.zzed zzj() {
        Parcel f2 = f2(7, I1());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final boolean zzk() {
        boolean z;
        Parcel f2 = f2(8, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final boolean zzl() {
        boolean z;
        Parcel f2 = f2(10, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }
}
