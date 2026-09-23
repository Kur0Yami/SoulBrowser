package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbf extends zza implements zzbg {
    @Override // com.google.android.gms.internal.cast.zzbg
    public final void C0(String str, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzc.b(I1, bundle);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void E4(String str, Bundle bundle, String str2) {
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        zzc.b(I1, bundle);
        r2(9, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void I(String str, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzc.b(I1, bundle);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void N1(int i, Bundle bundle, String str, String str2) {
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        zzc.b(I1, bundle);
        I1.writeInt(i);
        r2(10, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void U1(String str, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzc.b(I1, bundle);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void Y3(String str, int i, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzc.b(I1, bundle);
        I1.writeInt(i);
        r2(6, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void d4(String str, Bundle bundle, String str2) {
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        zzc.b(I1, bundle);
        r2(8, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void t1(String str, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzc.b(I1, bundle);
        r2(2, I1);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final int zze() {
        Parcel f2 = f2(7, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }
}
