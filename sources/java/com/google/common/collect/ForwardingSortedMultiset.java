package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.SortedMultisets;
import java.util.Comparator;
import java.util.NavigableSet;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingSortedMultiset<E> extends ForwardingMultiset<E> implements SortedMultiset<E> {

    /* loaded from: classes3.dex */
    public abstract class StandardDescendingMultiset extends DescendingMultiset<E> {
        @Override // com.google.common.collect.DescendingMultiset
        public final SortedMultiset C0() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public class StandardElementSet extends SortedMultisets.NavigableElementSet<E> {
    }

    @Override // com.google.common.collect.ForwardingMultiset
    /* renamed from: B0, reason: merged with bridge method [inline-methods] */
    public abstract SortedMultiset e0();

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset F0(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return e0().F0(obj, boundType, obj2, boundType2);
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset L(Object obj, BoundType boundType) {
        return e0().L(obj, boundType);
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset a0(Object obj, BoundType boundType) {
        return e0().a0(obj, boundType);
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public final Comparator comparator() {
        return e0().comparator();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry firstEntry() {
        return e0().firstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry lastEntry() {
        return e0().lastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollFirstEntry() {
        return e0().pollFirstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollLastEntry() {
        return e0().pollLastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset z() {
        return e0().z();
    }

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
    public final NavigableSet j() {
        return e0().j();
    }
}
