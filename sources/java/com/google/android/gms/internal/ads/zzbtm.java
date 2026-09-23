package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbtm extends zzbcb implements zzbto {
    public zzbtm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void q1(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(22, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void t(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(20, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void t0(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, iObjectWrapper2);
        zzbcd.e(I1, iObjectWrapper3);
        r2(21, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final float zzA() {
        Parcel f2 = f2(24, I1());
        float readFloat = f2.readFloat();
        f2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final float zzB() {
        Parcel f2 = f2(25, I1());
        float readFloat = f2.readFloat();
        f2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void zzC() {
        r2(26, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zze() {
        Parcel f2 = f2(2, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final List zzf() {
        Parcel f2 = f2(3, I1());
        ArrayList readArrayList = f2.readArrayList(zzbcd.f4538a);
        f2.recycle();
        return readArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzg() {
        Parcel f2 = f2(4, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final zzbjy zzh() {
        Parcel f2 = f2(5, I1());
        zzbjy c5 = zzbjx.c5(f2.readStrongBinder());
        f2.recycle();
        return c5;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzi() {
        Parcel f2 = f2(6, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzj() {
        Parcel f2 = f2(7, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final double zzk() {
        Parcel f2 = f2(8, I1());
        double readDouble = f2.readDouble();
        f2.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzl() {
        Parcel f2 = f2(9, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzm() {
        Parcel f2 = f2(10, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final com.google.android.gms.ads.internal.client.zzed zzn() {
        Parcel f2 = f2(11, I1());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final zzbjr zzo() {
        Parcel f2 = f2(12, I1());
        zzbjr c5 = zzbjq.c5(f2.readStrongBinder());
        f2.recycle();
        return c5;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final IObjectWrapper zzp() {
        return androidx.work.impl.workers.a.i(f2(13, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final IObjectWrapper zzq() {
        return androidx.work.impl.workers.a.i(f2(14, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final IObjectWrapper zzr() {
        return androidx.work.impl.workers.a.i(f2(15, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final Bundle zzs() {
        Parcel f2 = f2(16, I1());
        Bundle bundle = (Bundle) zzbcd.b(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final boolean zzt() {
        boolean z;
        Parcel f2 = f2(17, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final boolean zzu() {
        boolean z;
        Parcel f2 = f2(18, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void zzv() {
        r2(19, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final float zzz() {
        Parcel f2 = f2(23, I1());
        float readFloat = f2.readFloat();
        f2.recycle();
        return readFloat;
    }
}
