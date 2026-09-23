package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.ObjectCountHashMap;
import com.google.common.primitives.Ints;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    public static final RegularImmutableMultiset k;
    public final transient ObjectCountHashMap h;
    public final transient int i;
    public transient ImmutableSet j;

    /* loaded from: classes3.dex */
    public final class ElementSet extends IndexedImmutableSet<E> {
        public ElementSet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return RegularImmutableMultiset.this.contains(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i) {
            return RegularImmutableMultiset.this.h.e(i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return RegularImmutableMultiset.this.h.f12381c;
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static class SerializedForm implements Serializable {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.collect.ObjectCountHashMap, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.h(3);
        k = new RegularImmutableMultiset(obj);
    }

    public RegularImmutableMultiset(ObjectCountHashMap objectCountHashMap) {
        this.h = objectCountHashMap;
        long j = 0;
        for (int i = 0; i < objectCountHashMap.f12381c; i++) {
            j += objectCountHashMap.f(i);
        }
        this.i = Ints.c(j);
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        return this.h.d(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    /* renamed from: r */
    public final ImmutableSet j() {
        ImmutableSet immutableSet = this.j;
        if (immutableSet == null) {
            ElementSet elementSet = new ElementSet();
            this.j = elementSet;
            return elementSet;
        }
        return immutableSet;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public final Multiset.Entry t(int i) {
        ObjectCountHashMap objectCountHashMap = this.h;
        Preconditions.g(i, objectCountHashMap.f12381c);
        return new ObjectCountHashMap.MapEntry(i);
    }
}
