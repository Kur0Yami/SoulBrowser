package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.DoNotMock;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;

@DoNotMock
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable, Collection {

    /* renamed from: c, reason: collision with root package name */
    public static final Object[] f12287c = new Object[0];

    /* loaded from: classes3.dex */
    public static abstract class ArrayBasedBuilder<E> extends Builder<E> {

        /* renamed from: a, reason: collision with root package name */
        public Object[] f12288a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f12289c;

        public ArrayBasedBuilder(int i) {
            CollectPreconditions.b(i, "initialCapacity");
            this.f12288a = new Object[i];
            this.b = 0;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public ArrayBasedBuilder a(Object obj) {
            obj.getClass();
            d(1);
            Object[] objArr = this.f12288a;
            int i = this.b;
            this.b = i + 1;
            objArr[i] = obj;
            return this;
        }

        public final void d(int i) {
            Object[] objArr = this.f12288a;
            int b = Builder.b(objArr.length, this.b + i);
            if (b <= objArr.length && !this.f12289c) {
                return;
            }
            this.f12288a = Arrays.copyOf(this.f12288a, b);
            this.f12289c = false;
        }
    }

    @DoNotMock
    /* loaded from: classes3.dex */
    public static abstract class Builder<E> {
        public static int b(int i, int i2) {
            if (i2 >= 0) {
                if (i2 <= i) {
                    return i;
                }
                int i3 = i + (i >> 1) + 1;
                if (i3 < i2) {
                    i3 = Integer.highestOneBit(i2 - 1) << 1;
                }
                if (i3 < 0) {
                    return Integer.MAX_VALUE;
                }
                return i3;
            }
            throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
        }

        public abstract Builder a(Object obj);
    }

    public ImmutableList a() {
        if (isEmpty()) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
            return RegularImmutableList.i;
        }
        Object[] array = toArray(f12287c);
        UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f;
        return ImmutableList.q(array.length, array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    public int c(int i, Object[] objArr) {
        UnmodifiableIterator it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ void forEach(Consumer consumer) {
        Iterable.CC.$default$forEach(this, consumer);
    }

    public Object[] g() {
        return null;
    }

    public int i() {
        throw new UnsupportedOperationException();
    }

    public int k() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean m();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public abstract UnmodifiableIterator iterator();

    @Override // java.util.Collection
    public /* synthetic */ Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ boolean removeIf(Predicate predicate) {
        return Collection.CC.$default$removeIf(this, predicate);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return Collection.CC.$default$toArray(this, intFunction);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream parallelStream() {
        return Collection.CC.$default$parallelStream(this);
    }

    @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final j$.util.Spliterator spliterator() {
        return Spliterators.spliterator(this, 1296);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream stream() {
        return Collection.CC.$default$stream(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f12287c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int size = size();
        if (objArr.length < size) {
            Object[] g = g();
            if (g != null) {
                return Arrays.copyOfRange(g, k(), i(), objArr.getClass());
            }
            if (objArr.length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, size);
        } else if (objArr.length > size) {
            objArr[size] = null;
        }
        c(0, objArr);
        return objArr;
    }
}
