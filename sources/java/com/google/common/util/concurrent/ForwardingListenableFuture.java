package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingListenableFuture<V> extends ForwardingFuture<V> implements ListenableFuture<V> {

    /* loaded from: classes3.dex */
    public static abstract class SimpleForwardingListenableFuture<V> extends ForwardingListenableFuture<V> {
        @Override // com.google.common.util.concurrent.ForwardingListenableFuture, com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public final Object e0() {
            throw null;
        }

        @Override // com.google.common.util.concurrent.ForwardingListenableFuture, com.google.common.util.concurrent.ForwardingFuture
        /* renamed from: h0 */
        public final Future e0() {
            throw null;
        }

        @Override // com.google.common.util.concurrent.ForwardingListenableFuture
        /* renamed from: n0 */
        public final ListenableFuture e0() {
            throw null;
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        e0().k(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.ForwardingFuture
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public abstract ListenableFuture e0();
}
