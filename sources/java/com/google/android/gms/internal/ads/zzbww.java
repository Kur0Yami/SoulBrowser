package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbww extends zzbcb implements zzbwy {
    public zzbww(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzH(int i, String[] strArr, int[] iArr) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeStringArray(strArr);
        I1.writeIntArray(iArr);
        r2(15, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zze() {
        r2(10, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzf() {
        r2(14, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final boolean zzg() {
        boolean z;
        Parcel f2 = f2(11, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzh(Bundle bundle) {
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzi() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzj() {
        r2(3, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzk() {
        r2(4, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzl() {
        r2(5, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzm(int i, int i2, Intent intent) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeInt(i2);
        zzbcd.c(I1, intent);
        r2(12, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzn(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(13, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzo(Bundle bundle) {
        Parcel I1 = I1();
        zzbcd.c(I1, bundle);
        Parcel f2 = f2(6, I1);
        if (f2.readInt() != 0) {
            bundle.readFromParcel(f2);
        }
        f2.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzp() {
        r2(7, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzq() {
        r2(8, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzs() {
        r2(9, I1());
    }
}
