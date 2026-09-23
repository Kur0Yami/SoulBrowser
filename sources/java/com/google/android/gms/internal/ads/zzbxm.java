package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class zzbxm extends zzbcc implements zzbxn {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzbcb, com.google.android.gms.internal.ads.zzbxn] */
    public static zzbxn c5(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        if (queryLocalInterface instanceof zzbxn) {
            return (zzbxn) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }
}
