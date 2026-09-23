package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbpo extends zzbcb implements zzbpq {
    @Override // com.google.android.gms.internal.ads.zzbpq
    public final void zze() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbpq
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(3, I1);
    }
}
