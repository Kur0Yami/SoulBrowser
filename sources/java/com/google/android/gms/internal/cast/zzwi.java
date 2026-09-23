package com.google.android.gms.internal.cast;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public abstract class zzwi extends zzwg implements ListenableFuture {
    @Override // com.google.android.gms.internal.cast.zzwg
    public /* bridge */ /* synthetic */ Future b() {
        throw null;
    }

    public abstract ListenableFuture c();

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        c().k(runnable, executor);
    }
}
