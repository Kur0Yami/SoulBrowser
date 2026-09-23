package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzcce extends zzbcb implements zzccg {
    @Override // com.google.android.gms.internal.ads.zzccg
    public final void W4(String str, Bundle bundle, String str2) {
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        zzbcd.c(I1, bundle);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzccg
    public final void a(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(2, I1);
    }
}
