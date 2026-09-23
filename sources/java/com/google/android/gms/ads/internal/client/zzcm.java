package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class zzcm extends zzbcb implements zzco {
    public zzcm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzb(String str, String str2) {
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        r2(1, I1);
    }
}
