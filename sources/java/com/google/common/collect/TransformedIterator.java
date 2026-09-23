package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class TransformedIterator<F, T> implements Iterator<T> {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f12408c;

    public TransformedIterator(Iterator it) {
        it.getClass();
        this.f12408c = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12408c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f12408c.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f12408c.remove();
    }
}
