package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public final class zzcf extends zzbcb implements zzch {
    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zze(String str, zzea zzeaVar) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.e(I1, zzeaVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(2, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zzg(String str, zze zzeVar) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.c(I1, zzeVar);
        r2(3, I1);
    }
}
