package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ForwardingObject;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingFuture<V> extends ForwardingObject implements Future<V> {

    /* loaded from: classes3.dex */
    public static abstract class SimpleForwardingFuture<V> extends ForwardingFuture<V> {
        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.util.concurrent.ForwardingFuture
        /* renamed from: h0 */
        public final Future e0() {
            return null;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return e0().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return e0().get();
    }

    @Override // com.google.common.collect.ForwardingObject
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public abstract Future e0();

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return e0().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return e0().isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return e0().get(j, timeUnit);
    }
}
