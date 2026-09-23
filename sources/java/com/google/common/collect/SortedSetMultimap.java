package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public interface SortedSetMultimap<K, V> extends SetMultimap<K, V> {
    @Override // com.google.common.collect.SetMultimap, com.google.common.collect.Multimap
    SortedSet a(Object obj);

    @Override // com.google.common.collect.SetMultimap, com.google.common.collect.Multimap
    SortedSet get(Object obj);
}
