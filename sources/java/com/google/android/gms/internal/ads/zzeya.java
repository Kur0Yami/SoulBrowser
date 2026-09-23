package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final /* synthetic */ class zzeya implements Callable {
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n6)).booleanValue()) {
                if (zzeyb.b == null) {
                    zzeyb.b = com.google.android.gms.ads.internal.zzt.zzu().zzb();
                }
                return new zzeyc(zzeyb.b);
            }
            return new zzeyc(com.google.android.gms.ads.internal.zzt.zzu().zzb());
        }
        return new zzeyc(null);
    }
}
