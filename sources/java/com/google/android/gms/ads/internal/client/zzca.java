package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzbcc;

/* loaded from: classes.dex */
public abstract class zzca extends zzbcc implements zzcb {
    public static zzcb zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
        if (queryLocalInterface instanceof zzcb) {
            return (zzcb) queryLocalInterface;
        }
        return new zzbz(iBinder);
    }
}
