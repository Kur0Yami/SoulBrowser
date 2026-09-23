package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzfnn {
    public static void a(ListenableFuture listenableFuture, zzfne zzfneVar) {
        if (!((Boolean) zzbid.f4704c.c()).booleanValue()) {
            return;
        }
        zzgye r = zzgye.r(listenableFuture);
        zzfnj zzfnjVar = new zzfnj(zzfneVar);
        r.k(new zzgyk(r, zzfnjVar), zzcdo.g);
    }

    public static int b(zzfik zzfikVar) {
        int zzg = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzg(zzfikVar) - 1;
        return (zzg == 0 || zzg == 1) ? 7 : 23;
    }

    public static void c(ListenableFuture listenableFuture, zzfno zzfnoVar, zzfne zzfneVar, boolean z) {
        if (!((Boolean) zzbid.f4704c.c()).booleanValue()) {
            return;
        }
        zzgye r = zzgye.r(listenableFuture);
        zzfnk zzfnkVar = new zzfnk(zzfnoVar, zzfneVar, z);
        r.k(new zzgyk(r, zzfnkVar), zzcdo.g);
    }
}
