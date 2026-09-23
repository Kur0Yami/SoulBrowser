package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbjw extends zzbcb implements zzbjy {
    public zzbjw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final IObjectWrapper zzb() {
        return androidx.work.impl.workers.a.i(f2(1, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final Uri zzc() {
        Parcel f2 = f2(2, I1());
        Uri uri = (Uri) zzbcd.b(f2, Uri.CREATOR);
        f2.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final double zzd() {
        Parcel f2 = f2(3, I1());
        double readDouble = f2.readDouble();
        f2.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final int zze() {
        Parcel f2 = f2(4, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final int zzf() {
        Parcel f2 = f2(5, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final Map zzg() {
        Parcel f2 = f2(6, I1());
        HashMap readHashMap = f2.readHashMap(zzbcd.f4538a);
        f2.recycle();
        return readHashMap;
    }
}
