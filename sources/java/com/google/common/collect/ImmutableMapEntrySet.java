package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class ImmutableMapEntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

    @GwtIncompatible
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class EntrySetSerializedForm<K, V> implements Serializable {
    }

    /* loaded from: classes3.dex */
    public static final class RegularEntrySet<K, V> extends ImmutableMapEntrySet<K, V> {
        @Override // com.google.common.collect.ImmutableCollection
        public final int c(int i, Object[] objArr) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public final Iterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* renamed from: p */
        public final UnmodifiableIterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList u() {
            return null;
        }

        @Override // com.google.common.collect.ImmutableMapEntrySet
        public final ImmutableMap y() {
            return null;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = y().get(entry.getKey());
            if (obj2 != null && obj2.equals(entry.getValue())) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return y().hashCode();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return y().h();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return y().size();
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean v() {
        return y().g();
    }

    public abstract ImmutableMap y();
}
