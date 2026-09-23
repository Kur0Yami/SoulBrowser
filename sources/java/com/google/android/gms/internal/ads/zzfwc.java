package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzfwc extends zzbcb implements zzfwe {
    @Override // com.google.android.gms.internal.ads.zzfwe
    public final void B2(byte[] bArr) {
        Parcel I1 = I1();
        I1.writeByteArray(bArr);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final void d(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final void e(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(6, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final void h3() {
        Parcel I1 = I1();
        I1.writeIntArray(null);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final void m2(ObjectWrapper objectWrapper, String str) {
        Parcel I1 = I1();
        zzbcd.e(I1, objectWrapper);
        I1.writeString(str);
        I1.writeString(null);
        r2(8, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final void zze() {
        r2(3, I1());
    }
}
