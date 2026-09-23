package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Queue;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingQueue<E> extends ForwardingCollection<E> implements Queue<E> {
    @Override // java.util.Queue
    public final Object element() {
        return e0().element();
    }

    public boolean offer(Object obj) {
        return e0().offer(obj);
    }

    @Override // java.util.Queue
    public final Object peek() {
        return e0().peek();
    }

    @Override // java.util.Queue
    public final Object poll() {
        return e0().poll();
    }

    @Override // java.util.Queue
    public final Object remove() {
        return e0().remove();
    }

    @Override // com.google.common.collect.ForwardingCollection
    /* renamed from: y0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public abstract Queue e0();
}
