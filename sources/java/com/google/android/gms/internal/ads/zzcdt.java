package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxf;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class zzcdt implements ListenableFuture {

    /* renamed from: c, reason: collision with root package name */
    public final zzgzf f5072c = new Object();

    public final boolean a(Object obj) {
        boolean c2 = this.f5072c.c(obj);
        if (!c2) {
            com.google.android.gms.ads.internal.zzt.zzh().g("SettableFuture", new IllegalStateException("Provided SettableFuture with multiple values."));
        }
        return c2;
    }

    public final void b(Throwable th) {
        if (!this.f5072c.d(th)) {
            com.google.android.gms.ads.internal.zzt.zzh().g("SettableFuture", new IllegalStateException("Provided SettableFuture with multiple values."));
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f5072c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f5072c.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f5072c.f8289c instanceof zzgxf.zza;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f5072c.isDone();
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        this.f5072c.k(runnable, executor);
    }

    public void zza(String str) {
        a(str);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f5072c.get(j, timeUnit);
    }
}
