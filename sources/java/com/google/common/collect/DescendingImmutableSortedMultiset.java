package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Multiset;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtIncompatible
/* loaded from: classes3.dex */
public final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    public final transient ImmutableSortedMultiset i;

    public DescendingImmutableSortedMultiset(ImmutableSortedMultiset immutableSortedMultiset) {
        this.i = immutableSortedMultiset;
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        return this.i.Q(obj);
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry firstEntry() {
        return this.i.lastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry lastEntry() {
        return this.i.firstEntry();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return this.i.m();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.i.size();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public final Multiset.Entry t(int i) {
        return (Multiset.Entry) this.i.entrySet().a().x().get(i);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset
    /* renamed from: u */
    public final ImmutableSortedMultiset z() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedSet j() {
        return this.i.j().descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMultiset L(Object obj, BoundType boundType) {
        return this.i.a0(obj, boundType).z();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMultiset a0(Object obj, BoundType boundType) {
        return this.i.L(obj, boundType).z();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public final SortedMultiset z() {
        return this.i;
    }
}
