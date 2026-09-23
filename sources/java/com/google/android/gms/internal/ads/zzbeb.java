package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbeb extends zzbcb implements zzbed {
    public zzbeb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void G2(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdtVar);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void b4(IObjectWrapper iObjectWrapper, zzbek zzbekVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbekVar);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final com.google.android.gms.ads.internal.client.zzea zzg() {
        Parcel f2 = f2(5, I1());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void zzh(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(6, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final String zzj() {
        Parcel f2 = f2(8, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final long zzk() {
        Parcel f2 = f2(9, I1());
        long readLong = f2.readLong();
        f2.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void zzl(long j) {
        Parcel I1 = I1();
        I1.writeLong(j);
        r2(10, I1);
    }
}
