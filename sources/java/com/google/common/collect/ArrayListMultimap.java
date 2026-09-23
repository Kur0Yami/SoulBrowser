package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.ArrayList;
import java.util.List;

@GwtCompatible
/* loaded from: classes3.dex */
public final class ArrayListMultimap<K, V> extends AbstractListMultimap<K, V> {
    @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final List a(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final void clear() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final boolean containsKey(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final List get(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap
    /* renamed from: j */
    public final List f() {
        return new ArrayList(0);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final int size() {
        return this.i;
    }
}
