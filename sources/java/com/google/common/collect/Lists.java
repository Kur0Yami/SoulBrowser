package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Lists {

    /* renamed from: com.google.common.collect.Lists$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends RandomAccessListWrapper<Object> {
        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Lists$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AbstractListWrapper<Object> {
        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class AbstractListWrapper<E> extends AbstractList<E> {
        @Override // java.util.AbstractList, java.util.List
        public final void add(int i, Object obj) {
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final boolean addAll(int i, Collection collection) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int i) {
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class CharSequenceAsList extends AbstractList<Character> {
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class OnePlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class Partition<T> extends AbstractList<List<T>> {
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class RandomAccessListWrapper<E> extends AbstractListWrapper<E> implements RandomAccess {
    }

    /* loaded from: classes3.dex */
    public static final class RandomAccessPartition<T> extends Partition<T> implements RandomAccess {
    }

    /* loaded from: classes3.dex */
    public static final class RandomAccessReverseList<T> extends ReverseList<T> implements RandomAccess {
    }

    /* loaded from: classes3.dex */
    public static class ReverseList<T> extends AbstractList<T> {
        public static final /* synthetic */ int f = 0;

        /* renamed from: c, reason: collision with root package name */
        public final List f12323c;

        public ReverseList(List list) {
            list.getClass();
            this.f12323c = list;
        }

        public final int a(int i) {
            int size = this.f12323c.size();
            Preconditions.i(i, size);
            return size - i;
        }

        @Override // java.util.AbstractList, java.util.List
        public final void add(int i, Object obj) {
            this.f12323c.add(a(i), obj);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            this.f12323c.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            List list = this.f12323c;
            int size = list.size();
            Preconditions.g(i, size);
            return list.get((size - 1) - i);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            final ListIterator listIterator = this.f12323c.listIterator(a(i));
            return new ListIterator<Object>(this) { // from class: com.google.common.collect.Lists.ReverseList.1

                /* renamed from: c, reason: collision with root package name */
                public boolean f12324c;
                public final /* synthetic */ ReverseList g;

                {
                    this.g = this;
                }

                @Override // java.util.ListIterator
                public final void add(Object obj) {
                    ListIterator listIterator2 = listIterator;
                    listIterator2.add(obj);
                    listIterator2.previous();
                    this.f12324c = false;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public final boolean hasNext() {
                    return listIterator.hasPrevious();
                }

                @Override // java.util.ListIterator
                public final boolean hasPrevious() {
                    return listIterator.hasNext();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public final Object next() {
                    ListIterator listIterator2 = listIterator;
                    if (listIterator2.hasPrevious()) {
                        this.f12324c = true;
                        return listIterator2.previous();
                    }
                    throw new NoSuchElementException();
                }

                @Override // java.util.ListIterator
                public final int nextIndex() {
                    int nextIndex = listIterator.nextIndex();
                    int i2 = ReverseList.f;
                    return this.g.a(nextIndex);
                }

                @Override // java.util.ListIterator
                public final Object previous() {
                    ListIterator listIterator2 = listIterator;
                    if (listIterator2.hasNext()) {
                        this.f12324c = true;
                        return listIterator2.next();
                    }
                    throw new NoSuchElementException();
                }

                @Override // java.util.ListIterator
                public final int previousIndex() {
                    return nextIndex() - 1;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public final void remove() {
                    CollectPreconditions.d(this.f12324c);
                    listIterator.remove();
                    this.f12324c = false;
                }

                @Override // java.util.ListIterator
                public final void set(Object obj) {
                    Preconditions.l(this.f12324c);
                    listIterator.set(obj);
                }
            };
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int i) {
            List list = this.f12323c;
            int size = list.size();
            Preconditions.g(i, size);
            return list.remove((size - 1) - i);
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            subList(i, i2).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            List list = this.f12323c;
            int size = list.size();
            Preconditions.g(i, size);
            return list.set((size - 1) - i, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f12323c.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            List list = this.f12323c;
            Preconditions.j(i, i2, list.size());
            List subList = list.subList(a(i2), a(i));
            if (subList instanceof ImmutableList) {
                return ((ImmutableList) subList).x();
            }
            if (subList instanceof ReverseList) {
                return ((ReverseList) subList).f12323c;
            }
            if (subList instanceof RandomAccess) {
                return new ReverseList(subList);
            }
            return new ReverseList(subList);
        }
    }

    /* loaded from: classes3.dex */
    public static final class StringAsImmutableList extends ImmutableList<Character> {
        public final String g;

        public StringAsImmutableList(String str) {
            this.g = str;
        }

        @Override // java.util.List
        public final Object get(int i) {
            String str = this.g;
            Preconditions.g(i, str.length());
            return Character.valueOf(str.charAt(i));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Character) {
                return this.g.indexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Character) {
                return this.g.lastIndexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.g.length();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* renamed from: y */
        public final ImmutableList subList(int i, int i2) {
            String str = this.g;
            Preconditions.j(i, i2, str.length());
            String substring = str.substring(i, i2);
            substring.getClass();
            return new StringAsImmutableList(substring);
        }
    }

    /* loaded from: classes3.dex */
    public static final class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final List f12325c;
        public final Function f;

        public TransformingRandomAccessList(List list, Function function) {
            list.getClass();
            this.f12325c = list;
            this.f = function;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            return this.f.apply(this.f12325c.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.f12325c.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            return new TransformedListIterator<Object, Object>(this.f12325c.listIterator(i)) { // from class: com.google.common.collect.Lists.TransformingRandomAccessList.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    return TransformingRandomAccessList.this.f.apply(obj);
                }
            };
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int i) {
            return this.f.apply(this.f12325c.remove(i));
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            this.f12325c.subList(i, i2).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f12325c.size();
        }
    }

    /* loaded from: classes3.dex */
    public static final class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final List f12326c;
        public final Function f;

        public TransformingSequentialList(List list, Function function) {
            list.getClass();
            this.f12326c = list;
            this.f = function;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.f12326c.isEmpty();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            return new TransformedListIterator<Object, Object>(this.f12326c.listIterator(i)) { // from class: com.google.common.collect.Lists.TransformingSequentialList.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    return TransformingSequentialList.this.f.apply(obj);
                }
            };
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            this.f12326c.subList(i, i2).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f12326c.size();
        }
    }

    /* loaded from: classes3.dex */
    public static final class TwoPlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            if (i == 0 || i == 1) {
                return null;
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    public static ArrayList a(Iterator it) {
        ArrayList arrayList = new ArrayList();
        Iterators.a(arrayList, it);
        return arrayList;
    }

    public static ArrayList b() {
        CollectPreconditions.b(3, "initialArraySize");
        return new ArrayList(3);
    }
}
