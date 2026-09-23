package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingIterator<T> extends ForwardingObject implements Iterator<T> {
    @Override // com.google.common.collect.ForwardingObject
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public abstract Iterator e0();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return e0().hasNext();
    }

    public Object next() {
        return e0().next();
    }

    public void remove() {
        e0().remove();
    }
}
