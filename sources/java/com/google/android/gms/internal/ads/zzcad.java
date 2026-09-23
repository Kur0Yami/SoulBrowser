package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzcad extends zzbcb implements zzcaf {
    public zzcad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzb(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzc(com.google.android.gms.ads.internal.client.zzm zzmVar, zzcam zzcamVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzmVar);
        zzbcd.e(I1, zzcamVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzd(com.google.android.gms.ads.internal.client.zzm zzmVar, zzcam zzcamVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzmVar);
        zzbcd.e(I1, zzcamVar);
        r2(14, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zze(zzcai zzcaiVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzcaiVar);
        r2(2, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzf(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdqVar);
        r2(8, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final Bundle zzg() {
        Parcel f2 = f2(9, I1());
        Bundle bundle = (Bundle) zzbcd.b(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzh(zzcat zzcatVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzcatVar);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final zzcac zzl() {
        zzcac zzcaaVar;
        Parcel f2 = f2(11, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzcaaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            if (queryLocalInterface instanceof zzcac) {
                zzcaaVar = (zzcac) queryLocalInterface;
            } else {
                zzcaaVar = new zzcaa(readStrongBinder);
            }
        }
        f2.recycle();
        return zzcaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final com.google.android.gms.ads.internal.client.zzea zzm() {
        Parcel f2 = f2(12, I1());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final String zzn() {
        Parcel f2 = f2(16, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzo(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdtVar);
        r2(13, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzp(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(15, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final long zzq() {
        Parcel f2 = f2(17, I1());
        long readLong = f2.readLong();
        f2.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzr(long j) {
        Parcel I1 = I1();
        I1.writeLong(j);
        r2(18, I1);
    }
}
