package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzgyl {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8304a;
    public final zzgtd b;

    public /* synthetic */ zzgyl(zzgtd zzgtdVar, boolean z) {
        this.f8304a = z;
        this.b = zzgtdVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgya, com.google.common.util.concurrent.ListenableFuture, com.google.android.gms.internal.ads.zzgxo] */
    public final ListenableFuture a(Callable callable, Executor executor) {
        ?? zzgxoVar = new zzgxo(this.b, this.f8304a, false);
        zzgxoVar.t = new zzgxy(zzgxoVar, callable, executor);
        zzgxoVar.v();
        return zzgxoVar;
    }
}
