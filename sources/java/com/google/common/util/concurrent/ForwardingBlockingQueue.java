package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.ForwardingQueue;
import java.util.Collection;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ForwardingBlockingQueue<E> extends ForwardingQueue<E> implements BlockingQueue<E> {
    @Override // com.google.common.collect.ForwardingQueue
    /* renamed from: B0, reason: merged with bridge method [inline-methods] */
    public abstract BlockingQueue e0();

    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection collection, int i) {
        return e0().drainTo(collection, i);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final boolean offer(Object obj, long j, TimeUnit timeUnit) {
        return e0().offer(obj, j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Object poll(long j, TimeUnit timeUnit) {
        return e0().poll(j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final void put(Object obj) {
        e0().put(obj);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int remainingCapacity() {
        return e0().remainingCapacity();
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Object take() {
        return e0().take();
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection collection) {
        return e0().drainTo(collection);
    }
}
