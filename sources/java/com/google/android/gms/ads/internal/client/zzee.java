package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public final class zzee extends zzbcb implements zzeg {
    public zzee(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzf() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzg() {
        r2(3, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzh() {
        r2(4, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzi(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(5, I1);
    }
}
