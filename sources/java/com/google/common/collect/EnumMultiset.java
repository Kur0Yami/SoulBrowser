package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;

@J2ktIncompatible
@GwtCompatible
/* loaded from: classes3.dex */
public final class EnumMultiset<E extends Enum<E>> extends AbstractMultiset<E> implements Serializable {
    public static final /* synthetic */ int i = 0;
    public transient int g;
    public transient long h;

    /* renamed from: com.google.common.collect.EnumMultiset$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends EnumMultiset<Enum<Object>>.Itr<Enum<Object>> {
    }

    /* renamed from: com.google.common.collect.EnumMultiset$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends EnumMultiset<Enum<Object>>.Itr<Multiset.Entry<Enum<Object>>> {

        /* renamed from: com.google.common.collect.EnumMultiset$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends Multisets.AbstractEntry<Enum<Object>> {
            @Override // com.google.common.collect.Multiset.Entry
            public final Object a() {
                throw null;
            }

            @Override // com.google.common.collect.Multiset.Entry
            public final int getCount() {
                throw null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public abstract class Itr<T> implements Iterator<T> {
        public Itr() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i = EnumMultiset.i;
            EnumMultiset.this.getClass();
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            hasNext();
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            CollectPreconditions.d(false);
            int i = EnumMultiset.i;
            throw null;
        }
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int G0(Object obj) {
        Enum r1 = (Enum) obj;
        r1.getClass();
        r1.ordinal();
        throw null;
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        if (obj != null && (obj instanceof Enum)) {
            ((Enum) obj).ordinal();
            throw null;
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int T(int i2, Object obj) {
        if (obj != null && (obj instanceof Enum)) {
            ((Enum) obj).ordinal();
            throw null;
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int add(int i2, Object obj) {
        Enum r2 = (Enum) obj;
        r2.getClass();
        r2.ordinal();
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        Arrays.fill((int[]) null, 0);
        this.h = 0L;
        this.g = 0;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final int g() {
        return this.g;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator i() {
        return new Itr();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return Multisets.b(this);
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator k() {
        return new Itr();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return Ints.c(this.h);
    }
}
