package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbyl extends zzbcb implements zzbyn {
    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void J1(zzbza zzbzaVar, zzbyr zzbyrVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzbzaVar);
        zzbcd.e(I1, zzbyrVar);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void L2(zzbza zzbzaVar, zzbyr zzbyrVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzbzaVar);
        zzbcd.e(I1, zzbyrVar);
        r2(6, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void M3(zzbza zzbzaVar, zzbyr zzbyrVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzbzaVar);
        zzbcd.e(I1, zzbyrVar);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void a5(String str, zzbyr zzbyrVar) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.e(I1, zzbyrVar);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void zzi(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(9, I1);
    }
}
