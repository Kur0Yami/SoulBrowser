package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public final class zzbi extends zzbcb implements zzbk {
    public zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzb() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzc(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(2, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzd(zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(8, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zze() {
        r2(3, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzf() {
        r2(4, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzg() {
        r2(5, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzh() {
        r2(6, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzi() {
        r2(9, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzj() {
        r2(7, I1());
    }
}
