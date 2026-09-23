package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public interface SortedMultiset<E> extends SortedMultisetBridge<E>, SortedIterable<E> {
    SortedMultiset F0(Object obj, BoundType boundType, Object obj2, BoundType boundType2);

    SortedMultiset L(Object obj, BoundType boundType);

    SortedMultiset a0(Object obj, BoundType boundType);

    Comparator comparator();

    @Override // com.google.common.collect.Multiset
    Set entrySet();

    Multiset.Entry firstEntry();

    @Override // com.google.common.collect.Multiset
    NavigableSet j();

    Multiset.Entry lastEntry();

    Multiset.Entry pollFirstEntry();

    Multiset.Entry pollLastEntry();

    SortedMultiset z();
}
