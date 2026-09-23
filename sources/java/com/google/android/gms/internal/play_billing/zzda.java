package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* loaded from: classes3.dex */
final class zzda implements zzdc {
    public static final zzdb f = new zzdb(zzda.class);

    /* renamed from: c, reason: collision with root package name */
    public final Object f11479c;

    public zzda(Object obj) {
        this.f11479c = obj;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdc
    public final void b0(Runnable runnable, Executor executor) {
        if (executor != null) {
            try {
                executor.execute(runnable);
                return;
            } catch (Exception e) {
                f.a().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", a.m("RuntimeException while executing runnable ", runnable.toString(), " with executor ", String.valueOf(executor)), (Throwable) e);
                return;
            }
        }
        throw new NullPointerException("Executor was null.");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f11479c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + this.f11479c.toString() + "]]";
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f11479c;
    }
}
