package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzbce extends zzbcb implements zzbcg {
    @Override // com.google.android.gms.internal.ads.zzbcg
    public final void C(ObjectWrapper objectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, objectWrapper);
        I1.writeString("GMA_SDK");
        r2(2, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbcg
    public final void Y0() {
        Parcel I1 = I1();
        I1.writeIntArray(null);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbcg
    public final void d(int i) {
        Parcel I1 = I1();
        I1.writeInt(0);
        r2(6, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbcg
    public final void l3(byte[] bArr) {
        Parcel I1 = I1();
        I1.writeByteArray(bArr);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbcg
    public final void n(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbcg
    public final void zzf() {
        r2(3, I1());
    }
}
