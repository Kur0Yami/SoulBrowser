package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableMultimap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements SetMultimap<K, V> {
    public final transient ImmutableSet k;
    public transient ImmutableSet l;

    /* loaded from: classes3.dex */
    public static final class Builder<K, V> extends ImmutableMultimap.Builder<K, V> {
    }

    /* loaded from: classes3.dex */
    public static final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        public final transient ImmutableSetMultimap h;

        public EntrySet(ImmutableSetMultimap immutableSetMultimap) {
            this.h = immutableSetMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.h.Z(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public final Iterator iterator() {
            return this.h.h();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* renamed from: p */
        public final UnmodifiableIterator iterator() {
            return this.h.h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.h.j;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class SetFieldSettersHolder {
        static {
            Serialization.a(ImmutableSetMultimap.class, "emptySet");
        }
    }

    public ImmutableSetMultimap() {
        super(RegularImmutableMap.k, 0);
        int i = ImmutableSet.g;
        this.k = RegularImmutableSet.n;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final Collection a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* renamed from: g */
    public final ImmutableCollection i() {
        ImmutableSet immutableSet = this.l;
        if (immutableSet == null) {
            EntrySet entrySet = new EntrySet(this);
            this.l = entrySet;
            return entrySet;
        }
        return immutableSet;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final Collection get(Object obj) {
        return (ImmutableSet) MoreObjects.a((ImmutableSet) this.i.get(obj), this.k);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Collection i() {
        ImmutableSet immutableSet = this.l;
        if (immutableSet != null) {
            return immutableSet;
        }
        EntrySet entrySet = new EntrySet(this);
        this.l = entrySet;
        return entrySet;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* renamed from: j */
    public final ImmutableCollection get(Object obj) {
        return (ImmutableSet) MoreObjects.a((ImmutableSet) this.i.get(obj), this.k);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public final ImmutableCollection k() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final Set a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final Set get(Object obj) {
        return (ImmutableSet) MoreObjects.a((ImmutableSet) this.i.get(obj), this.k);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Set i() {
        ImmutableSet immutableSet = this.l;
        if (immutableSet != null) {
            return immutableSet;
        }
        EntrySet entrySet = new EntrySet(this);
        this.l = entrySet;
        return entrySet;
    }
}
