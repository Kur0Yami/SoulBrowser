package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbzq extends zzbcb implements zzbzs {
    public zzbzq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void e4(zzbzj zzbzjVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbzjVar);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void h(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void zzf() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void zzg() {
        r2(3, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void zzh() {
        r2(4, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void zzj() {
        r2(6, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbzs
    public final void zzl() {
        r2(8, I1());
    }
}
