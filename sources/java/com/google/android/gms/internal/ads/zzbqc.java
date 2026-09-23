package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbqc extends zzbcb implements zzbqe {
    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzf(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(2, I1);
    }
}
