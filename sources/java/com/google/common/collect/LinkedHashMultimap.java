package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.Sets;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public final class LinkedHashMultimap<K, V> extends AbstractSetMultimap<K, V> {

    /* renamed from: com.google.common.collect.LinkedHashMultimap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Iterator<Map.Entry<Object, Object>> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Map.Entry<Object, Object> next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Preconditions.m(false, "no calls to next() since the last call to remove()");
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class MultimapIterationChain<K, V> {
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class ValueEntry<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public final class ValueSet extends Sets.ImprovedAbstractSet<V> {

        /* renamed from: c, reason: collision with root package name */
        public int f12313c;
        public ValueEntry f;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Hashing.c(obj);
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Arrays.fill((Object[]) null, (Object) null);
            if (this.f == null) {
                this.f = null;
                this.f12313c++;
                return;
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Hashing.c(obj);
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new Iterator<Object>() { // from class: com.google.common.collect.LinkedHashMultimap.ValueSet.1

                /* renamed from: c, reason: collision with root package name */
                public ValueEntry f12314c;
                public ValueEntry f;
                public final int g;

                {
                    this.f12314c = ValueSet.this.f;
                    this.g = ValueSet.this.f12313c;
                }

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    if (ValueSet.this.f12313c == this.g) {
                        if (this.f12314c != null) {
                            return true;
                        }
                        return false;
                    }
                    throw new ConcurrentModificationException();
                }

                @Override // java.util.Iterator
                public final Object next() {
                    if (ValueSet.this.f12313c == this.g) {
                        ValueEntry valueEntry = this.f12314c;
                        if (valueEntry != null) {
                            V value = valueEntry.getValue();
                            this.f = valueEntry;
                            this.f12314c = null;
                            return value;
                        }
                        throw new NoSuchElementException();
                    }
                    throw new ConcurrentModificationException();
                }

                @Override // java.util.Iterator
                public final void remove() {
                    boolean z;
                    if (ValueSet.this.f12313c == this.g) {
                        if (this.f != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        Preconditions.m(z, "no calls to next() since the last call to remove()");
                        Hashing.c(this.f.getValue());
                        throw null;
                    }
                    throw new ConcurrentModificationException();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Hashing.c(obj);
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return 0;
        }
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final Set a(Object obj) {
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

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
    public final Iterator e() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    /* renamed from: f */
    public final Collection j() {
        return new CompactHashSet();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final Iterator g() {
        e();
        throw null;
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final Set get(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Collection i() {
        return super.i();
    }

    @Override // com.google.common.collect.AbstractSetMultimap
    public final Set j() {
        return new CompactHashSet();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final int size() {
        return this.i;
    }
}
