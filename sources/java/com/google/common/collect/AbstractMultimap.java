package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multimaps;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractMultimap<K, V> implements Multimap<K, V> {

    /* renamed from: c, reason: collision with root package name */
    public transient Collection f12240c;
    public transient Set f;
    public transient Collection g;
    public transient Map h;

    /* loaded from: classes3.dex */
    public class Entries extends Multimaps.Entries<K, V> {
        public Entries() {
        }

        @Override // com.google.common.collect.Multimaps.Entries
        public final Multimap a() {
            return AbstractMultimap.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return AbstractMultimap.this.e();
        }
    }

    /* loaded from: classes3.dex */
    public final class EntrySet extends AbstractMultimap<K, V>.Entries implements Set<Map.Entry<K, V>> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.e(this);
        }
    }

    /* loaded from: classes3.dex */
    public final class Values extends AbstractCollection<V> {
        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            throw null;
        }
    }

    @Override // com.google.common.collect.Multimap
    public Map G() {
        Map map = this.h;
        if (map == null) {
            Map b = b();
            this.h = b;
            return b;
        }
        return map;
    }

    @Override // com.google.common.collect.Multimap
    public boolean Z(Object obj, Object obj2) {
        Collection collection = (Collection) G().get(obj);
        if (collection != null && collection.contains(obj2)) {
            return true;
        }
        return false;
    }

    public abstract Map b();

    public abstract Collection c();

    @Override // com.google.common.collect.Multimap
    public boolean containsValue(Object obj) {
        Iterator<V> it = G().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Set d();

    public abstract Iterator e();

    @Override // com.google.common.collect.Multimap
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Multimap) {
            return G().equals(((Multimap) obj).G());
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public int hashCode() {
        return G().hashCode();
    }

    @Override // com.google.common.collect.Multimap
    public Collection i() {
        Collection collection = this.f12240c;
        if (collection == null) {
            Collection c2 = c();
            this.f12240c = c2;
            return c2;
        }
        return collection;
    }

    @Override // com.google.common.collect.Multimap
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public Set keySet() {
        Set set = this.f;
        if (set == null) {
            Set d = d();
            this.f = d;
            return d;
        }
        return set;
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(Object obj, Object obj2) {
        Collection collection = (Collection) G().get(obj);
        if (collection != null && collection.remove(obj2)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return G().toString();
    }
}
