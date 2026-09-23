package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public abstract class zzgyi extends zzgyg implements ListenableFuture {
    @Override // com.google.android.gms.internal.ads.zzgyg
    public /* bridge */ /* synthetic */ Future c() {
        throw null;
    }

    public abstract ListenableFuture g();

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        g().k(runnable, executor);
    }
}
