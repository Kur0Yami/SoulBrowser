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
public final class ImmutableIntArray implements Serializable {
    public static final ImmutableIntArray h = new ImmutableIntArray(new int[0], 0, 0);

    /* renamed from: c, reason: collision with root package name */
    public final int[] f12511c;
    public final transient int f;
    public final int g;

    /* loaded from: classes3.dex */
    public static final class AsList extends AbstractList<Integer> implements RandomAccess, Serializable, List {

        /* renamed from: c, reason: collision with root package name */
        public final ImmutableIntArray f12512c;

        public AsList(ImmutableIntArray immutableIntArray) {
            this.f12512c = immutableIntArray;
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
            ImmutableIntArray immutableIntArray = this.f12512c;
            if (z) {
                return immutableIntArray.equals(((AsList) obj).f12512c);
            }
            if (!(obj instanceof java.util.List)) {
                return false;
            }
            java.util.List list = (java.util.List) obj;
            if (immutableIntArray.a() != list.size()) {
                return false;
            }
            int i = immutableIntArray.f;
            for (Object obj2 : list) {
                if (obj2 instanceof Integer) {
                    int i2 = i + 1;
                    if (immutableIntArray.f12511c[i] == ((Integer) obj2).intValue()) {
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
            ImmutableIntArray immutableIntArray = this.f12512c;
            Preconditions.g(i, immutableIntArray.a());
            return Integer.valueOf(immutableIntArray.f12511c[immutableIntArray.f + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            return this.f12512c.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                ImmutableIntArray immutableIntArray = this.f12512c;
                int i = immutableIntArray.f;
                for (int i2 = i; i2 < immutableIntArray.g; i2++) {
                    if (immutableIntArray.f12511c[i2] == intValue) {
                        return i2 - i;
                    }
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                ImmutableIntArray immutableIntArray = this.f12512c;
                int i2 = immutableIntArray.g;
                do {
                    i2--;
                    i = immutableIntArray.f;
                    if (i2 >= i) {
                    }
                } while (immutableIntArray.f12511c[i2] != intValue);
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
            return this.f12512c.a();
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
            ImmutableIntArray immutableIntArray;
            ImmutableIntArray immutableIntArray2 = this.f12512c;
            Preconditions.j(i, i2, immutableIntArray2.a());
            if (i == i2) {
                immutableIntArray = ImmutableIntArray.h;
            } else {
                int[] iArr = immutableIntArray2.f12511c;
                int i3 = immutableIntArray2.f;
                immutableIntArray = new ImmutableIntArray(iArr, i + i3, i3 + i2);
            }
            return new AsList(immutableIntArray);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            Object[] array;
            array = toArray((Object[]) intFunction.apply(0));
            return array;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            return this.f12512c.toString();
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
        public final j$.util.Spliterator spliterator() {
            ImmutableIntArray immutableIntArray = this.f12512c;
            return Spliterators.spliterator(immutableIntArray.f12511c, immutableIntArray.f, immutableIntArray.g, 1040);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream stream() {
            return Collection.CC.$default$stream(this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    public ImmutableIntArray(int[] iArr, int i, int i2) {
        this.f12511c = iArr;
        this.f = i;
        this.g = i2;
    }

    public final int a() {
        return this.g - this.f;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ImmutableIntArray) {
                ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
                if (a() == immutableIntArray.a()) {
                    for (int i = 0; i < a(); i++) {
                        Preconditions.g(i, a());
                        int i2 = this.f12511c[this.f + i];
                        Preconditions.g(i, immutableIntArray.a());
                        if (i2 == immutableIntArray.f12511c[immutableIntArray.f + i]) {
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
            i = (i * 31) + this.f12511c[i2];
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
        int[] iArr = this.f12511c;
        sb.append(iArr[i2]);
        while (true) {
            i2++;
            if (i2 < i) {
                sb.append(", ");
                sb.append(iArr[i2]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }
}
