package com.google.android.gms.cast.framework;

import android.os.Parcel;
import androidx.work.impl.workers.a;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzas extends com.google.android.gms.internal.cast.zza implements zzau {
    @Override // com.google.android.gms.cast.framework.zzau
    public final void l(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(13, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final int zze() {
        Parcel f2 = f2(17, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final IObjectWrapper zzf() {
        return a.i(f2(1, I1()));
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final boolean zzi() {
        boolean z;
        Parcel f2 = f2(5, I1());
        int i = com.google.android.gms.internal.cast.zzc.f9645a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final boolean zzj() {
        boolean z;
        Parcel f2 = f2(6, I1());
        int i = com.google.android.gms.internal.cast.zzc.f9645a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final boolean zzm() {
        boolean z;
        Parcel f2 = f2(9, I1());
        int i = com.google.android.gms.internal.cast.zzc.f9645a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final int zzo() {
        Parcel f2 = f2(18, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final void zzq() {
        Parcel I1 = I1();
        I1.writeInt(2151);
        r2(12, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzau
    public final void zzt() {
        Parcel I1 = I1();
        I1.writeInt(2153);
        r2(15, I1);
    }
}
