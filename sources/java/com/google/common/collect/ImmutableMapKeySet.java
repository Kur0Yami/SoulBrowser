package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
final class ImmutableMapKeySet<K, V> extends IndexedImmutableSet<K> {
    public final ImmutableMap h;

    @GwtIncompatible
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class KeySetSerializedForm<K> implements Serializable {
    }

    public ImmutableMapKeySet(ImmutableMap immutableMap) {
        this.h = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.h.containsKey(obj);
    }

    @Override // com.google.common.collect.IndexedImmutableSet
    public final Object get(int i) {
        return ((Map.Entry) this.h.entrySet().a().get(i)).getKey();
    }

    @Override // com.google.common.collect.IndexedImmutableSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final Iterator iterator() {
        return this.h.i();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return true;
    }

    @Override // com.google.common.collect.IndexedImmutableSet, com.google.common.collect.ImmutableCollection
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return this.h.i();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h.size();
    }
}
