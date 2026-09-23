package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingSortedSetMultimap<K, V> extends ForwardingSetMultimap<K, V> implements SortedSetMultimap<K, V> {
    @Override // com.google.common.collect.ForwardingSetMultimap
    /* renamed from: s0, reason: merged with bridge method [inline-methods] */
    public abstract SortedSetMultimap e0();

    @Override // com.google.common.collect.ForwardingSetMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public final SortedSet a(Object obj) {
        return e0().a(obj);
    }

    @Override // com.google.common.collect.ForwardingSetMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public final SortedSet get(Object obj) {
        return e0().get(obj);
    }
}
