package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Comparator;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;

@Immutable
@GwtCompatible
/* loaded from: classes3.dex */
public final class ImmutableLongArray implements Serializable {
    public static final ImmutableLongArray h = new ImmutableLongArray(new long[0], 0, 0);

    /* renamed from: c, reason: collision with root package name */
    public final long[] f12513c;
    public final transient int f;
    public final int g;

    /* loaded from: classes3.dex */
    public static final class AsList extends AbstractList<Long> implements RandomAccess, Serializable, List {

        /* renamed from: c, reason: collision with root package name */
        public final ImmutableLongArray f12514c;

        public AsList(ImmutableLongArray immutableLongArray) {
            this.f12514c = immutableLongArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if (indexOf(obj) >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            boolean z = obj instanceof AsList;
            ImmutableLongArray immutableLongArray = this.f12514c;
            if (z) {
                return immutableLongArray.equals(((AsList) obj).f12514c);
            }
            if (!(obj instanceof java.util.List)) {
                return false;
            }
            java.util.List list = (java.util.List) obj;
            if (immutableLongArray.a() != list.size()) {
                return false;
            }
            int i = immutableLongArray.f;
            for (Object obj2 : list) {
                if (obj2 instanceof Long) {
                    int i2 = i + 1;
                    if (immutableLongArray.f12513c[i] == ((Long) obj2).longValue()) {
                        i = i2;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public /* synthetic */ void forEach(Consumer consumer) {
            Iterable.CC.$default$forEach(this, consumer);
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            ImmutableLongArray immutableLongArray = this.f12514c;
            Preconditions.g(i, immutableLongArray.a());
            return Long.valueOf(immutableLongArray.f12513c[immutableLongArray.f + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            return this.f12514c.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Long) {
                long longValue = ((Long) obj).longValue();
                ImmutableLongArray immutableLongArray = this.f12514c;
                int i = immutableLongArray.f;
                for (int i2 = i; i2 < immutableLongArray.g; i2++) {
                    if (immutableLongArray.f12513c[i2] == longValue) {
                        return i2 - i;
                    }
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Long) {
                long longValue = ((Long) obj).longValue();
                ImmutableLongArray immutableLongArray = this.f12514c;
                int i2 = immutableLongArray.g;
                do {
                    i2--;
                    i = immutableLongArray.f;
                    if (i2 >= i) {
                    }
                } while (immutableLongArray.f12513c[i2] != longValue);
                return i2 - i;
            }
            return -1;
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return Stream.Wrapper.convert(parallelStream());
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.List, j$.util.List
        public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
            List.CC.$default$replaceAll(this, unaryOperator);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f12514c.a();
        }

        @Override // java.util.List, j$.util.List
        public /* synthetic */ void sort(Comparator comparator) {
            List.CC.$default$sort(this, comparator);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public /* synthetic */ Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            return Stream.Wrapper.convert(stream());
        }

        @Override // java.util.AbstractList, java.util.List
        public final java.util.List subList(int i, int i2) {
            ImmutableLongArray immutableLongArray;
            ImmutableLongArray immutableLongArray2 = this.f12514c;
            Preconditions.j(i, i2, immutableLongArray2.a());
            if (i == i2) {
                immutableLongArray = ImmutableLongArray.h;
            } else {
                long[] jArr = immutableLongArray2.f12513c;
                int i3 = immutableLongArray2.f;
                immutableLongArray = new ImmutableLongArray(jArr, i + i3, i3 + i2);
            }
            return new AsList(immutableLongArray);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            Object[] array;
            array = toArray((Object[]) intFunction.apply(0));
            return array;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            return this.f12514c.toString();
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
        public final j$.util.Spliterator spliterator() {
            ImmutableLongArray immutableLongArray = this.f12514c;
            return Spliterators.spliterator(immutableLongArray.f12513c, immutableLongArray.f, immutableLongArray.g, 1040);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream stream() {
            return Collection.CC.$default$stream(this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    public ImmutableLongArray(long[] jArr, int i, int i2) {
        this.f12513c = jArr;
        this.f = i;
        this.g = i2;
    }

    public final int a() {
        return this.g - this.f;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ImmutableLongArray) {
                ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
                if (a() == immutableLongArray.a()) {
                    for (int i = 0; i < a(); i++) {
                        Preconditions.g(i, a());
                        long j = this.f12513c[this.f + i];
                        Preconditions.g(i, immutableLongArray.a());
                        if (j == immutableLongArray.f12513c[immutableLongArray.f + i]) {
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = this.f; i2 < this.g; i2++) {
            long j = this.f12513c[i2];
            i = (i * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    public final String toString() {
        int i = this.g;
        int i2 = this.f;
        if (i == i2) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(a() * 5);
        sb.append('[');
        long[] jArr = this.f12513c;
        sb.append(jArr[i2]);
        while (true) {
            i2++;
            if (i2 < i) {
                sb.append(", ");
                sb.append(jArr[i2]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }
}
