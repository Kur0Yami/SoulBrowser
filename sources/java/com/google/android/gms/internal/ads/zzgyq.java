package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgyq implements ListenableFuture {
    public static final ListenableFuture f = new zzgyq(null);
    public static final zzgyu g = new zzgyu(zzgyq.class);

    /* renamed from: c, reason: collision with root package name */
    public final Object f8305c;

    public zzgyq(Object obj) {
        this.f8305c = obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f8305c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        zzgqa.h(runnable, "Runnable was null.");
        zzgqa.h(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            Logger a2 = g.a();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            a2.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", android.support.v4.media.a.r(new StringBuilder(valueOf.length() + 57 + valueOf2.length()), "RuntimeException while executing runnable ", valueOf, " with executor ", valueOf2), (Throwable) e);
        }
    }

    public final String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f8305c);
        return android.support.v4.media.a.r(new StringBuilder(String.valueOf(obj).length() + 25 + valueOf.length() + 2), obj, "[status=SUCCESS, result=[", valueOf, "]]");
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f8305c;
    }
}
