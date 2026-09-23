package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class IndexedImmutableSet<E> extends ImmutableSet<E> {
    @Override // com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        return a().c(i, objArr);
    }

    public abstract Object get(int i);

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p */
    public UnmodifiableIterator iterator() {
        return a().listIterator(0);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList u() {
        return new ImmutableList<Object>() { // from class: com.google.common.collect.IndexedImmutableSet.1
            @Override // java.util.List
            public final Object get(int i) {
                return IndexedImmutableSet.this.get(i);
            }

            @Override // com.google.common.collect.ImmutableCollection
            public final boolean m() {
                return IndexedImmutableSet.this.m();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return IndexedImmutableSet.this.size();
            }
        };
    }
}
