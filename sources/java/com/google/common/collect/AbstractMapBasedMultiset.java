package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractMapBasedMultiset<E> extends AbstractMultiset<E> implements Serializable {
    public transient long g;

    /* loaded from: classes3.dex */
    public abstract class Itr<T> implements Iterator<T> {

        /* renamed from: c, reason: collision with root package name */
        public int f12239c;
        public int f;
        public int g;

        public Itr() {
            AbstractMapBasedMultiset.this.getClass();
            throw null;
        }

        public abstract Object a(int i);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                a(this.f12239c);
                this.f = this.f12239c;
                throw null;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw null;
        }
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final boolean A(int i, Object obj) {
        CollectPreconditions.b(i, "oldCount");
        CollectPreconditions.b(0, "newCount");
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int G0(Object obj) {
        CollectPreconditions.b(0, "count");
        throw null;
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int T(int i, Object obj) {
        boolean z;
        if (i != 0) {
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.b("occurrences cannot be negative: %s", i, z);
            throw null;
        }
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int add(int i, Object obj) {
        boolean z;
        if (i != 0) {
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.b("occurrences cannot be negative: %s", i, z);
            throw null;
        }
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final int g() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator i() {
        return new AbstractMapBasedMultiset<Object>.Itr<Object>() { // from class: com.google.common.collect.AbstractMapBasedMultiset.1
            @Override // com.google.common.collect.AbstractMapBasedMultiset.Itr
            public final Object a(int i) {
                throw null;
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return Multisets.b(this);
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator k() {
        return new AbstractMapBasedMultiset<Object>.Itr<Multiset.Entry<Object>>() { // from class: com.google.common.collect.AbstractMapBasedMultiset.2
            @Override // com.google.common.collect.AbstractMapBasedMultiset.Itr
            public final Object a(int i) {
                throw null;
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return Ints.c(this.g);
    }
}
