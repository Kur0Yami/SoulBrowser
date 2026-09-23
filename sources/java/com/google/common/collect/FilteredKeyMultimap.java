package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public class FilteredKeyMultimap<K, V> extends AbstractMultimap<K, V> implements FilteredMultimap<K, V> {

    /* loaded from: classes3.dex */
    public static final class AddRejectingList<K, V> extends ForwardingList<V> {
        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public final boolean add(Object obj) {
            add(0, obj);
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            addAll(0, collection);
            throw null;
        }

        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.google.common.collect.ForwardingList
        public final List y0() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public final void add(int i, Object obj) {
            Preconditions.i(i, 0);
            throw null;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public final boolean addAll(int i, Collection collection) {
            collection.getClass();
            Preconditions.i(i, 0);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class AddRejectingSet<K, V> extends ForwardingSet<V> {
        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public final boolean add(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            collection.getClass();
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return Collections.EMPTY_SET;
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            return Collections.EMPTY_SET;
        }

        @Override // com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            return Collections.EMPTY_SET;
        }
    }

    /* loaded from: classes3.dex */
    public class Entries extends ForwardingCollection<Map.Entry<K, V>> {
        public Entries() {
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            e0();
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            FilteredKeyMultimap.this.getClass();
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            FilteredKeyMultimap.this.getClass();
            ((Map.Entry) obj).getKey();
            throw null;
        }
    }

    @Override // com.google.common.collect.Multimap
    public Collection a(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Map b() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public Collection c() {
        return new Entries();
    }

    @Override // com.google.common.collect.Multimap
    public final void clear() {
        keySet().clear();
    }

    @Override // com.google.common.collect.Multimap
    public final boolean containsKey(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Set d() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Iterator e() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Multimap
    public Collection get(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.Multimap
    public final int size() {
        Iterator<V> it = G().values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((Collection) it.next()).size();
        }
        return i;
    }

    @Override // com.google.common.collect.FilteredMultimap
    public final Predicate v() {
        Predicates.c(null, Maps.EntryFunction.f12351c);
        throw null;
    }
}
