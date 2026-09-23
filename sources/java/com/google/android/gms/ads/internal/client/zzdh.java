package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class zzdh extends zzbcb implements zzdj {
    @Override // com.google.android.gms.ads.internal.client.zzdj
    public final String zze() {
        Parcel f2 = f2(1, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdj
    public final String zzf() {
        Parcel f2 = f2(2, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }
}
