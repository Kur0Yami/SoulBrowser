package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import j$.util.Objects;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes3.dex */
public final class MinMaxPriorityQueue<E> extends AbstractQueue<E> {

    /* renamed from: c, reason: collision with root package name */
    public Object[] f12363c;
    public int f;
    public int g;

    /* loaded from: classes3.dex */
    public static final class Builder<B> {
    }

    /* loaded from: classes3.dex */
    public final class Heap {
    }

    /* loaded from: classes3.dex */
    public static final class MoveDesc<E> {
    }

    /* loaded from: classes3.dex */
    public final class QueueIterator implements Iterator<E> {

        /* renamed from: c, reason: collision with root package name */
        public int f12364c = -1;
        public int f = -1;
        public int g;
        public boolean h;

        public QueueIterator() {
            this.g = MinMaxPriorityQueue.this.g;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            if (minMaxPriorityQueue.g == this.g) {
                int i = this.f12364c + 1;
                if (this.f < i) {
                    this.f = i;
                }
                if (this.f < minMaxPriorityQueue.f) {
                    return true;
                }
                return false;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public final Object next() {
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            if (minMaxPriorityQueue.g == this.g) {
                int i = this.f12364c + 1;
                if (this.f < i) {
                    this.f = i;
                }
                int i2 = this.f;
                if (i2 < minMaxPriorityQueue.f) {
                    this.f12364c = i2;
                    this.h = true;
                    Object obj = minMaxPriorityQueue.f12363c[i2];
                    Objects.requireNonNull(obj);
                    return obj;
                }
                throw new NoSuchElementException("iterator moved past last element in queue.");
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            CollectPreconditions.d(this.h);
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            int i = minMaxPriorityQueue.g;
            int i2 = this.g;
            if (i == i2) {
                this.h = false;
                this.g = i2 + 1;
                int i3 = this.f12364c;
                if (i3 < minMaxPriorityQueue.f) {
                    minMaxPriorityQueue.a(i3);
                    this.f12364c--;
                    this.f--;
                    return;
                }
                throw null;
            }
            throw new ConcurrentModificationException();
        }
    }

    public final void a(int i) {
        Preconditions.i(i, this.f);
        boolean z = true;
        this.g++;
        int i2 = this.f - 1;
        this.f = i2;
        if (i2 == i) {
            this.f12363c[i2] = null;
            return;
        }
        Objects.requireNonNull(this.f12363c[i2]);
        if ((~(~(this.f + 1))) <= 0) {
            z = false;
        }
        Preconditions.m(z, "negative index");
        throw null;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public final boolean add(Object obj) {
        offer(obj);
        throw null;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        Iterator<E> it = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        offer(it.next());
        throw null;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        for (int i = 0; i < this.f; i++) {
            this.f12363c[i] = null;
        }
        this.f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new QueueIterator();
    }

    @Override // java.util.Queue
    public final boolean offer(Object obj) {
        int i;
        obj.getClass();
        boolean z = true;
        this.g++;
        int i2 = this.f + 1;
        this.f = i2;
        Object[] objArr = this.f12363c;
        if (i2 > objArr.length) {
            int length = objArr.length;
            if (length >= 64) {
                long j = (length / 2) * 3;
                i = (int) j;
                if (j != i) {
                    throw new ArithmeticException();
                }
            } else {
                i = (length + 1) * 2;
            }
            Object[] objArr2 = new Object[Math.min(i - 1, 0) + 1];
            Object[] objArr3 = this.f12363c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f12363c = objArr2;
        }
        if ((~(~i2)) <= 0) {
            z = false;
        }
        Preconditions.m(z, "negative index");
        throw null;
    }

    @Override // java.util.Queue
    public final Object peek() {
        if (isEmpty()) {
            return null;
        }
        Object obj = this.f12363c[0];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.Queue
    public final Object poll() {
        if (isEmpty()) {
            return null;
        }
        Object obj = this.f12363c[0];
        Objects.requireNonNull(obj);
        a(0);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        int i = this.f;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f12363c, 0, objArr, 0, i);
        return objArr;
    }
}
