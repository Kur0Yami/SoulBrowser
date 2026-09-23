package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzdm extends zzbcc implements zzdn {
    public zzdm() {
        super("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zze zzeVar = (zze) zzbcd.b(parcel, zze.CREATOR);
            zzbcd.f(parcel);
            zze(zzeVar);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
