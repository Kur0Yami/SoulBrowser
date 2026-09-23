package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.lang.Comparable;
import java.util.NavigableSet;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    public static final /* synthetic */ int k = 0;

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: E */
    public final ImmutableSortedSet headSet(Object obj) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return G(comparable, false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: F */
    public final ImmutableSortedSet headSet(Object obj, boolean z) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return G(comparable, z);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: H */
    public final ImmutableSortedSet subSet(Object obj, Object obj2) {
        boolean z;
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        if (this.h.compare(comparable, comparable2) <= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        return J(comparable, true, comparable2, false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: I */
    public final ImmutableSortedSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        boolean z3;
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        if (this.h.compare(comparable, comparable2) <= 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.d(z3);
        return J(comparable, z, comparable2, z2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: K */
    public final ImmutableSortedSet tailSet(Object obj) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return N(comparable, true);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: M */
    public final ImmutableSortedSet tailSet(Object obj, boolean z) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return N(comparable, z);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: O */
    public abstract ContiguousSet G(Comparable comparable, boolean z);

    public abstract Range P();

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: R */
    public abstract ContiguousSet J(Comparable comparable, boolean z, Comparable comparable2, boolean z2);

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: U */
    public abstract ContiguousSet N(Comparable comparable, boolean z);

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return G(comparable, z);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        Preconditions.d(this.h.compare(comparable, comparable2) <= 0);
        return J(comparable, z, comparable2, z2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return N(comparable, z);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return P().toString();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet y() {
        return new DescendingImmutableSortedSet(this);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return G(comparable, false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return N(comparable, true);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        Preconditions.d(this.h.compare(comparable, comparable2) <= 0);
        return J(comparable, true, comparable2, false);
    }
}
