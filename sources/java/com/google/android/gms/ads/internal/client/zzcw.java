package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbsz;

/* loaded from: classes.dex */
public final class zzcw extends zzbcb implements zzcy {
    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final zzbsz getAdapterCreator() {
        Parcel f2 = f2(2, I1());
        zzbsz c5 = zzbsy.c5(f2.readStrongBinder());
        f2.recycle();
        return c5;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final zzfc getLiteSdkVersion() {
        Parcel f2 = f2(1, I1());
        zzfc zzfcVar = (zzfc) zzbcd.b(f2, zzfc.CREATOR);
        f2.recycle();
        return zzfcVar;
    }
}
