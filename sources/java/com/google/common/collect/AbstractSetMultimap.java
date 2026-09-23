package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.AbstractMapBasedMultimap;
import java.util.Collection;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractSetMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements SetMultimap<K, V> {
    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public Collection h(Collection collection, Object obj) {
        return new AbstractMapBasedMultimap.WrappedSet(obj, (Set) collection);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public abstract Set j();

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public Set a(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public Set get(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Set i() {
        return (Set) super.i();
    }
}
