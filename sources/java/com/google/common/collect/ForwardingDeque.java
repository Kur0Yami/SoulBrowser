package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.util.Deque;
import java.util.Iterator;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ForwardingDeque<E> extends ForwardingQueue<E> implements Deque<E> {
    @Override // com.google.common.collect.ForwardingQueue
    /* renamed from: B0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public abstract Deque e0();

    @Override // java.util.Deque
    public final void addFirst(Object obj) {
        h0().addFirst(obj);
    }

    @Override // java.util.Deque
    public final void addLast(Object obj) {
        h0().addLast(obj);
    }

    @Override // java.util.Deque
    public final Iterator descendingIterator() {
        return h0().descendingIterator();
    }

    @Override // java.util.Deque
    public final Object getFirst() {
        return h0().getFirst();
    }

    @Override // java.util.Deque
    public final Object getLast() {
        return h0().getLast();
    }

    @Override // java.util.Deque
    public final boolean offerFirst(Object obj) {
        return h0().offerFirst(obj);
    }

    @Override // java.util.Deque
    public final boolean offerLast(Object obj) {
        return h0().offerLast(obj);
    }

    @Override // java.util.Deque
    public final Object peekFirst() {
        return h0().peekFirst();
    }

    @Override // java.util.Deque
    public final Object peekLast() {
        return h0().peekLast();
    }

    @Override // java.util.Deque
    public final Object pollFirst() {
        return h0().pollFirst();
    }

    @Override // java.util.Deque
    public final Object pollLast() {
        return h0().pollLast();
    }

    @Override // java.util.Deque
    public final Object pop() {
        return h0().pop();
    }

    @Override // java.util.Deque
    public final void push(Object obj) {
        h0().push(obj);
    }

    @Override // java.util.Deque
    public final Object removeFirst() {
        return h0().removeFirst();
    }

    @Override // java.util.Deque
    public final boolean removeFirstOccurrence(Object obj) {
        return h0().removeFirstOccurrence(obj);
    }

    @Override // java.util.Deque
    public final Object removeLast() {
        return h0().removeLast();
    }

    @Override // java.util.Deque
    public final boolean removeLastOccurrence(Object obj) {
        return h0().removeLastOccurrence(obj);
    }
}
