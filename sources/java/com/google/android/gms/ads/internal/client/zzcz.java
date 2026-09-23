package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbpt;
import com.google.android.gms.internal.ads.zzbsz;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcz extends zzbcb implements zzdb {
    public zzcz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzf(float f) {
        Parcel I1 = I1();
        I1.writeFloat(f);
        r2(2, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzg(String str) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzh(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(4, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzi(IObjectWrapper iObjectWrapper, String str) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        I1.writeString(str);
        r2(5, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzj(String str, IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        I1.writeString(null);
        zzbcd.e(I1, iObjectWrapper);
        r2(6, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final float zzk() {
        Parcel f2 = f2(7, I1());
        float readFloat = f2.readFloat();
        f2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final boolean zzl() {
        boolean z;
        Parcel f2 = f2(8, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final String zzm() {
        Parcel f2 = f2(9, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzn(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(10, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzo(zzbsz zzbszVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbszVar);
        r2(11, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzp(zzbpt zzbptVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbptVar);
        r2(12, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final List zzq() {
        Parcel f2 = f2(13, I1());
        ArrayList createTypedArrayList = f2.createTypedArrayList(zzbpm.CREATOR);
        f2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzr(zzfv zzfvVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzfvVar);
        r2(14, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzs() {
        r2(15, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzt(zzdn zzdnVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzdnVar);
        r2(16, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzu(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(17, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzv(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(18, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzw() {
        r2(19, I1());
    }
}
