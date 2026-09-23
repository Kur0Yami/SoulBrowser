package com.google.android.gms.auth.account;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzc extends com.google.android.gms.internal.auth.zza implements zze {
    @Override // com.google.android.gms.auth.account.zze
    public final void T1(zzb zzbVar) {
        Parcel I1 = I1();
        com.google.android.gms.internal.auth.zzc.d(I1, zzbVar);
        I1.writeString(null);
        r2(2, I1);
    }

    @Override // com.google.android.gms.auth.account.zze
    public final void i1(zzb zzbVar) {
        Parcel I1 = I1();
        com.google.android.gms.internal.auth.zzc.d(I1, zzbVar);
        I1.writeInt(0);
        r2(3, I1);
    }

    @Override // com.google.android.gms.auth.account.zze
    public final void zzf() {
        Parcel I1 = I1();
        int i = com.google.android.gms.internal.auth.zzc.f9500a;
        I1.writeInt(0);
        r2(1, I1);
    }
}
