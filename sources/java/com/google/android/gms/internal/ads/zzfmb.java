package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfmb implements ListenableFuture {

    /* renamed from: c, reason: collision with root package name */
    public final Object f7470c;
    public final String f;
    public final ListenableFuture g;

    public zzfmb(Object obj, String str, ListenableFuture listenableFuture) {
        this.f7470c = obj;
        this.f = str;
        this.g = listenableFuture;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.g.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.g.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.g.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.g.isDone();
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        this.g.k(runnable, executor);
    }

    public final String toString() {
        int identityHashCode = System.identityHashCode(this);
        String str = this.f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(identityHashCode).length());
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.g.get(j, timeUnit);
    }
}
