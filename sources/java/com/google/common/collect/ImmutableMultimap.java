package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.Iterators;
import com.google.common.collect.Multiset;
import com.google.errorprone.annotations.DoNotMock;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableMultimap<K, V> extends BaseImmutableMultimap<K, V> implements Serializable {
    public final transient ImmutableMap i;
    public final transient int j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ImmutableMultimap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends UnmodifiableIterator<Map.Entry<Object, Object>> {

        /* renamed from: c, reason: collision with root package name */
        public final UnmodifiableIterator f12297c;
        public Object f = null;
        public UnmodifiableIterator g = Iterators.ArrayItr.h;

        public AnonymousClass1(ImmutableMultimap immutableMultimap) {
            this.f12297c = immutableMultimap.i.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (!this.g.hasNext() && !this.f12297c.hasNext()) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.g.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f12297c.next();
                this.f = entry.getKey();
                this.g = ((ImmutableCollection) entry.getValue()).iterator();
            }
            Object obj = this.f;
            Objects.requireNonNull(obj);
            return new AbstractMap.SimpleImmutableEntry(obj, this.g.next());
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMultimap$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends UnmodifiableIterator<Object> {

        /* renamed from: c, reason: collision with root package name */
        public final UnmodifiableIterator f12298c;
        public UnmodifiableIterator f = Iterators.ArrayItr.h;

        public AnonymousClass2(ImmutableMultimap immutableMultimap) {
            this.f12298c = immutableMultimap.i.values().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (!this.f.hasNext() && !this.f12298c.hasNext()) {
                return false;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Iterator
        public final Object next() {
            if (!this.f.hasNext()) {
                this.f = ((ImmutableCollection) this.f12298c.next()).iterator();
            }
            return this.f.next();
        }
    }

    @DoNotMock
    /* loaded from: classes3.dex */
    public static class Builder<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public Map f12299a;
    }

    /* loaded from: classes3.dex */
    public static final class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        public final ImmutableMultimap f;

        public EntryCollection(ImmutableMultimap immutableMultimap) {
            this.f = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f.Z(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return this.f.i.h();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* renamed from: p */
        public final UnmodifiableIterator iterator() {
            ImmutableMultimap immutableMultimap = this.f;
            immutableMultimap.getClass();
            return new AnonymousClass1(immutableMultimap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f.j;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class FieldSettersHolder {
        static {
            Serialization.a(ImmutableMultimap.class, "map");
            Serialization.a(ImmutableMultimap.class, "size");
        }
    }

    /* loaded from: classes3.dex */
    public final class Keys extends ImmutableMultiset<K> {
        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
        public final Set j() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableMultiset
        /* renamed from: r */
        public final ImmutableSet j() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMultiset
        public final Multiset.Entry t(int i) {
            throw null;
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class KeysSerializedForm implements Serializable {
    }

    /* loaded from: classes3.dex */
    public static final class Values<K, V> extends ImmutableCollection<V> {
        @Override // com.google.common.collect.ImmutableCollection
        public final int c(int i, Object[] objArr) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* renamed from: p */
        public final UnmodifiableIterator iterator() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            throw null;
        }
    }

    public ImmutableMultimap(ImmutableMap immutableMap, int i) {
        this.i = immutableMap;
        this.j = i;
    }

    @Override // com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection a(Object obj) {
        k();
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Map b() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection c() {
        return new EntryCollection(this);
    }

    @Override // com.google.common.collect.Multimap
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multimap
    public final boolean containsKey(Object obj) {
        return this.i.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final boolean containsValue(Object obj) {
        if (obj != null && super.containsValue(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Set d() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Iterator e() {
        return new AnonymousClass1(this);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public ImmutableMap G() {
        return this.i;
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection i() {
        return (ImmutableCollection) super.i();
    }

    public final UnmodifiableIterator h() {
        return new AnonymousClass1(this);
    }

    @Override // com.google.common.collect.Multimap
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public abstract ImmutableCollection get(Object obj);

    public ImmutableCollection k() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Set keySet() {
        return this.i.keySet();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multimap
    public final int size() {
        return this.j;
    }
}
