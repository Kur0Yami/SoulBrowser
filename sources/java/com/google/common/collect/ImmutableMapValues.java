package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
final class ImmutableMapValues<K, V> extends ImmutableCollection<V> {
    public final ImmutableMap f;

    /* renamed from: com.google.common.collect.ImmutableMapValues$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends UnmodifiableIterator<Object> {

        /* renamed from: c, reason: collision with root package name */
        public final UnmodifiableIterator f12296c;

        public AnonymousClass1(ImmutableMapValues immutableMapValues) {
            this.f12296c = immutableMapValues.f.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f12296c.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            return ((Map.Entry) this.f12296c.next()).getValue();
        }
    }

    @GwtIncompatible
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm<V> implements Serializable {
    }

    public ImmutableMapValues(ImmutableMap immutableMap) {
        this.f = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList a() {
        final ImmutableList a2 = this.f.entrySet().a();
        return new ImmutableList<Object>() { // from class: com.google.common.collect.ImmutableMapValues.2
            @Override // java.util.List
            public final Object get(int i) {
                return ((Map.Entry) ImmutableList.this.get(i)).getValue();
            }

            @Override // com.google.common.collect.ImmutableCollection
            public final boolean m() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return ImmutableList.this.size();
            }
        };
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this);
            while (anonymousClass1.hasNext()) {
                if (obj.equals(anonymousClass1.next())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final Iterator iterator() {
        return new AnonymousClass1(this);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return new AnonymousClass1(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f.size();
    }
}
