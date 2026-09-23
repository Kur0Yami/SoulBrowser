package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import j$.util.List;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess, j$.util.List {
    public static final UnmodifiableListIterator f = new Itr(RegularImmutableList.i, 0);

    /* loaded from: classes3.dex */
    public static final class Builder<E> extends ImmutableCollection.ArrayBasedBuilder<E> {
        @Override // com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public final ImmutableCollection.Builder a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.ArrayBasedBuilder
        /* renamed from: c */
        public final ImmutableCollection.ArrayBasedBuilder a(Object obj) {
            super.a(obj);
            return this;
        }

        public final void e(Object obj) {
            super.a(obj);
        }

        public final ImmutableList f() {
            this.f12289c = true;
            return ImmutableList.q(this.b, this.f12288a);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Itr<E> extends AbstractIndexedListIterator<E> {
        public final ImmutableList g;

        public Itr(ImmutableList immutableList, int i) {
            super(immutableList.size(), i);
            this.g = immutableList;
        }

        @Override // com.google.common.collect.AbstractIndexedListIterator
        public final Object a(int i) {
            return this.g.get(i);
        }
    }

    /* loaded from: classes3.dex */
    public static final class ReverseImmutableList<E> extends ImmutableList<E> {
        public final transient ImmutableList g;

        public ReverseImmutableList(ImmutableList immutableList) {
            this.g = immutableList;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.g.contains(obj);
        }

        @Override // java.util.List
        public final Object get(int i) {
            ImmutableList immutableList = this.g;
            Preconditions.g(i, immutableList.size());
            return immutableList.get((immutableList.size() - 1) - i);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final int indexOf(Object obj) {
            int lastIndexOf = this.g.lastIndexOf(obj);
            if (lastIndexOf >= 0) {
                return (r0.size() - 1) - lastIndexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final int lastIndexOf(Object obj) {
            int indexOf = this.g.indexOf(obj);
            if (indexOf >= 0) {
                return (r0.size() - 1) - indexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return this.g.m();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.g.size();
        }

        @Override // com.google.common.collect.ImmutableList
        public final ImmutableList x() {
            return this.g;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* renamed from: y, reason: merged with bridge method [inline-methods] */
        public final ImmutableList subList(int i, int i2) {
            ImmutableList immutableList = this.g;
            Preconditions.j(i, i2, immutableList.size());
            return immutableList.subList(immutableList.size() - i2, immutableList.size() - i).x();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm implements Serializable {
    }

    /* loaded from: classes3.dex */
    public final class SubList extends ImmutableList<E> {
        public final transient int g;
        public final transient int h;

        public SubList(int i, int i2) {
            this.g = i;
            this.h = i2;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final Object[] g() {
            return ImmutableList.this.g();
        }

        @Override // java.util.List
        public final Object get(int i) {
            Preconditions.g(i, this.h);
            return ImmutableList.this.get(i + this.g);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int i() {
            return ImmutableList.this.k() + this.g + this.h;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int k() {
            return ImmutableList.this.k() + this.g;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.h;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* renamed from: y */
        public final ImmutableList subList(int i, int i2) {
            Preconditions.j(i, i2, this.h);
            int i3 = this.g;
            return ImmutableList.this.subList(i + i3, i2 + i3);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    public static ImmutableList q(int i, Object[] objArr) {
        if (i == 0) {
            return RegularImmutableList.i;
        }
        return new RegularImmutableList(objArr, i);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.ImmutableCollection$ArrayBasedBuilder, com.google.common.collect.ImmutableList$Builder] */
    public static Builder r() {
        return new ImmutableCollection.ArrayBasedBuilder(4);
    }

    public static ImmutableList s(Collection collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList a2 = ((ImmutableCollection) collection).a();
            if (a2.m()) {
                Object[] array = a2.toArray(ImmutableCollection.f12287c);
                return q(array.length, array);
            }
            return a2;
        }
        Object[] array2 = collection.toArray();
        ObjectArrays.a(array2.length, array2);
        return q(array2.length, array2);
    }

    public static ImmutableList t(Object[] objArr) {
        if (objArr.length == 0) {
            return RegularImmutableList.i;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        ObjectArrays.a(objArr2.length, objArr2);
        return q(objArr2.length, objArr2);
    }

    public static ImmutableList v() {
        return RegularImmutableList.i;
    }

    public static ImmutableList w(Object obj) {
        Object[] objArr = {obj};
        ObjectArrays.a(1, objArr);
        return q(1, objArr);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList a() {
        return this;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int c(int i, Object[] objArr) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (list instanceof RandomAccess) {
                        for (int i = 0; i < size; i++) {
                            if (Objects.equals(get(i), list.get(i))) {
                            }
                        }
                    } else {
                        Iterator<E> it = iterator();
                        Iterator<E> it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && Objects.equals(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // java.util.List
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public UnmodifiableListIterator listIterator(int i) {
        Preconditions.i(i, size());
        if (isEmpty()) {
            return f;
        }
        return new Itr(this, i);
    }

    public ImmutableList x() {
        if (size() <= 1) {
            return this;
        }
        return new ReverseImmutableList(this);
    }

    @Override // java.util.List
    /* renamed from: y */
    public ImmutableList subList(int i, int i2) {
        Preconditions.j(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return RegularImmutableList.i;
        }
        return new SubList(i, i3);
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }
}
