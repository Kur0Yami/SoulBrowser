package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public class zzgye extends zzgyn {
    public static zzgye r(ListenableFuture listenableFuture) {
        if (listenableFuture instanceof zzgye) {
            return (zzgye) listenableFuture;
        }
        return new zzgyf(listenableFuture);
    }
}
