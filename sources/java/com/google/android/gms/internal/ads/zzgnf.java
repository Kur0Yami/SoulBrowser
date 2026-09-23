package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzgnf extends zzbcb implements zzgnh {
    @Override // com.google.android.gms.internal.ads.zzgnh
    public final void a4(Bundle bundle, zzgnj zzgnjVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        zzbcd.e(I1, zzgnjVar);
        v2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzgnh
    public final void m3(String str, Bundle bundle, zzgnj zzgnjVar) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.c(I1, bundle);
        zzbcd.e(I1, zzgnjVar);
        v2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzgnh
    public final void w0(Bundle bundle, zzgnj zzgnjVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        zzbcd.e(I1, zzgnjVar);
        v2(2, I1);
    }
}
