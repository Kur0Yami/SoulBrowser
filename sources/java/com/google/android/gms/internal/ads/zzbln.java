package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbln extends zzbcb implements zzblp {
    @Override // com.google.android.gms.internal.ads.zzblp
    public final void zze(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzblp
    public final void zzf() {
        r2(2, I1());
    }
}
