package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzcdr {
    public static void a(ListenableFuture listenableFuture, String str) {
        zzcdp zzcdpVar = new zzcdp(str);
        listenableFuture.k(new zzgyk(listenableFuture, zzcdpVar), zzcdo.g);
    }

    public static void b(ListenableFuture listenableFuture, String str) {
        zzcdq zzcdqVar = new zzcdq(str);
        listenableFuture.k(new zzgyk(listenableFuture, zzcdqVar), zzcdo.g);
    }
}
