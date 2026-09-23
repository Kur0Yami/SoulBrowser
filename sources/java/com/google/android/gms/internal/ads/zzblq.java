package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzblq extends zzbcb implements zzbls {
    @Override // com.google.android.gms.internal.ads.zzbls
    public final void A2(Bundle bundle) {
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        r2(17, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void E1(zzblp zzblpVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzblpVar);
        r2(21, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void N0(long j) {
        Parcel I1 = I1();
        I1.writeLong(j);
        r2(35, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void N2(Bundle bundle) {
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        r2(33, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void R3(Bundle bundle) {
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        r2(15, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void X2(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdfVar);
        r2(26, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final boolean c3(Bundle bundle) {
        boolean z;
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        Parcel f2 = f2(16, I1);
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void g() {
        r2(22, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void h1(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdtVar);
        r2(32, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void l1(com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdjVar);
        r2(25, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final long m() {
        Parcel f2 = f2(34, I1());
        long readLong = f2.readLong();
        f2.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final boolean x() {
        boolean z;
        Parcel f2 = f2(30, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final boolean zzA() {
        boolean z;
        Parcel f2 = f2(24, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzD() {
        r2(27, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzE() {
        r2(28, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final zzbjv zzF() {
        zzbjv zzbjtVar;
        Parcel f2 = f2(29, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            if (queryLocalInterface instanceof zzbjv) {
                zzbjtVar = (zzbjv) queryLocalInterface;
            } else {
                zzbjtVar = new zzbjt(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbjtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final com.google.android.gms.ads.internal.client.zzea zzH() {
        Parcel f2 = f2(31, I1());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zze() {
        Parcel f2 = f2(2, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final List zzf() {
        Parcel f2 = f2(3, I1());
        ArrayList readArrayList = f2.readArrayList(zzbcd.f4538a);
        f2.recycle();
        return readArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzg() {
        Parcel f2 = f2(4, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final zzbjy zzh() {
        zzbjy zzbjwVar;
        Parcel f2 = f2(5, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            if (queryLocalInterface instanceof zzbjy) {
                zzbjwVar = (zzbjy) queryLocalInterface;
            } else {
                zzbjwVar = new zzbjw(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbjwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzi() {
        Parcel f2 = f2(6, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzj() {
        Parcel f2 = f2(7, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final double zzk() {
        Parcel f2 = f2(8, I1());
        double readDouble = f2.readDouble();
        f2.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzl() {
        Parcel f2 = f2(9, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzm() {
        Parcel f2 = f2(10, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final com.google.android.gms.ads.internal.client.zzed zzn() {
        Parcel f2 = f2(11, I1());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzp() {
        r2(13, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final zzbjr zzq() {
        zzbjr zzbjpVar;
        Parcel f2 = f2(14, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            if (queryLocalInterface instanceof zzbjr) {
                zzbjpVar = (zzbjr) queryLocalInterface;
            } else {
                zzbjpVar = new zzbjp(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbjpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final IObjectWrapper zzu() {
        return androidx.work.impl.workers.a.i(f2(18, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final IObjectWrapper zzv() {
        return androidx.work.impl.workers.a.i(f2(19, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final Bundle zzw() {
        Parcel f2 = f2(20, I1());
        Bundle bundle = (Bundle) zzbcd.b(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final List zzz() {
        Parcel f2 = f2(23, I1());
        ArrayList readArrayList = f2.readArrayList(zzbcd.f4538a);
        f2.recycle();
        return readArrayList;
    }
}
