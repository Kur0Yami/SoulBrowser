package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;

@GwtCompatible
/* loaded from: classes3.dex */
final class ImmutableEnumSet<E extends Enum<E>> extends ImmutableSet<E> {
    public static final /* synthetic */ int j = 0;
    public final transient EnumSet h;
    public transient int i;

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class EnumSerializedForm<E extends Enum<E>> implements Serializable {
    }

    public ImmutableEnumSet(EnumSet enumSet) {
        this.h = enumSet;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.h.contains(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof ImmutableEnumSet) {
            collection = ((ImmutableEnumSet) collection).h;
        }
        return this.h.containsAll(collection);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableEnumSet) {
            obj = ((ImmutableEnumSet) obj).h;
        }
        return this.h.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.i;
        if (i == 0) {
            int hashCode = this.h.hashCode();
            this.i = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.h.isEmpty();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return Iterators.l(this.h.iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return this.h.toString();
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean v() {
        return true;
    }
}
