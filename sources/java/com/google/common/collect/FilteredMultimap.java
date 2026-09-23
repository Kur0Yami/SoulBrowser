package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;

@GwtCompatible
/* loaded from: classes3.dex */
interface FilteredMultimap<K, V> extends Multimap<K, V> {
    Predicate v();
}
