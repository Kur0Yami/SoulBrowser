package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
/* loaded from: classes3.dex */
final class CartesianList<E> extends AbstractList<List<E>> implements RandomAccess {

    /* renamed from: com.google.common.collect.CartesianList$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ImmutableList<Object> {
        @Override // java.util.List
        public final Object get(int i) {
            size();
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof List)) {
            return false;
        }
        ((List) obj).size();
        throw null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        throw null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof List)) {
            return -1;
        }
        ((List) obj).size();
        throw null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof List)) {
            return -1;
        }
        ((List) obj).size();
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        throw null;
    }
}
