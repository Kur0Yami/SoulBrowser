package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzbwp extends zzbcb implements zzbwr {
    public zzbwp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void F(Intent intent) {
        Parcel I1 = I1();
        zzbcd.c(I1, intent);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void H4(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        I1.writeStringArray(strArr);
        I1.writeIntArray(iArr);
        zzbcd.e(I1, iObjectWrapper);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void M4(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza zzaVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzaVar);
        r2(6, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void y(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(4, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void zzg() {
        r2(3, I1());
    }
}
