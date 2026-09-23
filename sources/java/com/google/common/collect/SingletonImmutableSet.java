package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Iterators;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class SingletonImmutableSet<E> extends ImmutableSet<E> {
    public final transient Object h;

    public SingletonImmutableSet(Object obj) {
        obj.getClass();
        this.h = obj;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public final ImmutableList a() {
        return ImmutableList.w(this.h);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        objArr[i] = this.h;
        return i + 1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.h.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.h.hashCode();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return new Iterators.SingletonIterator(this.h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.h.toString() + ']';
    }
}
