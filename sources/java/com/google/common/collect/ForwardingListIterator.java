package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.ListIterator;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingListIterator<E> extends ForwardingIterator<E> implements ListIterator<E> {
    @Override // java.util.ListIterator
    public final void add(Object obj) {
        e0().add(obj);
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return e0().hasPrevious();
    }

    @Override // com.google.common.collect.ForwardingIterator
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public abstract ListIterator e0();

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return e0().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return e0().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return e0().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        e0().set(obj);
    }
}
