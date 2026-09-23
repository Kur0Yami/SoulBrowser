package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.work.impl.workers.a;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzbxh;
import com.google.android.gms.internal.ads.zzbxk;
import com.google.android.gms.internal.ads.zzbzs;

/* loaded from: classes.dex */
public final class zzbv extends zzbcb implements zzbx {
    public zzbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzA() {
        boolean z;
        Parcel f2 = f2(46, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzB() {
        boolean z;
        Parcel f2 = f2(23, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbzs zzbzsVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(String str) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(String str) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzed zzF() {
        zzed zzebVar;
        Parcel f2 = f2(26, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzebVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            if (queryLocalInterface instanceof zzed) {
                zzebVar = (zzed) queryLocalInterface;
            } else {
                zzebVar = new zzeb(readStrongBinder);
            }
        }
        f2.recycle();
        return zzebVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzG(zzga zzgaVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzgaVar);
        r2(29, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(zzeh zzehVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(zzx zzxVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(zzbeg zzbegVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbegVar);
        r2(40, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzK(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(34, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(zzdt zzdtVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdtVar);
        r2(42, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(zzm zzmVar, zzbn zzbnVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzmVar);
        zzbcd.e(I1, zzbnVar);
        r2(43, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzR(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(44, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(zzcv zzcvVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzcvVar);
        r2(45, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzT(long j) {
        Parcel I1 = I1();
        I1.writeLong(j);
        r2(48, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final long zzU() {
        Parcel f2 = f2(47, I1());
        long readLong = f2.readLong();
        f2.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzY(zzcs zzcsVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() {
        return a.i(f2(1, I1()));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzc() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzd() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdR(zzbk zzbkVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbkVar);
        r2(7, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zze(zzm zzmVar) {
        boolean z;
        Parcel I1 = I1();
        zzbcd.c(I1, zzmVar);
        Parcel f2 = f2(4, I1);
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzf() {
        r2(5, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzg() {
        r2(6, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(zzco zzcoVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzcoVar);
        r2(8, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzj(zzcb zzcbVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzk() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzl() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzm() {
        r2(11, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzr zzn() {
        Parcel f2 = f2(12, I1());
        zzr zzrVar = (zzr) zzbcd.b(f2, zzr.CREATOR);
        f2.recycle();
        return zzrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzo(zzr zzrVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzrVar);
        r2(13, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzp(zzbxh zzbxhVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzq(zzbxk zzbxkVar, String str) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzr() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzs() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzea zzt() {
        zzea zzdyVar;
        Parcel f2 = f2(41, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzdyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            if (queryLocalInterface instanceof zzea) {
                zzdyVar = (zzea) queryLocalInterface;
            } else {
                zzdyVar = new zzdy(readStrongBinder);
            }
        }
        f2.recycle();
        return zzdyVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzu() {
        Parcel f2 = f2(31, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzco zzv() {
        zzco zzcmVar;
        Parcel f2 = f2(32, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzcmVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            if (queryLocalInterface instanceof zzco) {
                zzcmVar = (zzco) queryLocalInterface;
            } else {
                zzcmVar = new zzcm(readStrongBinder);
            }
        }
        f2.recycle();
        return zzcmVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzbk zzw() {
        zzbk zzbiVar;
        Parcel f2 = f2(33, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            if (queryLocalInterface instanceof zzbk) {
                zzbiVar = (zzbk) queryLocalInterface;
            } else {
                zzbiVar = new zzbi(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbiVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzx(zzbhf zzbhfVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(zzbh zzbhVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbhVar);
        r2(20, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzz(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(22, I1);
    }
}
